package com.icia.member.service;

import com.icia.member.dto.MemberDTO;
import com.icia.member.repository.MemberRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MemberService<MewberDTO> {
    @Autowired
    private MemberRepository memberRepository;
    /* 리턴타입 : if문
     * 매개변수: dto
     * 매서드이름: save
     * */


    public Boolean save(MemberDTO memberDTO) {
        int result = memberRepository.save(memberDTO);
        if (result > 0) {
            return true;
        } else {
            return false;
        }
    }



    /* 리턴타입 :
     * 매개변수: 스트링 2
     * 매서드이름: login
     * */


    public boolean login(String memberEmail, String memberPassword){
             MemberDTO memberDTO = memberRepository.login(memberEmail,memberPassword);
            if(memberDTO != null){
                return true;
            }else {
                return false;
            }

    }

    public List<MemberDTO> findAll() {
        return memberRepository.findAll();

    }

    public MemberDTO findById(Long memberId) {
        return memberRepository.findById(memberId);
    }

//    public MemberDTO findMember() {
//        return memberRepository.findMember();
//    }

    //오버로딩 매서드 수와 타입 다를 때  같은 타입에 매서드를 재생성
    public boolean login(MemberDTO memberDTO) {
        MemberDTO member = memberRepository.login(memberDTO);
        if(member != null){
            return true;
        }else {
            return false;
        }

    }


    public void delete(Long memberId) {
        memberRepository.delete(memberId);
    }


    public void update(String memberEmail) {
        memberRepository.update(memberEmail);
    }
}
