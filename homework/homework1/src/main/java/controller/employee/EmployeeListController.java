package controller.employee;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import model.EmpDTO;
import model.DAO.EmpDAO;

public class EmployeeListController {
	public void execute(HttpServletRequest request) {
		EmpDAO dao = new EmpDAO();
		List<EmpDTO> list = dao.selectAll();
		request.setAttribute("list", list);
	}
}
