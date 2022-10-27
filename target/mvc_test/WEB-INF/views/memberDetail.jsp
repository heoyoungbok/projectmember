<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 5:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberDetail.jsp</title>
 <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<body>
  <div class="container">
    <table class="table table-striped">
    <tr>
     <tr>id</tr>
     <td>${member.memberId}</td>
     </tr>
     <tr>
     <tr>email</tr>
     <td>${member.memberEmail}</td>
     </tr>
     <tr>
     <tr>password</tr>
     <td>${member.memberPassword}</td>
     </tr>

     <tr>
     <tr>name</tr>
     <td>${member.memberName}</td>
     </tr>

     <tr>
     <tr>age</tr>
     <td>${member.memberAge}</td>
     </tr>

     <tr>
     <tr>mobile</tr>
     <td>${member.memberMobile}</td>
     </tr>

<%-- <h2>조회결과</h2>--%>
<%-- <h4>memberDTO: ${member}</h4>--%>
<%-- <h5>번호: ${member.memberId}</h5>--%>
<%-- <h5>이메일: ${member.memberEmail}</h5>--%>
<%-- <h5>비밀번호: ${member.memberPassword}</h5>--%>
<%-- <h5>이름: ${member.memberName}</h5>--%>
<%-- <h5>나이: ${member.memberAge}</h5>--%>
<%-- <h5>전화번호: ${member.memberMobile}</h5>--%>
 <a href="/">index.jsp</a>
    </table>
  </div>

</body>
</html>
