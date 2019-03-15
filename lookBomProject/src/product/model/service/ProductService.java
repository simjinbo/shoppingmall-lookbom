package product.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import product.model.dao.ProductDao;
import product.model.vo.Product;
import product.model.vo.ProductDetail;

public class ProductService {
	
	private ProductDao pdao = new ProductDao();

	public ProductService() {
	}

	public ArrayList<Product> selectProductList(int currentPage, int limit) {
		Connection conn = getConnection();
		ArrayList<Product> list = pdao.selectProductList(conn, currentPage, limit);
		close(conn);

		return list;
	}

	public Product selectProductDetail(int productNo) {
		Connection conn = getConnection();
		Product product = pdao.selectProductDetail(conn, productNo);
		close(conn);

		return product;
	}

	public int insertProduct(Product product) {
		Connection conn = getConnection();
		int result = pdao.insertProdcut(conn, product);
		if (result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}

	public int insertProductDetail(ProductDetail productDetail,int productNo) {
		Connection conn = getConnection();
		int result = pdao.insertProdcutDetail(conn, productDetail, productNo);
		if (result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}

	public int updateProduct(Product product) {
		Connection conn = getConnection();
		int result = pdao.updateProdcut(conn, product);
		if (result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}

	public int updateProductDetail(ProductDetail productDetail) {
		Connection conn = getConnection();
		int result = pdao.updateProdcutDetail(conn, productDetail);
		if (result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int deleteProduct(Product product) {
		Connection conn = getConnection();
		int result = pdao.deleteProduct(conn, product);
		if (result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}
	
	public int deleteProductDetail(ProductDetail productDetail) {
		Connection conn = getConnection();
		int result = pdao.deleteProductDetail(conn, productDetail);
		if (result > 0)
			commit(conn);
		else
			rollback(conn);
		close(conn);
		return result;
	}

	public int getProductNo(String productName) {
		Connection conn = getConnection();
		int productNo = pdao.getProductNo(conn,productName);
		close(conn);
		return productNo;
	}
	
}
