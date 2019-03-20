package shoppingbag.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import shoppingbag.model.vo.ShoppingBagList;

public class ShoppingBagDao {
	
	//장바구니 리스트 출력
	public ArrayList<ShoppingBagList> selectSbList(Connection conn) {
		ArrayList<ShoppingBagList> list = new ArrayList<ShoppingBagList>();
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = "SELECT SB_NO, SB_PRODUCT_BUNDLE, USER_NO, PRODUCT_NO, PRODUCT_DETAIL_NO, PRODUCT_NAME, PRODUCT_IMAGE5, PRODUCT_COLOR, SB_PRODUCT_SIZE, DISCOUNT_RATE, PRODUCT_PRICE, SB_PRODUCT_QUANTITY, SB_TOTAL_PRICE " +
					   "FROM SHOPPING_BAG JOIN PRODUCT_DETAIL USING (PRODUCT_DETAIL_NO) JOIN PRODUCT USING (PRODUCT_NO) ORDER BY SB_NO";
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			
			while(rset.next()) {
				ShoppingBagList sb = new ShoppingBagList();
				
				sb.setSbNo(rset.getInt("SB_NO"));
				sb.setSbProductBundle(rset.getInt("SB_PRODUCT_BUNDLE"));
				sb.setUserNo(rset.getInt("USER_NO"));
				sb.setProductNo(rset.getInt("PRODUCT_NO"));
				sb.setProductDetailNo(rset.getInt("PRODUCT_DETAIL_NO"));
				sb.setProductName(rset.getString("PRODUCT_NAME"));
				sb.setProductImage5(rset.getString("PRODUCT_IMAGE5"));
				sb.setProductColor(rset.getString("PRODUCT_COLOR"));
				sb.setSbProductSize(rset.getString("SB_PRODUCT_SIZE"));
				sb.setDiscountRate(rset.getDouble("DISCOUNT_RATE"));
				sb.setProductPrice(rset.getInt("PRODUCT_PRICE"));
				sb.setSbProductQuantity(rset.getInt("SB_PRODUCT_QUANTITY"));				
				sb.setSbTotalPrice(rset.getInt("SB_TOTAL_PRICE"));
				
				list.add(sb);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return list;
	}
	
	//장바구니 상품 수량 업데이트
	public int updateQuantity(Connection conn, int sbno, int productquantity) { 
		int result = 0;
		PreparedStatement pstmt = null;
		String query = "UPDATE SHOPPING_BAG SET SB_PRODUCT_QUANTITY = ? WHERE SB_NO = ?";
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, productquantity);
			pstmt.setInt(2, sbno);
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	//장바구니 선택된 상품 삭제
	public int deleteSbProduct(Connection conn, int[] sbdelete) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		StringBuffer sb = new StringBuffer();
		sb.append("delete from shopping_bag where sb_no in(?");
		for(int i = 2; i<=sbdelete.length; i++) {
			sb.append(", ?");				
		}
		sb.append(")");
		
		String query = sb.toString();
		System.out.println(query);
		
		try {
			pstmt = conn.prepareStatement(query);
			for(int i = 0; i<sbdelete.length; i++) {
				pstmt.setInt(i+1, sbdelete[i]);
			}
			
			result = pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		return result;	
	}	
}
