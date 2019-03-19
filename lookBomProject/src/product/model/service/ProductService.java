package product.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import product.model.dao.ProductDao;
import product.model.vo.Product;
import product.model.vo.ProductDetail;
import product.model.vo.ProductFull;


public class ProductService {
	
	private ProductDao pdao = new ProductDao();

	public ProductService() {
	}

	public void addViewCount(int productNo) {
		 Connection conn = getConnection();
		 int result = pdao.addViewCount(conn, productNo);
		 if(result > 0)
			 commit(conn);
		 else
			 rollback(conn);
		 close(conn);
	}

	public ArrayList<ProductFull> selectProduct(int productNo) {
	Connection conn = getConnection();
	ArrayList<ProductFull> list = pdao.selectProduct(conn, productNo); 
	close(conn);
	
	return list;
	}



	
}
