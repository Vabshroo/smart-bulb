package com.chenlei.bulb.service.impl;

import com.chenlei.bulb.service.SettingsService;
import com.chenlei.bulb.util.PropertiesUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.Map;
import java.util.Properties;

import static com.chenlei.bulb.util.PropertiesUtil.getPreferenceProp;

/**
 * Created by chenlei on 2017/3/19.
 */
@Service("settingsService")
public class SettingsServiceImpl implements SettingsService {

    private final static Logger LOGGER = LoggerFactory.getLogger(SettingsServiceImpl.class);

    public Properties getPreference() {
        return getPreferenceProp();
    }
}
