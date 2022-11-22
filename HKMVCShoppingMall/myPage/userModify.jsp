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
<form action="userUpdate.nhn" method="get" name="frm" id="frm">
<table border = 1>
<tr><td>회원아이디</td><td> <input type="text" name="memId" value = "${memVO.memId }" readonly = "readonly"></td></tr>
<tr><td>회원명</td><td> <input type="text" name="memName" value = "${memVO.memName }" readonly = "readonly"></td></tr>
<tr><td>회원연락처</td><td><input type="text" name="memPhone" value = "${memVO.memPhone }"></td></tr>
<tr><td>회원주소</td><td> <input type="text" name="memAddr" value = "${memVO.memAddr }"></td></tr>
<tr><td>회원성별</td><td> <c:if test = "${memVO.memGender == 'F' }">여자</c:if>
                        <c:if test = "${memVO.memGender == 'M' }">남자</c:if></td></tr>
<tr><td>회원생년월일</td><td> <input type="Date" name="memBirth" value = "${memVO.memBirth }" readonly = "readonly"></td></tr>
<tr><td>회원이메일</td><td> <input type="email" name="memEmail" value = "${memVO.memEmail }"></td></tr>
<tr><td colspan=2 align=center><input type="submit" value="내 정보 수정완료" />
                               <input type="button" value="뒤로가기" /></td></tr>
</table>
</form>
</body>
</html>