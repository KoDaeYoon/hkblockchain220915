package model.DAO;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.EmpDTO;

public class EmpDAO {
	String jdbcURL;
	String jdbcDriver;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql;
	public EmpDAO() {
		jdbcDriver = "oracle.jdbc.driver.OracleDriver";
		jdbcURL = "jdbc:oracle:thin:@112.148.121.14:1521:xe";
	}
	public Connection getConnection() {
		Connection conn = null;
		try {
			Class.forName(jdbcDriver);
			conn = DriverManager.getConnection(jdbcURL,"hkk1234","oracle");
		}  catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}
	public void empModify(EmpDTO dto) {
		con = getConnection();
		sql = " update employee "
				+ " set emp_name = ?, "
				+ " emp_id = ?, "
				+ " emp_pw = ?, "
				+ " emp_hire_date = ?, "
				+ " emp_email = ?, "
				+ " emp_salary = ?, "
				+ " emp_phone = ?, "
				+ " where emp_num = ? ";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getEmpName());
			pstmt.setString(2, dto.getEmpId());
			pstmt.setString(3, dto.getEmpPw());
			pstmt.setDate(4, new java.sql.Date(dto.getEmpHireDate().getTime()));
			pstmt.setString(5, dto.getEmpEmail());
			pstmt.setInt(6, dto.getEmpSalary());
			pstmt.setString(7, dto.getEmpPhone());
			pstmt.setInt(8, dto.getEmpNum());
			int i = pstmt.executeUpdate();
			System.out.println(i+"개가 수정되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
	}
	public EmpDTO selectOne(String num) {
		EmpDTO dto = new EmpDTO();
		con = getConnection();
		sql = " select emp_num, emp_name, emp_id, emp_pw, emp_hire_date, "
				+ " emp_email, emp_salary, emp_phone "
				+ " from employee "
				+ " where emp_num = ? ";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto.setEmpEmail(rs.getString("emp_email"));
				dto.setEmpHireDate(rs.getDate("emp_hire_date"));
				dto.setEmpId(rs.getString("emp_id"));
				dto.setEmpName(rs.getString("emp_name"));
				dto.setEmpNum(rs.getInt("emp_num"));
				dto.setEmpPhone(rs.getString("emp_phone"));
				dto.setEmpPw(rs.getString("emp_pw"));
				dto.setEmpSalary(rs.getInt("emp_salary"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	public List<EmpDTO> selectAll(){
		List<EmpDTO> list = new ArrayList<EmpDTO>();
		con = getConnection();
		sql = " select emp_num, emp_name, emp_id, emp_pw, emp_hire_date, "
				+ " emp_email, emp_salary, emp_phone "
				+ " from employee "
				+ " order by emp_num desc ";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				EmpDTO dto = new EmpDTO();
				dto.setEmpEmail(rs.getString("emp_email"));
				dto.setEmpHireDate(rs.getDate("emp_hire_date"));
				dto.setEmpId(rs.getString("emp_id"));
				dto.setEmpPw(rs.getString("emp_pw"));
				dto.setEmpName(rs.getString("emp_name"));
				dto.setEmpNum(rs.getInt("emp_num"));
				dto.setEmpPhone(rs.getString("emp_phone"));
				dto.setEmpSalary(rs.getInt("emp_salary"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public void employeeInsert(EmpDTO dto) {
		con = getConnection();
		sql = " insert into employee( "
				+ " emp_num, emp_name, emp_id, emp_pw, emp_hire_date, "
				+ " emp_email, emp_salary, emp_phone) "
				+ " values(?,?,?,?,?,?,?,?)";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, dto.getEmpNum());
			pstmt.setString(2, dto.getEmpName());
			pstmt.setString(3, dto.getEmpId());
			pstmt.setString(4, dto.getEmpPw());
			pstmt.setDate(5, new Date(dto.getEmpHireDate().getTime()));
			pstmt.setString(6, dto.getEmpEmail());
			pstmt.setInt(7, dto.getEmpSalary());
			pstmt.setString(8, dto.getEmpPhone());
			int i = pstmt.executeUpdate();
			System.out.println(i + "개 행이 삽입되었습니다.");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
}
