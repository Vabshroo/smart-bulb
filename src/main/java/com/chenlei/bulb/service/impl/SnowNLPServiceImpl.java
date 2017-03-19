package com.chenlei.bulb.service.impl;

import com.chenlei.bulb.service.SnowNLPService;
import com.chenlei.bulb.util.ShellExecutor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

/**
 * Created by chenlei on 2017/3/19.
 */
@Service("snowNLPService")
public class SnowNLPServiceImpl implements SnowNLPService {

    private final static Logger LOGGER = LoggerFactory.getLogger(SnowNLPServiceImpl.class);


    public String getPositiveProbability(String text) {
        return ShellExecutor.execTest(text);
    }
}
