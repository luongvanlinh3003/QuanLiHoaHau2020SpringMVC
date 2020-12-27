
package com.hoahau.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class UserController{

    @RequestMapping(value = "login", method = RequestMethod.GET)
    public ModelAndView login(@RequestParam(value = "error", required = false) String error, 
            @RequestParam(value = "logout", required = false) String logout) {
 
        ModelAndView m = new ModelAndView();
        if (error != null) {
            m.addObject("error", "Username hoặc Password không đúng");
        }
 
        if (logout != null) {
            m.addObject("msg", "Đăng xuất thành công");
        }
 
        m.setViewName("login");
        return m;
    }
}