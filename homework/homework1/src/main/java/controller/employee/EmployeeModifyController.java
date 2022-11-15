package controller.employee;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import model.EmpDTO;
import model.DAO.EmpDAO;

public class EmployeeModifyController {
	public void execute(HttpServletRequest request) {
		String empNum = request.getParameter("emp_num");
		String empName = request.getParameter("emp_name");
		String empId = request.getParameter("emp_id");
		String empPw = request.getParameter("empPw");
		String empEmail = request.getParameter("emp_email");
		String empPhone = request.getParameter("emp_phone");
		String empHireDate = request.getParameter("emp_hire_date");
		String empSalary = request.getParameter("emp_salary");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = sdf.parse(empHireDate);  
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		EmpDTO dto = new EmpDTO();
		dto.setEmpEmail(empEmail);
		dto.setEmpHireDate(date);
		dto.setEmpId(empId);
		dto.setEmpPw(empPw);
		dto.setEmpName(empName);
		dto.setEmpNum(Integer.parseInt(empNum));
		dto.setEmpPhone(empPhone);
		dto.setEmpSalary(Integer.parseInt(empSalary));
		
		EmpDAO dao = new EmpDAO();
		dao.empModify(dto);
	}
}
