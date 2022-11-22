<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.1.min.js"></script>
<script>
$(function(){
	$("#frm").submit(function(){
		if($("#memPw").val() != $("#memPwCon").val()){
			alert("비밀번호와 비밀번호 확인이 다릅니다.");
			$("#memPw").val(""); // 빈칸으로 다시만들기
			$("#memPwCon").val(""); // 빈칸으로 다시만들기
			$("#memPw").focus(); // 비밀번호에 커서 오도록 만들기
			return false;
		}
	});
});
</script>
</head>
<body>
<form action="userRegist.nhn" method="get" name="frm" id="frm">
<table border = 1>
<tr><td>회원아이디</td><td> <input type="text" name="memId" required="required"></td></tr>
<tr><td>회원비밀번호</td><td> <input type="password" name="memPw" id = "memPw" required="required"></td></tr>
<tr><td>회원비밀번호확인</td><td> <input type="password" name="memPwCon" id = "memPwCon" required="required"/></tr>
<tr><td>회원명</td><td> <input type="text" name="memName" required="required"/></td></tr>
<tr><td>회원연락처</td><td><input type="text" name="memPhone" required="required"></td></tr>
<tr><td>회원주소</td><td> <input type="text" name="memAddr"></td></tr>
<tr><td>회원성별</td><td> <input type="radio" name="memGender" value="M" checked/>남자
						<input type="radio" name="memGender" value="F" />여자</td></tr>
<tr><td>회원생년월일</td><td> <input type="Date" name="memBirth" required="required"></td></tr>
<tr><td>회원이메일</td><td> <input type="email" name="memEmail" required="required"></td></tr>
<tr><td colspan=2 align=center><input type="submit" value="회원가입" />
                               <input type="button" value="회원가입 취소" onclick ="javascript:location.href=<c:url value='/' />"/></td></tr>


</table>
</form>
</body>
</html>