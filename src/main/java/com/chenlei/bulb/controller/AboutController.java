package com.chenlei.bulb.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by chenlei on 2017/3/19.
 */
@Controller
@RequestMapping("/smart-bulb")
public class AboutController extends AbstractController {

    @RequestMapping("/about")
    public String about(){
        return ABOUT_VIEW;
    }

}
