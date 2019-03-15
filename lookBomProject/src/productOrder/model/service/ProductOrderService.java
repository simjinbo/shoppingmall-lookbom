package productOrder.model.service;

import static common.JDBCTemplate.*;
import java.sql.Connection;
import java.util.ArrayList;

import productOrder.model.dao.ProductOrderDao;
import productOrder.model.vo.ProductOrder;
import productOrder.model.vo.ProductOrderList;

public class ProductOrderService {
	private ProductOrderDao odao = new ProductOrderDao();
	
	public ProductOrderService() {}

	public int getListCount() {
		Connection conn = getConnection();
		int listCount = odao.getListCount(conn);
		close(conn);
		return listCount;
	}
	
	public int getProductOrderListCount() {
		Connection conn = getConnection();
		int listCount = odao.getProductOrderListCount(conn);
		close(conn);
		return listCount;
	}

	public ArrayList<ProductOrder> selectPomList(int currentPage, int limit) {
		Connection conn= getConnection();
		ArrayList<ProductOrder> list = odao.selectPomList(conn, currentPage, limit);
		close(conn);
		return list;
	}

	public ArrayList<ProductOrderList> selectProductOrderList(int currentPage, int limit) {
		Connection conn = getConnection();
		ArrayList<ProductOrderList> list = odao.selectProductOrderList(conn, currentPage, limit);
		close(conn);
		return list;
	}


}
