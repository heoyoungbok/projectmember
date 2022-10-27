<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 2022-10-26
  Time: 오전 10:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>memberList.jsp</title>
</head>
<body>
     <tr>
         <th>이메일</th>
         <br>
         <th>비밀번호</th>
         <br>
         <th>이름</th>
         <br>
         <th>나이</th>
         <br>
         <th>전화번호</th>
         <br>
     </tr>

 <c:forEach items="${memberList}" var="member">
     <tr>
         <td>${member.memberId}</td>
         <td>
             <a href="/member?memberId=${member.memberId}">${member.memberEmail}></a>
         </td>
         <td>${member.memberPassword}</td>
         <td>${member.memberName}</td>
         <td>${member.memberAge}</td>
         <td>${member.memberMobile}</td>
     </tr>
 </c:forEach>


</body>
</html>
