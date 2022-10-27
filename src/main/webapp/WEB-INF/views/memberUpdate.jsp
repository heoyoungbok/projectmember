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
</head>
<body>
   <div class="container" id="update-form">
       <form action="/update" method="post">회원수정</form>
       <input type="text" name="memberEmail" placeholder="이메일" class="form-control">
       <input type="submit" value="수정">


   </div>
</body>
</html>
