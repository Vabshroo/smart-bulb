package com.chenlei.bulb.controller;

import com.chenlei.bulb.service.SnowNLPService;
import com.mysql.jdbc.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.NumberUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by chenlei on 2017/3/19.
 */
@Controller
@RequestMapping("/smart-bulb")
public class TestController extends AbstractController {

    @Autowired
    SnowNLPService snowNLPService;

    @RequestMapping("/test")
    public String test(){
        return TEST_VIEW;
    }

    @RequestMapping("/probability")
    public @ResponseBody Map<String,String> probability(@RequestParam(value = "text") String text){
        Map<String,String> result = new HashMap<String, String>();

        if(StringUtils.isEmptyOrWhitespaceOnly(text)){
            result.put(CODE,CODE_ERROR);
            result.put(MSG,MSG_NULL);
        }else{
            String exeResult = snowNLPService.getPositiveProbability(text);
            if(!StringUtils.isEmptyOrWhitespaceOnly(exeResult)){
                result.put(CODE,CODE_SUCCESS);
                result.put(MSG,exeResult);
            }else{
                result.put(CODE,CODE_SUCCESS);
                result.put(MSG,MSG_FATAL_ERROR);
            }
        }

        return result;
    }

}
