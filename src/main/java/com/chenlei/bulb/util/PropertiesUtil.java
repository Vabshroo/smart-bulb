package com.chenlei.bulb.util;

import java.io.*;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;

/**
 * Created by chenlei on 2017/3/19.
 */
public class PropertiesUtil {

    private static Properties PROP = new Properties();

    private static String PATH = "/config.properties";

    static {
        readProp();
    }

    public static Properties getPreferenceProp(){
        if(PROP.size() > 0){
            return PROP;
        }else{
            readProp();
            return  PROP;
        }
    }

    public static void readProp(){
        InputStream input = null;
        try {
            input = Class.forName(PropertiesUtil.class.getName()).getResourceAsStream(PATH);
            PROP.load(input);
            input.close();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public boolean saveProp(Map<String,String> param){
        if(param != null && !param.isEmpty()){
            readProp();
            OutputStream fos = null;
            try {
                fos = new FileOutputStream(PATH);
                String update = "";
                for(Map.Entry<String,String> entry : param.entrySet()){
                    PROP.setProperty(entry.getKey(),entry.getValue());
                    update += "update " + entry.getKey() + " : " + entry.getValue() + "\n";
                }
                PROP.store(fos,update);
                return true;
            } catch (FileNotFoundException e) {
                e.printStackTrace();
                return false;
            } catch (IOException e) {
                e.printStackTrace();
                return false;
            }
        }else{
            return false;
        }
    }

    public static void main(String args[]){
        Properties properties = getPreferenceProp();
    }



}
