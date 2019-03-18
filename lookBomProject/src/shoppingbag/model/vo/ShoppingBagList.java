package shoppingbag.model.vo;

import java.io.Serializable;

public class ShoppingBagList implements Serializable {
	private static final long serialVersionUID = 5027L;
	
	private int sbNo;				//장바구니번호
	private int sbProductBundle;	//장바구니상품 묶음
	private int userNo;				//사용자번호
	private int productNo;			//상품번호
	private int productDetailNo;	//상품상세번호
	private String productName;		//상품이름
	private String productImage5;	//상품이미지5
	private String productColor;	//색상
	private String sbProductSize;	//상품별사이즈
	private double discountRate;	//할인율
	private int productPrice;		//상품가격
	private int sbProductQuantity;	 //상품별수량
	private int sbTotalPrice;		//총결제금액
		
	public ShoppingBagList() {}

	public ShoppingBagList(int sbNo, int sbProductBundle, int userNo, int productNo, int productDetailNo,
			String productName, String productImage5, String productColor, String sbProductSize, double discountRate,
			int productPrice, int sbProductQuantity, int sbTotalPrice) {
		super();
		this.sbNo = sbNo;
		this.sbProductBundle = sbProductBundle;
		this.userNo = userNo;
		this.productNo = productNo;
		this.productDetailNo = productDetailNo;
		this.productName = productName;
		this.productImage5 = productImage5;
		this.productColor = productColor;
		this.sbProductSize = sbProductSize;
		this.discountRate = discountRate;
		this.productPrice = productPrice;
		this.sbProductQuantity = sbProductQuantity;
		this.sbTotalPrice = sbTotalPrice;
	}

	public int getSbNo() {
		return sbNo;
	}

	public void setSbNo(int sbNo) {
		this.sbNo = sbNo;
	}

	public int getSbProductBundle() {
		return sbProductBundle;
	}

	public void setSbProductBundle(int sbProductBundle) {
		this.sbProductBundle = sbProductBundle;
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

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductImage5() {
		return productImage5;
	}

	public void setProductImage5(String productImage5) {
		this.productImage5 = productImage5;
	}

	public String getProductColor() {
		return productColor;
	}

	public void setProductColor(String productColor) {
		this.productColor = productColor;
	}

	public String getSbProductSize() {
		return sbProductSize;
	}

	public void setSbProductSize(String sbProductSize) {
		this.sbProductSize = sbProductSize;
	}

	public double getDiscountRate() {
		return discountRate;
	}

	public void setDiscountRate(double discountRate) {
		this.discountRate = discountRate;
	}

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public int getSbProductQuantity() {
		return sbProductQuantity;
	}

	public void setSbProductQuantity(int sbProductQuantity) {
		this.sbProductQuantity = sbProductQuantity;
	}

	public int getSbTotalPrice() {
		return sbTotalPrice;
	}

	public void setSbTotalPrice(int sbTotalPrice) {
		this.sbTotalPrice = sbTotalPrice;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return this.sbNo + ", " + 
			   this.sbProductBundle + ", " + 
			   this.userNo + ", " + 
			   this.productNo + ", " + 
			   this.productDetailNo + ", " + 
			   this.productName + ", " + 
			   this.productImage5 + ", " + 
			   this.productColor + ", " + 
			   this.sbProductSize + ", " + 
			   this.discountRate + ", " + 
			   this.productPrice + ", " + 
			   this.sbProductQuantity + ", " + 
			   this.sbTotalPrice;
	}
}
