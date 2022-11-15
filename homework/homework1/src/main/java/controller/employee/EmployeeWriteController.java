package controller.employee;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import model.EmpDTO;
import model.DAO.EmpDAO;

public class EmployeeWriteController {
	public void execute(HttpServletRequest request) {
		Integer empNum = Integer.parseInt(request.getParameter("empNum"));
		String empName = request.getParameter("empName");
		String empId = request.getParameter("empId");
		String empPw = request.getParameter("empPw");
		String empHireDate = request.getParameter("empHireDate");
		String empEmail = request.getParameter("empEmail");
		Integer empSalary = Integer.parseInt(request.getParameter("empSalary"));
		String empPhone = request.getParameter("empPhone");
		
		SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = dt.parse(empHireDate);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		
		EmpDTO dto = new EmpDTO();
		dto.setEmpEmail(empEmail);
		dto.setEmpHireDate(date);
		dto.setEmpId(empId);
		dto.setEmpName(empName);
		dto.setEmpNum(empNum);
		dto.setEmpPhone(empPhone);
		dto.setEmpPw(empPw);
		dto.setEmpSalary(empSalary);
		
		EmpDAO dao = new EmpDAO();
		dao.employeeInsert(dto);
	}
}
