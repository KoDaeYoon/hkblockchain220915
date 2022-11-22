<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="memberModify.mem" method="get" name="frm" id="frm">
<table border = 1>
<tr><td>회원번호</td><td> <input type="text" name="memNum" value = "${dto.memNum }"></td></tr>
<tr><td>회원아이디</td><td> <input type="text" name="memId" value = "${dto.memId }"></td></tr>
<tr><td>회원비밀번호</td><td> <input type="password" name="memPw" value = "${dto.memPw }"></td></tr>
<tr><td>회원명</td><td> <input type="text" name="memName" value = "${dto.memName }"></td></tr>
<tr><td>회원연락처</td><td><input type="text" name="memPhone" value = "${dto.memPhone }"></td></tr>
<tr><td>회원주소</td><td> <input type="text" name="memAddr" value = "${dto.memAddr }"></td></tr>
<tr><td>회원성별</td><td> <input type="radio" name="memGender" value="M" checked/>남자
						<input type="radio" name="memGender" value="F" />여자</td></tr>
<tr><td>회원생년월일</td><td> <input type="Date" name="memBirth" value = "${dto.memBirth }"></td></tr>
<tr><td>회원이메일</td><td> <input type="email" name="memEmail" value = "${dto.memEmail }"></td></tr>
<tr><td colspan=2 align=center><input type="submit" value="수정완료" /></td></tr>
</table>
</form>
</body>
</html>