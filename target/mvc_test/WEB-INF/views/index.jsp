<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-25
  Time: 오후 4:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index.jsp</title>
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
</head>
<body>
<h2></h2>

<%-- 세션의 값을 사용  --%>

<%--<a href="/save">회원가입</a><br>--%>
<%--<a href="/login">로그인</a><br>--%>
<%--<a href="/members">회원목록</a><br>--%>
<button class="btn btn-primary" onclick="saveFn()">회원가입</button>
<button class="btn btn-danger" onclick="loginFn()">로그인</button>
<button class="btn btn-dark" onclick="listFn()">목록</button>
 <button class="btn btn-success" onclick="ajaxEx()">연습</button>
<button class="btn bg-light" onclick="boardFn()">게시판</button>
<%--<a href="/member">회원조회</a>--%>
<%--<a href="/update"></a>--%>
</body>
<script>
    const boardFn = () => {
      location.href ="/board";
    }


    const saveFn = () => {
       location.href = "/save";
    }

    const loginFn = () => {
        location.href ="/login";
    }

    const listFn =() => {
        location.href="/members";
    }

    const ajaxEx = () => {
      location.href="/ajax-ex";
    }
</script>
</html>
