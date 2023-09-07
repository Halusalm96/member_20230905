package com.icia.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AjaxController {
    @GetMapping("/ajax01")
    public String ajax01() {
        return "index";
    }
    @GetMapping("/ajax02")
    public String ajax02() {
        return "index";
    }
}
