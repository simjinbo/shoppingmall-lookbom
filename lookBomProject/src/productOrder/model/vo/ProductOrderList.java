package productOrder.model.vo;

import java.io.Serializable;
import java.sql.Date;

//주문내역 vo
public class ProductOrderList implements Serializable {
	private static final long serialVersionUID = 5024L;
	
	public ProductOrderList() {}
	
	private int orderNo;					//주문번호
	private int orderProductBundle;			//주문상품묶음
	private Date orderDate;					//주문일
	private int userNo;						//사용자번호
	private int productNo;					//상품번호
	private int productDetailNo;			//상품상세번호
	private String productImage5;			//상품이미지5
	private String productName;				//상품이름
	private String productColor;			//색상
	private String orderProductSize;		//상품사이즈
	private int orderProductQuantity;		//상품수량
	private int productPrice;				//판매가
	private double discountRate;			//할인률
	private int orderTotalPrice;			//총결제금액
	private String orderProgress;			//주문진행상태
	private String orderDecision;			//구매결정
	private String reviewYn;				//리뷰여부

	public ProductOrderList(int orderNo, int orderProductBundle, Date orderDate, int userNo, int productNo,
			int productDetailNo, String productImage5, String productName, String productColor, String orderProductSize,
			int orderProductQuantity, int productPrice, double discountRate, int orderTotalPrice,
			String orderProgress, String orderDecision, String reviewYn) {
		super();
		this.orderNo = orderNo;
		this.orderProductBundle = orderProductBundle;
		this.orderDate = orderDate;
		this.userNo = userNo;
		this.productNo = productNo;
		this.productDetailNo = productDetailNo;
		this.productImage5 = productImage5;
		this.productName = productName;
		this.productColor = productColor;
		this.orderProductSize = orderProductSize;
		this.orderProductQuantity = orderProductQuantity;
		this.productPrice = productPrice;
		this.discountRate = discountRate;
		this.orderTotalPrice = orderTotalPrice;
		this.orderProgress = orderProgress;
		this.orderDecision = orderDecision;
		this.reviewYn = reviewYn;
	}

	public int getOrderNo() {
		return orderNo;
	}



	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}



	public int getOrderProductBundle() {
		return orderProductBundle;
	}



	public void setOrderProductBundle(int orderProductBundle) {
		this.orderProductBundle = orderProductBundle;
	}



	public Date getOrderDate() {
		return orderDate;
	}



	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}



	public int getUserNo() {
		return userNo;
	}



	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}



	public int getProductNo() {
		return productNo;
	}



	public void setProductNo(int productNo) {
		this.productNo = productNo;
	}



	public int getProductDetailNo() {
		return productDetailNo;
	}



	public void setProductDetailNo(int productDetailNo) {
		this.productDetailNo = productDetailNo;
	}



	public String getProductImage5() {
		return productImage5;
	}



	public void setProductImage5(String productImage5) {
		this.productImage5 = productImage5;
	}



	public String getProductName() {
		return productName;
	}



	public void setProductName(String productName) {
		this.productName = productName;
	}



	public String getProductColor() {
		return productColor;
	}



	public void setProductColor(String productColor) {
		this.productColor = productColor;
	}



	public String getOrderProductSize() {
		return orderProductSize;
	}



	public void setOrderProductSize(String orderProductSize) {
		this.orderProductSize = orderProductSize;
	}



	public int getOrderProductQuantity() {
		return orderProductQuantity;
	}



	public void setOrderProductQuantity(int orderProductQuantity) {
		this.orderProductQuantity = orderProductQuantity;
	}



	public int getProductPrice() {
		return productPrice;
	}



	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}



	public double getDiscountRate() {
		return discountRate;
	}



	public void setDiscountRate(double discountRate) {
		this.discountRate = discountRate;
	}



	public int getOrderTotalPrice() {
		return orderTotalPrice;
	}



	public void setOrderTotalPrice(int orderTotalPrice) {
		this.orderTotalPrice = orderTotalPrice;
	}



	public String getOrderProgress() {
		return orderProgress;
	}



	public void setOrderProgress(String orderProgress) {
		this.orderProgress = orderProgress;
	}



	public String getOrderDecision() {
		return orderDecision;
	}



	public void setOrderDecision(String orderDecision) {
		this.orderDecision = orderDecision;
	}



	public String getReviewYn() {
		return reviewYn;
	}



	public void setReviewYn(String reviewYn) {
		this.reviewYn = reviewYn;
	}



	public static long getSerialversionuid() {
		return serialVersionUID;
	}



	@Override
	public String toString() {
		return this.orderNo + ", " + 
			   this.orderProductBundle + ", " + 
			   this.orderDate + ", " + 
			   this.userNo + ", " + 
			   this.productNo + ", " + 
			   this.productDetailNo + ", " + 
			   this.productImage5 + ", " + 
			   this.productName + ", " +  
			   this.productColor + ", " + 
			   this.orderProductSize + ", " + 
			   this.orderProductQuantity + ", " + 
			   this.productPrice + ", " + 
			   this.discountRate + ", " + 
			   this.orderTotalPrice + ", " + 
			   this.orderProgress + ", " + 
			   this.orderDecision + ", " + 
			   this.reviewYn;
	}	
}


/*ORDER_NO, 
ORDER_PRODUCT_BUNDLE, 
ORDER_DATE, 
PRODUCT_NO, 
PRODUCT_DETAIL_NO, 
PRODUCT_IMAGE5, 
PRODUCT_NAME, 
PRODUCT_COLOR, 
ORDER_PRODUCT_SIZE, 
ORDER_PRODUCT_QUANTITY, 
PRODUCT_PRICE, 
DISCOUNT_RATE, 
ORDER_TOTAL_PRICE, 
ORDER_PROGRESS, 
ORDER_DECISION, 
REVIEW_YN*/