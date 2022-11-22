<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border = 1>
<tr><td>회원번호</td><td>${dto.memNum }</td></tr>
<tr><td>회원아이디</td><td>${dto.memId }</td></tr>
<tr><td>회원비밀번호</td><td>${dto.memPw }</td></tr>
<tr><td>회원명</td><td>${dto.memName }</td></tr>
<tr><td>회원연락처</td><td>${dto.memPhone }</td></tr>
<tr><td>회원주소</td><td>${dto.memAddr }</td></tr>
<tr><td>회원성별</td><td>${dto.memGender }</td></tr>
<tr><td>회원생년월일</td><td>${dto.memBirth }</td></tr>
<tr><td>회원이메일</td><td>${dto.memEmail }</td></tr>
<tr><td colspan=2 align=center><a href = "memberUpdate.mem?num=${dto.memNum }">수정</a> 
								| <a href = "memberDelete.mem?num=${dto.memNum }">삭제</a> | 
								<a href = "memberList.mem">리스트로 돌아가기</a></td></tr>
</table>
</body>
</html>