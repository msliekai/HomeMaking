package com.hm.web;


import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Component
@Controller
@RequestMapping("/admin")
public class CompanyHandler {

    @RequestMapping(value = "/Comcredential.actin")
    public ModelAndView Comcredential(HttpRequest request)
    {

        return null;
    }

}
