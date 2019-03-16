package shoppingbag.model.service;

import java.sql.Connection;
import java.util.ArrayList;
import static common.JDBCTemplate.*;

import shoppingbag.model.dao.ShoppingBagDao;
import shoppingbag.model.vo.ShoppingBag;
import shoppingbag.model.vo.ShoppingBagList;

public class ShoppingBagService {
	private ShoppingBagDao sbdao = new ShoppingBagDao();
	
	public ShoppingBagService() {}
	
	//장바구니 리스트 출력
	public ArrayList<ShoppingBagList> shoppingBagList() {
		Connection conn = getConnection();
		ArrayList<ShoppingBagList> list = sbdao.shoppingBagList(conn);
		close(conn);
		return list;
	}
	
	//장바구니 상품 수량 업데이트
	public int updateQuantity(int sbno, int productquantity) {
		Connection conn = getConnection();
		int result = sbdao.updateQuantity(conn, sbno, productquantity);
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		close(conn);
		return result;
	}


}
