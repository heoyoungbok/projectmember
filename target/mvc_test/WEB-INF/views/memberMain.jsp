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
    <button class="btn btn-warning" onclick="updateForm()">정보수정</button>
    <button class="btn btn-danger" onclick="logout()">로그아웃</button>
    <button class="btn btn-light" onclick="board()">게시글</button>
    <a href="/">index.jsp</a>
</div>
</body>
 <script>




     const updateForm = () => {
       location.href="/update";
     }
     const logout = () => {
         location.href="/logout";
     }
     const board = () => {
         location.href="board";
     }
 </script>
</html>
