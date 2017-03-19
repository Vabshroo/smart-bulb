package com.chenlei.bulb.controller;

import com.chenlei.bulb.service.SettingsService;
import com.chenlei.bulb.service.impl.SettingsServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

/**
 * Created by chenlei on 2017/3/19.
 */
@Controller
@RequestMapping("/smart-bulb")
public class SettingsController extends AbstractController {

    private final static Logger LOGGER = LoggerFactory.getLogger(SettingsController.class);

    @Autowired
    SettingsService settingsService;

    @RequestMapping("/settings")
    public String settings(){
        return SETTINGS_VIEW;
    }

    @RequestMapping("/preference")
    public @ResponseBody Map<String,String> preference(){
        Map<String,String> preferences = new HashMap<String, String>();

        Properties properties = settingsService.getPreference();
        if(properties.size() > 0){
            Iterator it = properties.entrySet().iterator();
            while(it.hasNext()){
                Map.Entry entry=(Map.Entry)it.next();
                Object key = entry.getKey();
                Object value = entry.getValue();
                preferences.put(key.toString(),value.toString());
            }
        }

        return preferences;
    }

}
