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

<c:if test = "${!empty dto }"> <!-- 로그인 되어 있을 때 펼쳐져야하는 부분 -->
<a href="employeeList.emp">직원관리</a><br/>
<a href = "memberList.mem">회원관리</a><br/>
<a href = "logout.login">로그아웃</a><br/>
<a href = "userMyPage.nhn">마이페이지</a><br/>


<a href = "empMypage.naver">마이페이지</a>
</c:if>


<!-- 로그인 안되어 있을 때 펼쳐져야하는 부분 -->
<c:if test = "${empty dto }">
<form action = "login.login" method = "get" >
<table border = 1>
<tr><td colspan = 2>로그인 유지 | 아이디 저장</td></tr>
<tr><td><input type = "text" name = "userId" placeholder = "아이디"></td><td rowspan = 2><input type = "submit" value = "로그인"></td></tr>
<tr><td><input type = "password" name = "userPw" placeholder = "비밀번호"></td></tr>
<tr><td colspan = 2> 아이디/비밀번호 찾기 | <a href = "userAgree.nhn">회원가입</a></td></tr>
</table>
</form>
</c:if>
</body>
</html>