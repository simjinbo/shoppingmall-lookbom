package reviewReply.model.vo;

public class ReviewReply implements java.io.Serializable{
	private static final long serialVersionUID = 3315L;
	
	private int reviewReplyNo;
	private String reviewReplyContents;
	private int reviewNo;
	private int userNo;
	
	public ReviewReply() {}
	
	public ReviewReply(int reviewReplyNo, String reviewReplyContents, int reviewNo, int userNo) {
		super();
		this.reviewReplyNo = reviewReplyNo;
		this.reviewReplyContents = reviewReplyContents;
		this.reviewNo = reviewNo;
		this.userNo = userNo;
	}
	public int getReviewReplyNo() {
		return reviewReplyNo;
	}
	public void setReviewReplyNo(int reviewReplyNo) {
		this.reviewReplyNo = reviewReplyNo;
	}
	public String getReviewReplyContents() {
		return reviewReplyContents;
	}
	public void setReviewReplyContents(String reviewReplyContents) {
		this.reviewReplyContents = reviewReplyContents;
	}
	public int getReviewNo() {
		return reviewNo;
	}
	public void setReviewNo(int reviewNo) {
		this.reviewNo = reviewNo;
	}
	public int getUserNo() {
		return userNo;
	}
	public void setUserNo(int userNo) {
		this.userNo = userNo;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return this.reviewReplyNo + ", " + 
				this.reviewReplyContents + ", " + 
				this.reviewNo + ", " + 
				this.userNo;
	}
}
