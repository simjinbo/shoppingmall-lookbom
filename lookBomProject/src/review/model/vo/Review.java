package review.model.vo;

import java.sql.Date;

public class Review implements java.io.Serializable{
	private static final long serialVersionUID = 3314L;
	
	private int reviewNo;
	private Date reviewWriteDate;
	private String reviewContents;
	private int reviewHeight;
	private int reviewWeight;
	private int reviewLike;
	private int reviewViews;
	private String reviewImage1;
	private String reviewImage2;
	private String reviewImage3;
	private int userNo;
	private int productDetailNo;
	
	public Review() {}

	public Review(int reviewNo, Date reviewWriteDate, String reviewContents, int reviewHeight, int reviewWeight,
			int reviewLike, int reviewViews, String reviewImage1, String reviewImage2, String reviewImage3, int userNo,
			int productDetailNo) {
		super();
		this.reviewNo = reviewNo;
		this.reviewWriteDate = reviewWriteDate;
		this.reviewContents = reviewContents;
		this.reviewHeight = reviewHeight;
		this.reviewWeight = reviewWeight;
		this.reviewLike = reviewLike;
		this.reviewViews = reviewViews;
		this.reviewImage1 = reviewImage1;
		this.reviewImage2 = reviewImage2;
		this.reviewImage3 = reviewImage3;
		this.userNo = userNo;
		this.productDetailNo = productDetailNo;
	}

	public int getReviewNo() {
		return reviewNo;
	}

	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}

	public Date getReviewWriteDate() {
		return reviewWriteDate;
	}

	public void setReviewWriteDate(Date reviewWriteDate) {
		this.reviewWriteDate = reviewWriteDate;
	}

	public String getReviewContents() {
		return reviewContents;
	}

	public void setReviewContents(String reviewContents) {
		this.reviewContents = reviewContents;
	}

	public int getReviewHeight() {
		return reviewHeight;
	}

	public void setReviewHeight(int reviewHeight) {
		this.reviewHeight = reviewHeight;
	}

	public int getReviewWeight() {
		return reviewWeight;
	}

	public void setReviewWeight(int reviewWeight) {
		this.reviewWeight = reviewWeight;
	}

	public int getReviewLike() {
		return reviewLike;
	}

	public void setReviewLike(int reviewLike) {
		this.reviewLike = reviewLike;
	}

	public int getReviewViews() {
		return reviewViews;
	}

	public void setReviewViews(int reviewViews) {
		this.reviewViews = reviewViews;
	}

	public String getReviewImage1() {
		return reviewImage1;
	}

	public void setReviewImage1(String reviewImage1) {
		this.reviewImage1 = reviewImage1;
	}

	public String getReviewImage2() {
		return reviewImage2;
	}

	public void setReviewImage2(String reviewImage2) {
		this.reviewImage2 = reviewImage2;
	}

	public String getReviewImage3() {
		return reviewImage3;
	}

	public void setReviewImage3(String reviewImage3) {
		this.reviewImage3 = reviewImage3;
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
		return this.reviewNo + ", " + 
				this.reviewWriteDate + ", " + 
				this.reviewContents + ", " + 
				this.reviewHeight + ", " + 
				this.reviewWeight + ", " + 
				this.reviewLike + ", " + 
				this.reviewViews + ", " + 
				this.reviewImage1 + ", " + 
				this.reviewImage2 + ", " + 
				this.reviewImage3 + ", " + 
				this.userNo + ", " + 
				this.productDetailNo;
	}
	
	
}
