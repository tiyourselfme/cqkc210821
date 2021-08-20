package com.kckc.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller

public class dataMgtController {
    @RequestMapping(value = "/datam.html",method = RequestMethod.GET)
    public String DataM(){
        return "dataManagement";
    }
}
