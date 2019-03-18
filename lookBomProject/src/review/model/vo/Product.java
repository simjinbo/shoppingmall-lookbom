package review.model.vo;

public class Product implements java.io.Serializable{
	private final static long serialVersionUID = 3317L;
	
	private int orderNo;
	private int productNo;
	private int productDetailNo;
	private String sizeCategory;
	private String productColor;
	private String productName;
	private String productImage1;
	
	public Product() {}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProductImage1() {
		return productImage1;
	}

	public void setProductImage1(String productImage1) {
		this.productImage1 = productImage1;
	}

	public Product(int orderNo, int productNo, int productDetailNo, String sizeCategory, String productColor,
			String productName, String productImage1) {
		super();
		this.orderNo = orderNo;
		this.productNo = productNo;
		this.productDetailNo = productDetailNo;
		this.sizeCategory = sizeCategory;
		this.productColor = productColor;
		this.productName = productName;
		this.productImage1 = productImage1;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
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

	public String getSizeCategory() {
		return sizeCategory;
	}

	public void setSizeCategory(String sizeCategory) {
		this.sizeCategory = sizeCategory;
	}

	public String getProductColor() {
		return productColor;
	}

	public void setProductColor(String productColor) {
		this.productColor = productColor;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return this.orderNo + ", " + 
				this.productNo + ", " + 
				this.productDetailNo + ", " + 
				this.sizeCategory + ", " + 
				this.productColor + ", " +
				this.productName + ", " +
				this.productImage1;
	}
	
	
}
