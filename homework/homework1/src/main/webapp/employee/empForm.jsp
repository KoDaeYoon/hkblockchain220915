<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
직원등록 페이지입니다.<br />
<form action="empAdd.emp" method="get" name="frm" id="frm" >
	직원번호 : <input type="text" name="empNum" required="required" /><br />
	직원이름 : <input type="text" name="empName" required="required" /><br />
	직원아이디: <input type="text" name="empId" required="required"/><br />
	비밀번호 : <input type="password" name="empPw" id="empPw" required="required"/><br />
	비밀번호확인 : <input type="password" name="empPwCon" id="empPwCon" 
					required="required"/><br />
	입사일 : <input type="date" name="empHireDate" required="required"/><br />
	직원이메일 : <input type="email" name="empEmail" /><br />
	직원 급여 : <input type="number" min="100"  value="100" name="empSalary" required="required"/><br />
	직원연락처 : <input type="tel" name="empPhone" placeholder="02-1111-1111" required="required"/><br />
	<input type="submit" value="직원등록"/>
</form>
</body>
</html>