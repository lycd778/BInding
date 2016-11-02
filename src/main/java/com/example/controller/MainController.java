package com.example.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by Administrator on 2016/9/27.
 */
@Controller
public class MainController {
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public  String getOpenid(ModelMap map, @RequestParam(required = false) String openid ,@RequestParam(required = false)String birthday){
        map.addAttribute("openid", openid);
        map.addAttribute("birthday", birthday);
        return  "Binding";
    }

    @RequestMapping(value = "/test",method = RequestMethod.GET)
    public  String getTest(ModelMap map){
        return  "test";
    }

    @RequestMapping(value = "/index", method = RequestMethod.POST)
    public String getName(ModelMap map, @RequestParam String openid ,@RequestParam String birthday) {
        map.addAttribute("openid", openid);
        map.addAttribute("birthday", birthday);
        return "index";
    }

}
