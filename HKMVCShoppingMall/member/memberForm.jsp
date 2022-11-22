<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
회원등록 페이지입니다.<br/>
<form action="memberRegist.mem" method="get" name="frm" id="frm">
<table border = 1>
<tr><td>회원번호</td><td> <input type="text" name="memNum"></td></tr>
<tr><td>회원아이디</td><td> <input type="text" name="memId"></td></tr>
<tr><td>회원비밀번호</td><td> <input type="password" name="memPw"></td></tr>
<tr><td>회원비밀번호확인</td><td> <input type="password" name="memPwCon"/></tr>
<tr><td>회원명</td><td> <input type="text" name="memName"/></td></tr>
<tr><td>회원연락처</td><td><input type="text" name="memPhone"></td></tr>
<tr><td>회원주소</td><td> <input type="text" name="memAddr"></td></tr>
<tr><td>회원성별</td><td> <input type="radio" name="memGender" value="M" checked/>남자
						<input type="radio" name="memGender" value="F" />여자</td></tr>
<tr><td>회원생년월일</td><td> <input type="Date" name="memBirth"></td></tr>
<tr><td>회원이메일</td><td> <input type="email" name="memEmail"></td></tr>
<tr><td colspan=2 align=center><input type="submit" value="회원 등록" /></td></tr>
</table>
</form>
</body>
</html>