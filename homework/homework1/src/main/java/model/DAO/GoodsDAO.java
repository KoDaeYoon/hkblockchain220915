package model.DAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.GoodsDTO;

public class GoodsDAO {
	String jdbcURL;
	String jdbcDriver;
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	String sql;
	
	public GoodsDAO() {
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
	public void goodsDelete(String num) {
		con = getConnection();
		sql = " delete from goods where goods_num = ? ";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, num);
			int i = pstmt.executeUpdate();
			System.out.println(i+"개 행이 삭제되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public void goodsUpdate(GoodsDTO dto) {
		con = getConnection();
		sql = " update goods "
				+ " set goods_name = ?, "
				+ " goods_price = ?, "
				+ " goods_content = ?, "
				+ " goods_qty = ?, "
				+ " goods_company = ?, "
				+ " goods_date = ? "
				+ " where goods_num = ? ";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getGoodsName());
			pstmt.setInt(2, dto.getGoodsPrice());
			pstmt.setString(3, dto.getGoodsContent());
			pstmt.setInt(4, dto.getGoodsQty());
			pstmt.setString(5, dto.getGoodsCompany());
			pstmt.setDate(6, new java.sql.Date(dto.getGoodsDate().getTime()));
			pstmt.setInt(7, dto.getGoodsNum());
			int i = pstmt.executeUpdate();
			System.out.println(i + "개가 수정되었습니다.");
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	public GoodsDTO selectOne(String num) {
		GoodsDTO dto = null;
		con = getConnection();
		sql = " select goods_num,goods_name,goods_price,goods_content, "
			+ "        goods_qty, goods_company, goods_date "
			+ " from goods "
			+ " where goods_num = ?";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, num);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				dto = new GoodsDTO();
				dto.setGoodsCompany(rs.getString("goods_company"));
				dto.setGoodsContent(rs.getString("goods_content"));
				dto.setGoodsDate(rs.getDate("goods_date"));
				dto.setGoodsName(rs.getString("goods_name"));
				dto.setGoodsNum(rs.getInt("goods_num"));
				dto.setGoodsPrice(rs.getInt("goods_price"));
				dto.setGoodsQty(rs.getInt("goods_qty"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return dto;
	}
	public List<GoodsDTO> selectAll(){
		List<GoodsDTO> list = new ArrayList<GoodsDTO>();
		con = getConnection();
		sql = " select goods_num, goods_name, goods_price, goods_date, goods_content, goods_qty, goods_company "
				+" from goods "
				+" order by goods_num desc";
		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				GoodsDTO dto = new GoodsDTO();
				dto.setGoodsCompany(rs.getString("goods_company"));
				dto.setGoodsContent(rs.getString("goods_content"));
				dto.setGoodsDate(rs.getDate("goods_date"));
				dto.setGoodsName(rs.getString("goods_name"));
				dto.setGoodsNum(rs.getInt("goods_num"));
				dto.setGoodsPrice(rs.getInt("goods_price"));
				dto.setGoodsQty(rs.getInt("goods_qty"));
				list.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public void goodsInsert(GoodsDTO dto) {
		con = getConnection();
		sql = " insert into goods(goods_num, goods_name, goods_price, goods_date, goods_content "
				+ "                , goods_qty, goods_company) "
				+ " values((select nvl(max(goods_num),0)+1 from goods),?,?,?,?,?,?) ";
		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, dto.getGoodsName());
			pstmt.setInt(2, dto.getGoodsPrice());
			pstmt.setDate(3, new java.sql.Date(dto.getGoodsDate().getTime()));
			pstmt.setString(4, dto.getGoodsContent());
			pstmt.setInt(5, dto.getGoodsQty());
			pstmt.setString(6, dto.getGoodsCompany());
			int i = pstmt.executeUpdate();
			System.out.println(i+"개 행이 삽입되었습니다.");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
