package admin.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;

import admin.model.dao.AdminDao;
import admin.model.vo.Product;
import admin.model.vo.ProductDetail;

public class AdminService {

	AdminDao adao = new AdminDao();
	public int insertProduct(Product product) {
		Connection conn = getConnection();
		int result = adao.insertProdcut(conn, product);
		if (result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int getProductNo(String productName) {
		Connection conn = getConnection();
		int productNo = adao.getProductNo(conn,productName);
		close(conn);
		return productNo;
	}
	
	public int insertProductDetail(ProductDetail productDetail,int productNo) {
		Connection conn = getConnection();
		int result = adao.insertProdcutDetail(conn, productDetail, productNo);
		if (result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
}
