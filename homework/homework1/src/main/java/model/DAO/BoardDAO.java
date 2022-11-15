package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.BoardDTO;

public class BoardDAO {
	String jdbcURL;
	String jdbcDriver;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql;
	
	public BoardDAO() {
		jdbcURL = "jdbc:oracle:thin:@112.148.121.14:1521:xe";
		jdbcDriver = "oracle.jdbc.driver.OracleDriver";
	}
	public Connection getConnection() {
		Connection conn = null;
		try {
		Class.forName(jdbcDriver);
		conn = DriverManager.getConnection(jdbcURL, "hkk1234", "oracle");
		} catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	public void boardDel(String num) {
		con = getConnection();
		sql = " delete from board where board_num = ? ";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, num);
			int i = pstmt.executeUpdate();
			System.out.println(i +"개 행이 삭제되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public void boardUpdate(BoardDTO dto) {
		con = getConnection();
		sql = " update board "
				+ " set board_writer =? , board_subject =?, "
				+ " board_content =? "
				+ " where board_num = ? ";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getBoardWriter());
			pstmt.setString(2, dto.getBoardSubject());
			pstmt.setString(3, dto.getBoardContent());
			pstmt.setInt(4, dto.getBoardNum());
			int i = pstmt.executeUpdate();
			System.out.println(i + "개가 수정되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public void visitCount(String num) {
		con = getConnection();
		sql = " update board "
				+ " set visit_count = visit_count + 1 "
				+ " where board_num = ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, num);
			int i = pstmt.executeUpdate();
			System.out.println(i + "개 행이 수정되었습니다.");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	public BoardDTO selectOne(String num) {
		BoardDTO dto = new BoardDTO();
		con = getConnection();
		sql = " select board_num,board_writer,board_subject, "
				+ "board_content,writer_ip,visit_count "
				+ " from board "
				+ " where board_num = ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setBoardContent(rs.getString("board_content"));
				dto.setBoardNum(rs.getInt("board_num"));
				dto.setBoardSubject(rs.getString("board_writer"));
				dto.setBoardWriter(rs.getString("board_writer"));
				dto.setVisitCount(rs.getInt("visit_count"));
				dto.setWriterIp(rs.getString("writer_ip"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}
	public List<BoardDTO> selectAll(){
		List<BoardDTO> list = new ArrayList<BoardDTO>();
		con = getConnection();
		sql=" select board_num,board_writer,board_subject, "
				+ " board_content,writer_ip,visit_count,board_date "
				+ " from board "
				+ " order by board_num desc ";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setBoardContent(rs.getString("board_content"));
				dto.setBoardNum(rs.getInt("board_num"));
				dto.setBoardSubject(rs.getString("board_subject"));
				dto.setBoardWriter(rs.getString("board_writer"));
				dto.setVisitCount(rs.getInt("visit_count"));
				dto.setWriterIp(rs.getString("writer_ip"));
				dto.setBoardDate(rs.getDate("board_date"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}
	public void boardInsert(BoardDTO dto) {
		con = getConnection();
		sql = " insert into board(board_num, board_writer, board_subject, "
				+" board_content,writer_ip, visit_count) "
				+" values(( select nvl(max(board_num),0) +1 from board ), "
				+" ?,?,?,?,0) ";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getBoardWriter());
			pstmt.setString(2, dto.getBoardSubject());
			pstmt.setString(3, dto.getBoardContent());
			pstmt.setString(4, dto.getWriterIp());
			int i = pstmt.executeUpdate();
			System.out.println(i+"개 행이 삽입되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
