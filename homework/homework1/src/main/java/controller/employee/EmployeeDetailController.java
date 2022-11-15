package controller.employee;

import javax.servlet.http.HttpServletRequest;

import model.EmpDTO;
import model.DAO.EmpDAO;

public class EmployeeDetailController {
	public void execute(HttpServletRequest request) {
		String num = request.getParameter("num");
		EmpDAO dao = new EmpDAO();
		EmpDTO dto = dao.selectOne(num);
		request.setAttribute("dto", dto);
	}
}
