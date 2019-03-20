package productOrder.model.dao;

import static common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import productOrder.model.vo.ProductOrder;
import productOrder.model.vo.ProductOrderList;
import product.model.vo.Product;
import product.model.vo.ProductDetail;

public class ProductOrderDao {
	public ProductOrderDao() {}

	public int getListCount(Connection conn) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = "select count(*) from product_order";
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	}
	
	//주문내역리스트
	public int getProductOrderListCount(Connection conn) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String query = "SELECT COUNT(*) FROM(SELECT ORDER_NO, ORDER_PRODUCT_BUNDLE, ORDER_DATE, PRODUCT_NO, PRODUCT_DETAIL_NO, PRODUCT_IMAGE5, PRODUCT_NAME, PRODUCT_COLOR, ORDER_PRODUCT_SIZE, ORDER_PRODUCT_QUANTITY, PRODUCT_PRICE, DISCOUNT_RATE, ORDER_TOTAL_PRICE, ORDER_PROGRESS, ORDER_DECISION, REVIEW_YN " + 
				   "FROM PRODUCT_ORDER " + 
				   "JOIN PRODUCT_DETAIL USING (PRODUCT_DETAIL_NO) " + 
				   "JOIN PRODUCT USING (PRODUCT_NO) " + 
				   "ORDER BY ORDER_PRODUCT_BUNDLE DESC)";
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(query);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	}
	
	//주문내역관리리스트
	public ArrayList<ProductOrder> selectPomList(Connection conn, int currentPage, int limit) {
		ArrayList<ProductOrder> list = new ArrayList<ProductOrder>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int startRow = (currentPage -1) * limit + 1;
		int endRow = startRow + limit - 1;
		
		String query = "SELECT * " + 
				"FROM (SELECT ROWNUM RNUM, ORDER_NO, ORDER_DATE, SHIPPING_ADDRESS_NAME, RECIPIENT, CODE_POSTAL, ADDRESS, ADDRESS2, RECIPIENT_PHONE, REQUEST, SHIPPING_CHARGE, ORDER_PRODUCT_QUANTITY, ORDER_PRODUCT_SIZE, ORDER_TOTAL_PRICE, PAYMENT_TYPE, ORDER_PROGRESS, ORDER_DECISION, REVIEW_YN, ORDER_PRODUCT_BUNDLE, USER_NO, PRODUCT_DETAIL_NO " +
				"FROM (SELECT * FROM PRODUCT_ORDER " + 
				"ORDER BY ORDER_NO DESC))" + 
				"WHERE RNUM >= ? AND RNUM <= ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				ProductOrder order = new ProductOrder();
				
				order.setOrderNo(rset.getInt("ORDER_NO"));								//주문번호
				order.setOrderDate(rset.getDate("ORDER_DATE"));							//주문일
				order.setShippingAddressName(rset.getString("SHIPPING_ADDRESS_NAME"));	//배송지명
				order.setRecipient(rset.getString("RECIPIENT"));						//수령인
				order.setCodePostal(rset.getString("CODE_POSTAL"));						//우편번호
				order.setAddress(rset.getString("ADDRESS"));							//배송지주소1
				order.setAddress2(rset.getString("ADDRESS2"));							//배송지주소2
				order.setRecipientPhone(rset.getString("RECIPIENT_PHONE"));				//연락처
				order.setRequest(rset.getString("REQUEST"));							//배송지 요청사항
				order.setShippingCharge(rset.getInt("SHIPPING_CHARGE"));				//배송지
				order.setOrderProductQuantity(rset.getInt("ORDER_PRODUCT_QUANTITY"));	//상품수량
				order.setOrderProductSize(rset.getString("ORDER_PRODUCT_SIZE"));		//상품사이즈
				order.setOrderTotalPrice(rset.getInt("ORDER_TOTAL_PRICE"));				//총결제금액
				order.setPaymentType(rset.getString("PAYMENT_TYPE"));					//결제방식
				order.setOrderProgress(rset.getString("ORDER_PROGRESS"));				//주문진행상태
				order.setOrderDecision(rset.getString("ORDER_DECISION"));				//구매결정
				order.setReviewYn(rset.getString("REVIEW_YN"));							//리뷰여부
				order.setOrderProductBundle(rset.getInt("ORDER_PRODUCT_BUNDLE"));		//주문상품묶음
				order.setUserNo(rset.getInt("USER_NO"));								//사용자번호
				order.setProductDetailNo(rset.getInt("PRODUCT_DETAIL_NO"));				//상품상세번호
				
				list.add(order);				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	//주문내역리스트
	public ArrayList<ProductOrderList> selectProductOrderList(Connection conn, int currentPage, int limit) {
		ArrayList<ProductOrderList> list = new ArrayList<ProductOrderList>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		int startRow = (currentPage -1) * limit + 1;
		int endRow = startRow + limit - 1;
		
		String query = "SELECT * " + 
					   "FROM (SELECT ROWNUM RNUM, ORDER_NO, ORDER_PRODUCT_BUNDLE, ORDER_DATE, USER_NO, PRODUCT_NO, PRODUCT_DETAIL_NO, PRODUCT_IMAGE5, PRODUCT_NAME, PRODUCT_COLOR, ORDER_PRODUCT_SIZE, ORDER_PRODUCT_QUANTITY, PRODUCT_PRICE, DISCOUNT_RATE, ORDER_TOTAL_PRICE, ORDER_PROGRESS, ORDER_DECISION, REVIEW_YN " +
					   "FROM (SELECT ORDER_NO, ORDER_PRODUCT_BUNDLE, ORDER_DATE, USER_NO, PRODUCT_NO, PRODUCT_DETAIL_NO, PRODUCT_IMAGE5, PRODUCT_NAME, PRODUCT_COLOR, ORDER_PRODUCT_SIZE, ORDER_PRODUCT_QUANTITY, PRODUCT_PRICE, DISCOUNT_RATE, ORDER_TOTAL_PRICE, ORDER_PROGRESS, ORDER_DECISION, REVIEW_YN " +
					   "FROM PRODUCT_ORDER JOIN PRODUCT_DETAIL USING (PRODUCT_DETAIL_NO) JOIN PRODUCT USING (PRODUCT_NO) " +
					   "ORDER BY ORDER_PRODUCT_BUNDLE DESC, ORDER_NO ASC))" + 
					   "WHERE RNUM >= ? AND RNUM <= ?";
	
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				ProductOrderList polist = new ProductOrderList();
				
				polist.setOrderNo(rset.getInt("ORDER_NO"));
				polist.setOrderProductBundle(rset.getInt("ORDER_PRODUCT_BUNDLE"));
				polist.setOrderDate(rset.getDate("ORDER_DATE"));
				polist.setUserNo(rset.getInt("USER_NO"));
				polist.setProductNo(rset.getInt("PRODUCT_NO"));
				polist.setProductDetailNo(rset.getInt("PRODUCT_DETAIL_NO"));
				polist.setProductImage5(rset.getString("PRODUCT_IMAGE5"));
				polist.setProductName(rset.getString("PRODUCT_NAME"));
				polist.setProductColor(rset.getString("PRODUCT_COLOR"));
				polist.setOrderProductSize(rset.getString("ORDER_PRODUCT_SIZE"));
				polist.setOrderProductQuantity(rset.getInt("ORDER_PRODUCT_QUANTITY"));
				polist.setProductPrice(rset.getInt("PRODUCT_PRICE"));
				polist.setDiscountRate(rset.getDouble("DISCOUNT_RATE"));
				polist.setOrderTotalPrice(rset.getInt("ORDER_TOTAL_PRICE"));
				polist.setOrderProgress(rset.getString("ORDER_PROGRESS"));
				polist.setOrderDecision(rset.getString("ORDER_DECISION"));
				polist.setReviewYn(rset.getString("REVIEW_YN"));
				
				list.add(polist);				
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}

}

