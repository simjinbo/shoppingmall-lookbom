package admin.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import admin.model.vo.Product;
import admin.model.vo.ProductDetail;

public class AdminDao {

	public int insertProdcut(Connection conn, Product product) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "INSERT INTO PRODUCT VALUES(SEQ_PRODUCT_NO.NEXTVAL,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, DEFAULT, DEFAULT, DEFAULT)";
				
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, product.getProductName());
			pstmt.setString(2, product.getProductType());
			pstmt.setString(3, product.getBrand());
			pstmt.setString(4, product.getBrand_image());
			pstmt.setString(5, product.getSeason());
			pstmt.setString(6, product.getSex());
			pstmt.setInt(7, product.getProductPrice());
			pstmt.setDouble(8, product.getDiscountRate());
			pstmt.setString(9, product.getSizeCategory());
			pstmt.setString(10, product.getSizeContents());
			pstmt.setString(11, product.getMoreInto());
		
			result = pstmt.executeUpdate();
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	public int getProductNo(Connection conn, String productName) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		int productNo=0;
		
		String query = "SELECT PRODUCT_NO FROM PRODUCT WHERE PRODUCT_NAME = ?";
		
		try {
			pstmt = conn.prepareStatement(query);			
			pstmt.setString(1, productName);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
			  productNo = rset.getInt("product_no");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return productNo;
	}

	public int insertProdcutDetail(Connection conn, ProductDetail productDetail, int productNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "INSERT INTO PRODUCT_DETAIL VALUES(SEQ_PRODUCT_DETAIL_NO.NEXTVAL, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, Default, ?)";
				
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, productDetail.getProductColor());
			pstmt.setString(2, productDetail.getProductImage1());
			pstmt.setString(3, productDetail.getProductImage2());
			pstmt.setString(4, productDetail.getProductImage3());
			pstmt.setString(5, productDetail.getProductImage4());
			pstmt.setString(6, productDetail.getProductImage5());
			pstmt.setInt(7, productDetail.getSsizeQuantity());
			pstmt.setInt(8, productDetail.getMsizeQuantity());
			pstmt.setInt(9, productDetail.getLsizeQuantity());
			pstmt.setInt(10, productDetail.getXlsizeQuantity());
			pstmt.setInt(11, productDetail.getSsizeQuantity()+productDetail.getMsizeQuantity()+productDetail.getLsizeQuantity()+productDetail.getXlsizeQuantity());
			pstmt.setInt(12, productNo);
		
			result = pstmt.executeUpdate();
		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}
}
