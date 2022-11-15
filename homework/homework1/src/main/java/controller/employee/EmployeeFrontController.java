package controller.employee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class EmployeeFrontController extends HttpServlet implements javax.servlet.Servlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		if (command.equals("/empList.emp")) {
			EmployeeListController action = new EmployeeListController();
			action.execute(request);
			RequestDispatcher dispatcher = request.getRequestDispatcher("employee/empList.jsp");
			dispatcher.forward(request, response);
		}else if (command.equals("/empWrite.emp")) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("employee/empForm.jsp");
			dispatcher.forward(request, response);
		}else if(command.equals("/empAdd.emp")) {
			EmployeeWriteController action = new EmployeeWriteController();
			action.execute(request);
			response.sendRedirect("empList.emp");
		}else if(command.equals("/empDetail.emp")) {
			EmployeeDetailController action = new EmployeeDetailController();
			action.execute(request);
			RequestDispatcher dispatcher = request.getRequestDispatcher("employee/empDetail.jsp");
			dispatcher.forward(request, response);
		}else if(command.equals("/empModify.emp")) {
			EmployeeDetailController action = new EmployeeDetailController();
			action.execute(request);
			RequestDispatcher dispatcher = request.getRequestDispatcher("employee/empModify.jsp");
			dispatcher.forward(request, response);
		}else if(command.equals("/empUpdate.emp")) {
			EmployeeModifyController action = new EmployeeModifyController();
			action.execute(request);
			response.sendRedirect("empDetail.emp?num="+request.getParameter("empNum"));
		}
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
}
