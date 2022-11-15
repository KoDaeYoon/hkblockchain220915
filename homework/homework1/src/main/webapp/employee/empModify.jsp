<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action = "empUpdate.emp" method = "get">
<table border = 1>
<caption> 직원 정보 수정</caption>
<tr>
<td>직원 번호</td><td><input type="text" name="empNum"  value="${dto.empNum }" /></td>
</tr>
<tr>
<td>직원 이름</td><td><input type="text" name="empName" value="${dto.empName }"/></td>
</tr>
<tr>
<td>직원 아이디</td><td><input type="text" name="empId" value="${dto.empId }"/></td>
</tr>
<tr>
<td>직원 비밀번호</td><td><input type="text" name="empPw" value="${dto.empPw }"/></td>
</tr>
<tr>
<td>직원 이메일</td><td><input type="text" name="empEmail" value="${dto.empEmail }"/></td>
</tr>
<tr>
<td>직원 연락처</td><td><input type="text" name="empPhone" value="${dto.empPhone }"/></td>
</tr>
<tr>
<td>직원 입사일</td><td><input type="Date" name="empHireDate" value="${dto.empHireDate }"/></td>
</tr>
<tr>
<td>급여</td><td><input type="number" name="empSalary" min="1000" step="100" value="${dto.empSalary }"/></td>
</tr>
<tr><td colspan=2 align=center><input type="submit" value="직원수정완료"/></td></tr>
</table>
</form>
</body>
</html>