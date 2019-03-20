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
	public ArrayList<ShoppingBagList> selectSbList() {
		Connection conn = getConnection();
		ArrayList<ShoppingBagList> list = sbdao.selectSbList(conn);
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
	
	//장바구니 선택된 상품 삭제
	public int deleteSbProduct(int[] sbdelete) {
		Connection conn = getConnection();
		int result = sbdao.deleteSbProduct(conn, sbdelete);
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		close(conn);
		return result;		
	}


}
