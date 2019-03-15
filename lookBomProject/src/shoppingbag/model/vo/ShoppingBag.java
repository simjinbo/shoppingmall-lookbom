package shoppingbag.model.vo;

import java.io.Serializable;

public class ShoppingBag implements Serializable {
	private static final long serialVersionUID = 5025L;
	
	private int sbNo;				//장바구니번호
	private int sbTotalPrice;		//총결제금액
	private int sbProductQuantity;	//상품별수량
	private String sbProductSize;	//상품별사이즈
	private int sbProductPrice;		//상품별가격
	private int sbProductBundle;	//장바구니상품 묶음
	private int userNo;				//사용자번호
	private int productDetailNo;	//상품상세번호
	
	public ShoppingBag() {}
	
	public ShoppingBag(int sbNo, int sbTotalPrice, int sbProductQuantity, String sbProductSize, int sbProductPrice,
			int sbProductBundle, int userNo, int productDetailNo) {
		super();
		this.sbNo = sbNo;
		this.sbTotalPrice = sbTotalPrice;
		this.sbProductQuantity = sbProductQuantity;
		this.sbProductSize = sbProductSize;
		this.sbProductPrice = sbProductPrice;
		this.sbProductBundle = sbProductBundle;
		this.userNo = userNo;
		this.productDetailNo = productDetailNo;
	}

	public int getSbNo() {
		return sbNo;
	}

	public void setSbNo(int sbNo) {
		this.sbNo = sbNo;
	}

	public int getSbTotalPrice() {
		return sbTotalPrice;
	}

	public void setSbTotalPrice(int sbTotalPrice) {
		this.sbTotalPrice = sbTotalPrice;
	}

	public int getSbProductQuantity() {
		return sbProductQuantity;
	}

	public void setSbProductQuantity(int sbProductQuantity) {
		this.sbProductQuantity = sbProductQuantity;
	}

	public String getSbProductSize() {
		return sbProductSize;
	}

	public void setSbProductSize(String sbProductSize) {
		this.sbProductSize = sbProductSize;
	}

	public int getSbProductPrice() {
		return sbProductPrice;
	}

	public void setSbProductPrice(int sbProductPrice) {
		this.sbProductPrice = sbProductPrice;
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

	public int getProductDetailNo() {
		return productDetailNo;
	}

	public void setProductDetailNo(int productDetailNo) {
		this.productDetailNo = productDetailNo;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	@Override
	public String toString() {
		return this.sbNo + " , " + 
			   this.sbTotalPrice + " , " +
			   this.sbProductQuantity + " , " + 
			   this.sbProductSize + " , " + 
			   this.sbProductPrice + " , " + 
			   this.sbProductBundle + " , " + 
			   this.userNo + " , " + 
			   this.productDetailNo;
	}
	
	
	
}

