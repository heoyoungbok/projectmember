<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-27
  Time: 오전 8:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberUpdate.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <style>
        #update-form{
           width: 800px;
                }
    </style>
</head>
<body>
 <div class="container" id="update-form">
       <form action="/update" method="post" name="updateForm">
      id: <input type="text" name="memberId" value="${member.memberId}" class="form-control" readonly>
    email: <input type="text" name="memberEmail" value="${member.memberEmail}" class="form-control" readonly>
   password:  <input type="text" name="memberPassword"   class="form-control">
           <span id="pass-input-check"></span>
    name: <input type="text" name="memberName" value="${member.memberName}" class="form-control">
    age: <input type="text" name="memberAge" value="${member.memberAge}" class="form-control">

       <input type="button" value="수정" class="btn btn-warning" onclick="update()">
     </form>
 </div>

</body>
<script>
    const update = () => {
      const passwordDB = '${member.memberPassword}'; // DB에서 가져온 비밀번호
    //  사용자가 input태그에 입력한 비밀번호와 DB에서 가져온 비밀번호가 일치하면 수정요청을 보내고
    //  일치하지 않으면 alert으로 비밀번호가 일치하지 않습니다 출력

        if(document.updateForm.memberPassword.value == passwordDB){

            document.updateForm.submit(); // 눌럿으니 수정요청을 함


            } else {
            alert("비밀번호가 일치하지 않습니다");

        }


    }
</script>
</html>
