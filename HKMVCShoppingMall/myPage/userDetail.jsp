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
<table border = 1>
<tr><td>회원번호</td><td>${memVO.memNum }</td></tr>
<tr><td>회원아이디</td><td>${memVO.memId }</td></tr>
<tr><td>회원비밀번호</td><td>${memVO.memPw }</td></tr>
<tr><td>회원명</td><td>${memVO.memName }</td></tr>
<tr><td>회원연락처</td><td>${memVO.memPhone }</td></tr>
<tr><td>회원주소</td><td>${memVO.memAddr }</td></tr>
<tr><td>회원성별</td><td><c:if test = "${memVO.memGender == 'F' }">여자</c:if>
                      <c:if test = "${memVO.memGender == 'M' }">남자</c:if></td></tr>
<tr><td>회원생년월일</td><td>${memVO.memBirth }</td></tr>
<tr><td>회원이메일</td><td>${memVO.memEmail }</td></tr>
<tr><td colspan=2 align=center><a href = "userModify.nhn">내 정보 수정</a></td></tr>
</table>
</body>
</html>