package com.icia.member.repository;

import com.icia.member.dto.MemberDTO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class MemberRepository {
    /* 리턴타입 :  sql
     * 매개변수: dto
     * 매서드이름: save
     * */
 @Autowired
  private SqlSessionTemplate sql;

    public int save(MemberDTO memberDTO) {
        return sql.insert("Member.save",memberDTO);
    }

    public MemberDTO login(String memberEmail,String memberPassword) {
        MemberDTO member = new MemberDTO();
        member.setMemberEmail(memberEmail);
        member.setMemberPassword(memberPassword);
        return sql.selectOne("Member.login",member);

    }


    public List<MemberDTO> findAll() {
        return sql.selectList("Member.findAll");
    }

    public MemberDTO findById(Long memberId) {
        return sql.selectOne("Member.findById",memberId);
    }

//    public MemberDTO findMember() {
//    return sql.selectOne("Member.findMember");
//    }

    public MemberDTO login(MemberDTO memberDTO) {
        return sql.selectOne("Member.login",memberDTO);
    }


    public void delete(Long memberId){
         sql.delete("Member.delete",memberId);
    }

//    public void update(String memberEmail) {
//    }

    public MemberDTO findByEmail(String memberEmail) {
      return sql.selectOne("Member.findByEmail",memberEmail);
    }

    public int update(MemberDTO memberDTO) {
     return sql.update("Member.update",memberDTO);
    }

    public String emailDuplicateCheck(String memberEmail) {
        return  sql.selectOne("Member.DuplicateCheck",memberEmail);
    }

//    public int emailCk(String memberEmail) {
//        return sql.selectOne("Member.emailCk",memberEmail);
//    }




//    public void update(String memberEmail) {
//        sql.update("Member.update",memberEmail);
//    }
}


