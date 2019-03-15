package productOrder.model.vo;

import java.io.Serializable;
import java.sql.Date;

public class ProductOrder implements Serializable {
	private static final long serialVersionUID = 5023L;
	
	private int orderNo;					//주문번호
	private Date orderDate;					//주문일
	private String shippingAddressName;		//배송지명
	private String recipient;				//수령인
	private String codePostal;				//우편번호
	private String address;					//배송지주소1
	private String address2;				//배송지주소2
	private String recipientPhone;			//연락처
	private String request;					//배송지 요청사항
	private int shippingCharge;				//배송비
	private int orderProductQuantity;		//상품수량
	private String orderProductSize;		//상품사이즈
	private int orderTotalPrice;			//총결제금액
	private String paymentType;				//결제방식
	private String orderProgress;			//주문진행상태
	private String orderDecision;			//구매결정
	private String reviewYn;				//리뷰여부
	private int orderProductBundle;			//주문상품묶음
	private int userNo;						//사용자번호
	private int productDetailNo;			//상품상세번호
	
	public ProductOrder() {}
	
	public ProductOrder(int orderNo, Date orderDate, String shippingAddressName, String recipient, String codePostal,
			String address, String address2, String recipientPhone, String request, int shippingCharge,
			int orderProductQuantity, String orderProductSize, int orderTotalPrice, String paymentType,
			String orderProgress, String orderDecision, String reviewYn, int orderProductBundle, int userNo,
			int productDetailNo) {
		super();
		this.orderNo = orderNo;
		this.orderDate = orderDate;
		this.shippingAddressName = shippingAddressName;
		this.recipient = recipient;
		this.codePostal = codePostal;
		this.address = address;
		this.address2 = address2;
		this.recipientPhone = recipientPhone;
		this.request = request;
		this.shippingCharge = shippingCharge;
		this.orderProductQuantity = orderProductQuantity;
		this.orderProductSize = orderProductSize;
		this.orderTotalPrice = orderTotalPrice;
		this.paymentType = paymentType;
		this.orderProgress = orderProgress;
		this.orderDecision = orderDecision;
		this.reviewYn = reviewYn;
		this.orderProductBundle = orderProductBundle;
		this.userNo = userNo;
		this.productDetailNo = productDetailNo;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public String getShippingAddressName() {
		return shippingAddressName;
	}

	public void setShippingAddressName(String shippingAddressName) {
		this.shippingAddressName = shippingAddressName;
	}

	public String getRecipient() {
		return recipient;
	}

	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}

	public String getCodePostal() {
		return codePostal;
	}

	public void setCodePostal(String codePostal) {
		this.codePostal = codePostal;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getRecipientPhone() {
		return recipientPhone;
	}

	public void setRecipientPhone(String recipientPhone) {
		this.recipientPhone = recipientPhone;
	}

	public String getRequest() {
		return request;
	}

	public void setRequest(String request) {
		this.request = request;
	}

	public int getShippingCharge() {
		return shippingCharge;
	}

	public void setShippingCharge(int shippingCharge) {
		this.shippingCharge = shippingCharge;
	}

	public int getOrderProductQuantity() {
		return orderProductQuantity;
	}

	public void setOrderProductQuantity(int orderProductQuantity) {
		this.orderProductQuantity = orderProductQuantity;
	}

	public String getOrderProductSize() {
		return orderProductSize;
	}

	public void setOrderProductSize(String orderProductSize) {
		this.orderProductSize = orderProductSize;
	}

	public int getOrderTotalPrice() {
		return orderTotalPrice;
	}

	public void setOrderTotalPrice(int orderTotalPrice) {
		this.orderTotalPrice = orderTotalPrice;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
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

	public int getOrderProductBundle() {
		return orderProductBundle;
	}

	public void setOrderProductBundle(int orderProductBundle) {
		this.orderProductBundle = orderProductBundle;
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
		return this.orderNo + ", " + 
			   this.orderDate + ", " + 
			   this.shippingAddressName + ", " + 
			   this.recipient + ", " + 
			   this.codePostal + ", " + 
			   this.address + ", " + 
			   this.address2 + ", " + 
			   this.recipientPhone + ", " + 
			   this.request + ", " + 
			   this.shippingCharge + ", " + 
			   this.orderProductQuantity + ", " + 
			   this.orderProductSize + ", " + 
			   this.orderTotalPrice + ", " + 
			   this.paymentType + ", " + 
			   this.orderProgress + ", " + 
			   this.orderDecision + ", " + 
			   this.reviewYn + ", " + 
			   this.orderProductBundle + ", " + 
			   this.userNo + ", " + 
			   this.productDetailNo;
	}
	
	
}

