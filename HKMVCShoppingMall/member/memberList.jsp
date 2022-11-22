<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
회원리스트<br/>
<table border = 1>
<tr><td>회원번호</td><td>회원명</td><td>회원이메일</td></tr>
<c:forEach items = "${list }" var = "dto">
<tr><td><a href = "memberDetail.mem?num=${dto.memNum }">${dto.memNum }</a></td><td>${dto.memName }</td><td>${dto.memEmail }</td></tr>
</c:forEach>
</table>
<a href = "memberWrite.mem">회원등록</a>
</body>
</html>