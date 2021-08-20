package com.kckc.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

public class BaseController {

    //使用@InitBinder解决SpringMVC日期类型无法绑定的问题,优化更新
    @InitBinder
    public void initBinder(WebDataBinder dataBinder){
        System.out.println("initBinder=======================");
        dataBinder.registerCustomEditor(Date.class,
                new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));
    }
}