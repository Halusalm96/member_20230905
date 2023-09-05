package com.icia.member.repository;

import com.icia.member.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public class MemberRepository {
    @Autowired
    private SqlSessionTemplate sql;
    public int save(MemberDTO memberDTO) {
        return sql.insert("Member.insert", memberDTO);
    }

    public List<MemberDTO> list() {
        return sql.selectList("Member.list");
    }

    public boolean login(String memberEmail, String memberPassword) {
        List<MemberDTO> memberDTOList = new ArrayList<>();
        for (MemberDTO memberDTO : memberDTOList) {
            if (memberDTO.getMemberEmail().equals(memberEmail)){
                if(memberDTO.getMemberPassword().equals(memberPassword)){
                    return true;
                }
            }
        }
        return false;
    }

    public MemberDTO memberLoginInsert(String memberEmail, String memberPassword) {
        List<MemberDTO> memberDTOList = new ArrayList<>();
        for (MemberDTO memberDTO : memberDTOList) {
            if (memberDTO.getMemberEmail().equals(memberEmail)){
                if(memberDTO.getMemberPassword().equals(memberPassword)){
                    return memberDTO;
                }
            }
        }
        return null;
    }
}
