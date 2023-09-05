package com.icia.member.service;

import com.icia.member.dto.MemberDTO;
import com.icia.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService {
    @Autowired
    private MemberRepository memberRepository;
    public boolean save(MemberDTO memberDTO) {
        int result = memberRepository.save(memberDTO);
        if (result>0){
            return true;
        }else {
            return false;
        }
    }

    public List<MemberDTO> list() {
        List<MemberDTO> memberDTOList = memberRepository.list();
        return memberDTOList;
    }

    public boolean memberLogin(String memberEmail, String memberPassword) {
        return memberRepository.login(memberEmail,memberPassword);
    }

    public MemberDTO memberLoginInsert(String memberEmail, String memberPassword) {
        return memberRepository.memberLoginInsert(memberEmail,memberPassword);
    }
}
