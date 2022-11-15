package controller.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardFrontController extends HttpServlet implements javax.servlet.Servlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = requestURI.substring(contextPath.length());
		System.out.println(requestURI);
		System.out.println(contextPath);
		System.out.println(request.getRequestURL());
		System.out.println(contextPath.length());
		if(command.equals("/boardList.board")) {
			BoardListController action = new BoardListController();
			action.execute(request);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/board/boardList.jsp");
			dispatcher.forward(request, response);
		}else if(command.equals("/boardWrite.board")){
			RequestDispatcher dispatcher = request.getRequestDispatcher("/board/boardForm.jsp");
			dispatcher.forward(request, response);
		}else if(command.equals("/boardRegist.board")) {
			BoardWriteController action = new BoardWriteController();
			action.execute(request);
			response.sendRedirect("boardList.board");
		}else if(command.equals("/boardDetail.board")) {
			BoardDetailController action = new BoardDetailController();
			action.execute(request);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/board/boardInfo.jsp");
			dispatcher.forward(request, response);
		}else if(command.equals("/boardUpdate.board")) {
			BoardDetailController action = new BoardDetailController();
			action.execute(request);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/board/boardModify.jsp");
			dispatcher.forward(request, response);
		}else if(command.equals("/boardModify.board")) {
			BoardModifyController action = new BoardModifyController();
			action.execute(request);
			response.sendRedirect("boardDetail.board?num="+request.getParameter("boardNum"));
		}else if(command.equals("/boardDel.board")) {
			BoardDelController action = new BoardDelController();
			action.execute(request);
			response.sendRedirect("boardList.board");
		}
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
}
