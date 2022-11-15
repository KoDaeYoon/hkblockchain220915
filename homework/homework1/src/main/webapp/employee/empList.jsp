<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
직원리스트<br/>
<table border = 1>
	<tr><td>직원번호</td><td>직원이름</td><td>아이디</td><td>입사일</td></tr>
	<c:forEach items="${list }" var="dto">
	<tr><td><a href="empDetail.emp?num=${dto.empNum }">${dto.empNum }</a></td>
		<td>${dto.empName }</td>
		<td><a href="empDetail.emp?num=${dto.empNum }">${dto.empId }</a></td>
		<td>
		${dto.empHireDate }
		</td></tr>
	</c:forEach>	
</table>
<a href = "empWrite.emp">직원등록</a>
</body>
</html>