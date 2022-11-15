package controller.board;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;

import model.BoardDTO;
import model.DAO.BoardDAO;

public class BoardWriteController {
	public void execute(HttpServletRequest request) {
		try {
			request.setCharacterEncoding("uft-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		String boardWriter = request.getParameter("boardWriter");
		String boardSubject = request.getParameter("boardSubject");
		String boardContent = request.getParameter("boardContent");
		String writerIp = request.getRemoteAddr();
		
		
		BoardDTO dto = new BoardDTO();
		dto.setBoardContent(boardContent);
		dto.setBoardSubject(boardSubject);
		dto.setBoardWriter(boardWriter);
		dto.setWriterIp(writerIp);
		
		BoardDAO dao = new BoardDAO();
		dao.boardInsert(dto);
	}
}
