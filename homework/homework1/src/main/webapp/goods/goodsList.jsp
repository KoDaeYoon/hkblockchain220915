<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
상품목록<br/>
<table border = 1>
<thead>
<tr><td>상품번호</td><td>상품명</td><td>가격</td></tr>
</thead>
<tbody>
<c:forEach items="${lists }" var = "dto">
	<tr><td><a href = "goodsDetail.goods?num=${dto.goodsNum }">${dto.goodsNum }</a></td>
	<td>${dto.goodsName}</td><td>${dto.goodsPrice }</td></tr>
</c:forEach>
</tbody>
</table>
<a href = "goodsWrite.goods">상품목록추가</a>
</body>
</html>