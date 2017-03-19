package com.chenlei.bulb.util;

import ch.ethz.ssh2.ChannelCondition;
import ch.ethz.ssh2.Connection;
import ch.ethz.ssh2.Session;
import ch.ethz.ssh2.StreamGobbler;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;

/**
 * Created by chenlei on 2017/3/19.
 */
public class ShellExecutor {

    private final static Logger LOGGER = LoggerFactory.getLogger(ShellExecutor.class);

    private final static String ip = "192.168.199.240";
    private final static String user = "pi";
    private final static String pass = "raspberry";

    private final static Connection connection;
    static {
        connection = new Connection(ip);
        try {
            connection.connect();
            LOGGER.info("connection success!");
            login();
        } catch (IOException e) {
            LOGGER.error("connect failed!",e);
        }
    }
    private final static String charset = "UTF-8";

    private static final int TIME_OUT = 1000 * 5 * 60;

    private static boolean login() throws IOException {
        return connection.authenticateWithPassword(user,pass);
    }

    private static String exec(String cmd) throws IOException {
        InputStream stdOut = null;
        InputStream stdErr = null;
        String outStr = "";
        String outErr = "";
        int ret = -1;
        Session session = null;

        try {
            session = connection.openSession();
            session.execCommand(cmd);
            stdOut = new StreamGobbler(session.getStdout());
            outStr = processStream(stdOut, charset);
            LOGGER.info("outStr=" + outStr);
            stdErr = new StreamGobbler(session.getStderr());
            outErr = processStream(stdErr, charset);
            LOGGER.info("outErr=" + outErr);
            session.waitForCondition(ChannelCondition.EXIT_STATUS, TIME_OUT);
            ret = session.getExitStatus();
        } catch (IOException e) {
            LOGGER.error("login failed!",e);
        }finally {
            if(session != null){
                session.close();
            }
            if (stdOut != null)
                stdOut.close();
            if (stdErr != null)
                stdErr.close();
        }

        return outStr;
    }

    public static String execTest(String text){
        try {
            return exec("python /bulb/snownlptest.py " + text);
        } catch (IOException e) {
            LOGGER.error("execute test error : {}",text,e);
            return null;
        }
    }

    private static String processStream(InputStream in, String charset) throws IOException {
        byte[] buf = new byte[1024];
        StringBuilder sb = new StringBuilder();
        while (in.read(buf) != -1) {
            sb.append(new String(buf, charset));
        }
        return sb.toString();
    }

    public static void main(String[] args) throws IOException {

        System.out.println(exec("python /bulb/snownlptest.py 今天吃了好吃的披萨，很开心，感觉很幸福！"));

    }

}
