package cerlist.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class CerList implements Serializable {
	private static final long serialVersionUID = 5020L;
	
	private int receptionNo;			//접수번호
	private Date receptionDate;			//접수일
	private String receptionType;		//접수종류
	private String receptionProgress;	//접수진행상태
	private String receptionTitle;		//접수제목
	private String receptionContent;	//접수내용
	private int userNo;					//고객번호
	private int orderNo;				//주문번호
	private int orderProductBundle;		//주문상품묶음
	private Date orderDate;				//주문일
	private String productName;			//상품이름
	private String productColor;		//색상
	private String orderProductSize;	//상품사이즈
	private int orderProductQuantity;	//상품수량
	private int productPrice;			//판매가
	private double discountRate;		//할인률
	
	public CerList() {}
	
	public CerList(int receptionNo, Date receptionDate, String receptionType, String receptionProgress,
			String receptionTitle, String receptionContent, int userNo, int orderNo, int orderProductBundle,
			Date orderDate, String productName, String productColor, String orderProductSize, int orderProductQuantity,
			int productPrice, double discountRate) {
		super();
		this.receptionNo = receptionNo;
		this.receptionDate = receptionDate;
		this.receptionType = receptionType;
		this.receptionProgress = receptionProgress;
		this.receptionTitle = receptionTitle;
		this.receptionContent = receptionContent;
		this.userNo = userNo;
		this.orderNo = orderNo;
		this.orderProductBundle = orderProductBundle;
		this.orderDate = orderDate;
		this.productName = productName;
		this.productColor = productColor;
		this.orderProductSize = orderProductSize;
		this.orderProductQuantity = orderProductQuantity;
		this.productPrice = productPrice;
		this.discountRate = discountRate;
	}

	public int getReceptionNo() {
		return receptionNo;
	}

	public void setReceptionNo(int receptionNo) {
		this.receptionNo = receptionNo;
	}

	public Date getReceptionDate() {
		return receptionDate;
	}

	public void setReceptionDate(Date receptionDate) {
		this.receptionDate = receptionDate;
	}

	public String getReceptionType() {
		return receptionType;
	}

	public void setReceptionType(String receptionType) {
		this.receptionType = receptionType;
	}

	public String getReceptionProgress() {
		return receptionProgress;
	}

	public void setReceptionProgress(String receptionProgress) {
		this.receptionProgress = receptionProgress;
	}

	public String getReceptionTitle() {
		return receptionTitle;
	}

	public void setReceptionTitle(String receptionTitle) {
		this.receptionTitle = receptionTitle;
	}

	public String getReceptionContent() {
		return receptionContent;
	}

	public void setReceptionContent(String receptionContent) {
		this.receptionContent = receptionContent;
	}

	public int getUserNo() {
		return userNo;
	}

	public void setUserNo(int userNo) {
		this.userNo = userNo;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return this.receptionNo + ", " + 
			   this.receptionDate + ", " +
			   this.receptionType + ", " +
			   this.receptionProgress + ", " +
			   this.receptionTitle + ", " +
			   this.receptionContent + ", " +
			   this.userNo + ", " +
			   this.orderNo + ", " +
			   this.orderProductBundle + ", " +
			   this.orderDate + ", " +
			   this.productName + ", " +
			   this.productColor + ", " +
			   this.orderProductSize + ", " +
			   this.orderProductQuantity + ", " +
			   this.productPrice + ", " +
			   this.discountRate;
	}
}
