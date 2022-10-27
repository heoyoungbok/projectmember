<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오후 1:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>memberMain.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h2>${sessionScope.loginEmail}님 환영합니다.</h2>

    <%-- 세션의 값을 사용  --%>
    <h2>model 값: ${modelEmail}</h2>
    <a href="/">index.jsp</a>
<a href="/member">회원목록조회</a>
<a href="/members">회원조회</a>
<a href="/delete">회원탈퇴</a>
<a href="/update">회원수정</a>
</div>
</body>
</html>
