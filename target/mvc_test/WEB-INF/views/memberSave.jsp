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
</head>
<style>
    #save-form {
          width: 1000px;
          }
</style>
<body>
<div class="container" id="save-form">
<form class="/save" method="post" name="saveForm">

    <input type="text" name="memberEmail" placeholder="이메일" class="form-control"><br>
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

