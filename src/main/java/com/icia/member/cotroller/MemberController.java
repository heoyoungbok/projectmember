package com.icia.member.cotroller;

import com.icia.member.dto.MemberDTO;
import com.icia.member.service.MemberService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class MemberController {

    @Autowired
    private MemberService memberService;

    @GetMapping("/save")
    public String saveForm(){
        return "memberSave";
    }


     // 리턴타입 memberLogin   ,  매개변수  DTO  ,매서드이름 save
//<input type="text" name="memberEmail" placeholder="이메일">
//    <input type="text" name="memberPassword" placeholder="비밀번호">
//    <input type="text" name="memberName" placeholder="이름">
//    <input type="text" name="memberAge" placeholder="나이">
//    <input type="text" name="memberMobile" placeholder="전화번호">
    @PostMapping("/save")
    public String save(@ModelAttribute MemberDTO memberDTO ,Model model){
        boolean result = memberService.save(memberDTO);
        model.addAttribute("result",result);
                return "memberLogin";
    }

    @GetMapping("/login")
    public String loginForm(){
        return "memberLogin";
    }
//    @PostMapping("/login")
//   public String login(@RequestParam("memberEmail")String memberEmail,
//                       @RequestParam("memberPassword")String memberPassword,Model model){
//
//        boolean loginResult = memberService.login(memberEmail, memberPassword);
//        if(loginResult){
//            return "memberMain";
//        }else {
//          return  "memberLogin";
//        }
//        model.addAttribute("memberEmail",memberDTO);
//        model.addAttribute("memberPassword",memberDTO);

//    }
@PostMapping("/login") // 주소가 같아서 쓸수가 없음
public String login(@ModelAttribute MemberDTO memberDTO ,HttpSession session,Model model){
    boolean loginResult = memberService.login(memberDTO);
       if(loginResult){
           //세션에 로그인한 사용자의 이메일을 저장
           session.setAttribute("loginEmail",memberDTO.getMemberEmail()); // 담을 객체 / 가져와서 정보를 주는 객체
           model.addAttribute("modelEmail",memberDTO.getMemberEmail());
           return "memberMain";
       }else {
         return  "memberLogin";
       }
}

    /* 리턴타입 :memberList.jsp
     * 매개변수: 모덜 2
     * 매서드이름: 파인드 올
     * */

    @GetMapping("/members")
    public String findAll(Model model){
       List<MemberDTO> memberList = memberService.findAll();
       model.addAttribute("memberList",memberList);
        return "memberList";
    }


    @GetMapping ("/memberDetail")
    public String findMember(Model model){
        MemberDTO findResult = memberService.findMember();
        model.addAttribute("member",findResult);
        return "findMember";

    }



    @GetMapping("/member")
    public String findById(@RequestParam("memberId")Long memberId,Model model){
        MemberDTO memberDTO = memberService.findById(memberId);
        model.addAttribute("member",memberDTO);
        return "memberDetail";
    }


//@GetMapping("/delete")
//    public String delete(@RequestParam("memberId")Long memberId,Model model){
//
//}
//


    }






