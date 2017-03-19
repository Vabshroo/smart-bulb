package com.chenlei.bulb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by chenlei on 2017/3/19.
 */

@Controller
@RequestMapping("/smart-bulb")
public class SwitchController extends AbstractController {

    @RequestMapping("/switch")
    public String sw(){
        return SWITCH_VIEW;
    }

}
