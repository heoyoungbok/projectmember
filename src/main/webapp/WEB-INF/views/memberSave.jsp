<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오전 10:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberSave.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <script src="/resources/js/jquery.js"></script>

</head>
<style>
    #save-form {
          width: 1000px;
          }
</style>
<body>
<div class="container" id="save-form">
<form class="/save" method="post" name="saveForm">

    <input type="text" name="memberEmail" id="memberEmail" placeholder="이메일" onblur="emailDuplicateCheck()" class="form-control"><br>
     <span id="email-dup-check"></span>
    <span id="email-input-check"></span>
    <input type="text" name="memberPassword" placeholder="비밀번호" class="form-control"><br>
    <span id="pass-input-check"></span>
    <input type="text" name="memberName" placeholder="이름" class="form-control"><br>
    <input type="text" name="memberAge" placeholder="나이" class="form-control"><br>
    <input type="text" name="memberMobile" placeholder="전화번호" class="form-control"><br>

    <input type="button" value="회원가입" onclick="save()" class="btn btn-primary">
<%--    <button onclick="btn1Fn()">버튼가입</button>   <%--버튼을 만들면 폼테그가 전송됨  인풋으로 만들면 됨 --%>


</form>
</div>

</body>
<script>
    // // const emailCk = () => {
    // $('.memberEmail').focusout(function () {
    //     const memberEmail = $('.memberEmail').val();
    //     $.ajax({
    //         type: "post",
    //         url: "emailCk",
    //         data: {memberEmail: memberEmail},
    //         ataType: "text",
    //         success: function (result) {
    //             if (result == 0) {
    //                 // const emailYes = document.getElementById("email_yes");
    //                 $("#memberEmail").innerHTML = "이미 사용 중인 이메일입니다.";
    //                 $("#memberEmail").style.color = "red";
    //
    //             } else {
    //                 // const emailX = document.getElementById("email_x");
    //
    //
    //                 $("#memberEmail").innerHTML = "사용할 수 있는 이메일입니다";
    //                 $("#memberEmail").style.color = "green";
    //
    //             }
    //             document.saveForm.submit();
    //         },
    //         error: function () {
    //             alert("비정상적인 접근입니다");
    //         }
    //
    //     })
    // })


    const emailDuplicateCheck  = () => {
        const  email = document.getElementById("memberEmail").value;

       const  checkResult = document.getElementById("email-dup-check");
        console.log("입력한 이메일",email);
        $.ajax({
           type:"post",
           url:"/duplicate-check",
            data:{inputEmail: email},
            dataType: "text",
            success: function (result){
               console.log("checkResult",result);
               if (result == "ok"){
                   checkResult.innerHTML = "사용할 수 있는 이메일입니다.";
                   checkResult.style.color = "green";
               }else {
                   checkResult.innerHTML = "사용중인 이메일입니다.";
                   checkResult.style.color = "red";
               }
            },
            error:function (){
               console.log("실패");
            }
        });
    }








    const save = () => {
        console.log("save 함수호출");
        if (document.saveForm.memberEmail.value == "") {
            //이메일 입력하지 않았을때 span빨간색으로
            const emailCheck = document.getElementById("email-input-check");
            emailCheck.innerHTML = "이메일을 입력해주세요";
            emailCheck.style.color = "red";
            return false;

            // alert("이메일을 입력해주세요");

        } else if (document.saveForm.memberPassword.value == "") {
            const passCheck = document.getElementById("pass-input-check");
            passCheck.innerHTML = "비밀번호를 입력해주세요";
            passCheck.style.color = "red";
            return false;
        } else if (document.saveForm.memberName.value == "") {
            alert("이름을 입력해주세요");
            return false;
        } else if (document.saveForm.memberAge.value == "") {
            alert("나이를 입력해주세요");
            return false;
        } else if (document.saveForm.memberMobile.value == "") {
            alert("전화번호를 입력해주세요");
        }
        document.saveForm.submit();

    }

    // const btn1Fn = () => {
    //     console.log("btn1Fn 함수호출");
    // }
</script>
</html>

