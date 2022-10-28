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
    public String loginForm(){return "memberLogin";
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


//    @GetMapping ("/memberDetail")
//    public String findMember(Model model){
//        MemberDTO findResult = memberService.findMember();
//        model.addAttribute("member",findResult);
//        return "findMember";
//
//    }



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
    @GetMapping("/delete")
    public String delete(@RequestParam("memberId")Long memberId){
        memberService.delete(memberId);
//        // 1. 삭제후 목록을 DB에서 가져오고 memberList.jsp로 간다
//        List<MemberDTO> memberDTOList = memberService.findAll();
//        model.addAttribute("memberList",memberDTOList);
//        return "memberList";
//       //2 . redirect 방식을 이용하기 /members 주소요청  삭제후 목록으로 보여주는 것

        return "redirect:/members";

    }





    //

///*  선언
//리턴타입 : memberUpdate
// */
//
//- 매개변수: memberEmail
//- 매서드이름:update
//- /
//
//호출


      @GetMapping ("/update")
         public String updateForm(HttpSession session,Model model){
        //sessiom 값을 가져오기
        String memberEmail = (String) session.getAttribute("loginEmail");  //getAttribute(추상매서드) 리턴은 오브젝트 오브젝트가 큰 객체이므로 스트링으로 강제형변환을 해준다 .
        MemberDTO memberDTO = memberService.findByEmail(memberEmail); // 이메일을 db에서 가져오자 이메일을 서비스에 넘겨주고
        //memberEmail로 DB 에서 해당 회원의 전체정보조회

        model.addAttribute("member",memberDTO); //한명에 대한 것만 수정  dto로
        return "memberUpdate";

    }


//     @PostMapping("/update")
//    public String update(@RequestParam("memberEmail") String memberEmail ,HttpSession session){
//
//
//
//
//
//            return "redirect:/members";

@PostMapping("/update")
    public String update(@ModelAttribute MemberDTO memberDTO){
       boolean result = memberService.update(memberDTO);
       if (result){
           // 로그인 회원의 memberDetail.jsp 성공하면
           return "redirect:/member?memberId="+memberDTO.getMemberId(); // 아이디 값은 바뀌니까 dto에 가져와 붙여준다
       }else {
          return "index";
       }


}
    @GetMapping("/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "index";
    }

    @GetMapping("/board")
    public String board(){
        return "boardList";
    }


}










