package product.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import product.model.vo.Product;
import product.model.vo.ProductDetail;
import product.model.vo.ProductFull;

public class ProductDao {

	public ProductDao() {}
	
	public ArrayList<Product> selectProductList(Connection conn, int currentPage, int limit) {
		// TODO Auto-generated method stub
		return null;
	}

	public Product selectProductDetail(Connection conn, int productNo) {
		// TODO Auto-generated method stub
		return null;
	}

	

	

	public int updateProdcut(Connection conn, Product product) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int updateProdcutDetail(Connection conn, ProductDetail productDetail) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteProduct(Connection conn, Product product) {
		// TODO Auto-generated method stub
		return 0;
	}

	public int deleteProductDetail(Connection conn, ProductDetail productDetail) {
		// TODO Auto-generated method stub
		return 0;
	}



	public int addViewCount(Connection conn, int productNo) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String query = "update product set view_count = view_count + 1 where product_no = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, productNo);
			
			result = pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	public ArrayList<ProductFull> selectProduct(Connection conn, int productNo) {		
		ArrayList<ProductFull> list  = new ArrayList<ProductFull>();				
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String query = "select product_no, product_name, product_type, brand, brand_image, season, sex, product_price, discount_rate,"
		+" size_category, size_contents, more_info, view_count, resiter, product_like,"
		+" product_detail_no, product_color, product_image1, product_image2, product_image3, product_image4, product_image5,"
		+" ssize_quantity, msize_quantity, lsize_quantity, xlsize_quantity, total_enter_quantity, total_sales_rate"
		+" from product"
		+" join product_detail using (product_no)"
		+" where product_no = ?";
		
		try {
		  pstmt = conn.prepareStatement(query);
		  pstmt.setInt(1, productNo);
		  
		  rset = pstmt.executeQuery();
		  
		  while(rset.next()) {
			  ProductFull productFull = new ProductFull();
			  
			  productFull.setProductNo(rset.getInt("product_no"));
			  productFull.setProductName(rset.getString("product_name"));
			  productFull.setProductType(rset.getString("product_type"));
			  productFull.setBrand(rset.getString("brand"));
			  productFull.setBrand_image(rset.getString("brand_image"));
			  productFull.setSeason(rset.getString("season"));
			  productFull.setSex(rset.getString("sex"));
			  productFull.setProductPrice(rset.getInt("product_price"));
			  productFull.setDiscountRate(rset.getDouble("discount_rate"));
			  productFull.setSizeCategory(rset.getString("size_category"));
			  productFull.setSizeContents(rset.getString("size_contents"));
			  productFull.setMoreInto(rset.getString("more_info"));
			  productFull.setViewCount(rset.getInt("view_count"));			  
			  productFull.setResiter(rset.getDate("resiter"));
			  productFull.setProductLike(rset.getInt("product_like"));		
			  productFull.setProductDetailNo(rset.getInt("product_detail_no"));
			  productFull.setProductColor(rset.getString("product_color"));
			  productFull.setProductImage1(rset.getString("product_image1"));
			  productFull.setProductImage2(rset.getString("product_image2"));
			  productFull.setProductImage3(rset.getString("product_image3"));
			  productFull.setProductImage4(rset.getString("product_image4"));
			  productFull.setProductImage5(rset.getString("product_image5"));			  
			  productFull.setSsizeQuantity(rset.getInt("ssize_quantity"));
			  productFull.setMsizeQuantity(rset.getInt("msize_quantity"));
			  productFull.setLsizeQuantity(rset.getInt("lsize_quantity"));
			  productFull.setXlsizeQuantity(rset.getInt("xlsize_quantity"));
			  productFull.setTotalEnterQuantity(rset.getInt("total_enter_quantity"));
			  productFull.setTotalSaleRate(rset.getInt("total_sales_rate"));
		
			  list.add(productFull);
		  }
		  
		} catch(Exception e) {
			 e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

	
	
}
