package com.icia.member.controller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@Controller
public class MemberController {
    @Autowired
    private MemberService memberService;
    @GetMapping ("/save")
    public String save(){
        return "save";
    }
    @PostMapping ("/memberSave")
    public String memberSave(@ModelAttribute MemberDTO memberDTO){
        boolean result = memberService.save(memberDTO);
        if(result) {
            return "main";
        }else {
            return "index";
        }
    }

    @GetMapping("/list")
    public String list(Model model){
        List<MemberDTO> memberDTOList = memberService.list();
        model.addAttribute("memberList",memberDTOList);
        return "list";
    }

    @GetMapping("/login")
    public String login(){
        return "login";
    }

    @PostMapping("/login")
    public String login(@RequestParam("memberEmail") String memberEmail,@RequestParam("memberPassword") String memberPassword, Model model) {
        boolean num = memberService.memberLogin(memberEmail,memberPassword);
        if(num) {
            MemberDTO memberDTO1 = memberService.memberLoginInsert(memberEmail,memberPassword);
            model.addAttribute("memberLoginInsert",memberDTO1);
            return "main";
        }else {
            return "index";
        }
    }
    @GetMapping("/logout")
    public String logout(){
        return "index";
    }
}
