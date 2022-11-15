package controller.goods;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import model.GoodsDTO;
import model.DAO.GoodsDAO;

public class GoodsWriteController {
	public void execute(HttpServletRequest request) {
		String goodsNum = request.getParameter("goodsNum");
		String goodsName = request.getParameter("goodsName");
		String goodsPrice = request.getParameter("goodsPrice");
		String goodsDate = request.getParameter("goodsDate");
		String goodsContent = request.getParameter("goodsContent");
		String goodsQty = request.getParameter("goodsQty");
		String goodsCompany = request.getParameter("goodsCompany");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date date = null;
		try {
			date = sdf.parse(goodsDate); //문자열 날짜를 날짜 형식으로 전환하는 
		} catch(ParseException e) {
			e.printStackTrace();
		}
		System.out.println(goodsNum);
		System.out.println(goodsName);
		System.out.println(goodsPrice);
		System.out.println(goodsContent);
		System.out.println(goodsQty);
		System.out.println(goodsCompany);
		System.out.println(date);
		
		GoodsDTO dto = new GoodsDTO();
		dto.setGoodsCompany(goodsCompany);
		dto.setGoodsContent(goodsContent);
		dto.setGoodsDate(date);
		dto.setGoodsName(goodsName);
		dto.setGoodsNum(Integer.parseInt(goodsNum));
		dto.setGoodsPrice(Integer.parseInt(goodsPrice));
		dto.setGoodsQty(Integer.parseInt(goodsQty));
		
		GoodsDAO dao = new GoodsDAO();
		dao.goodsInsert(dto);
	}
}
