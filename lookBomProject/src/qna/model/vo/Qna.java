package qna.model.vo;

import java.sql.Date;

public class Qna implements java.io.Serializable {
	private static final long serialVersionUID = 3312L;
	
	private int qnaNo;
	private String qnaCategory;
	private String qnaTitle;
	private String qnaContents;
	private Date qnaWriteDate;
	private String qnaSecret;
	private String qnaReplyContents;
	private int userNo;
	private int productDetailNo;
	
	public Qna() {}

	public Qna(int qnaNo, String qnaCategory, String qnaTitle, String qnaContents, Date qnaWriteDate, String qnaSecret,
			String qnaReplyContents, int userNo, int productDetailNo) {
		super();
		this.qnaNo = qnaNo;
		this.qnaCategory = qnaCategory;
		this.qnaTitle = qnaTitle;
		this.qnaContents = qnaContents;
		this.qnaWriteDate = qnaWriteDate;
		this.qnaSecret = qnaSecret;
		this.qnaReplyContents = qnaReplyContents;
		this.userNo = userNo;
		this.productDetailNo = productDetailNo;
	}

	public int getQnaNo() {
		return qnaNo;
	}

	public void setQnaNo(int qnaNo) {
		this.qnaNo = qnaNo;
	}

	public String getQnaCategory() {
		return qnaCategory;
	}

	public void setQnaCategory(String qnaCategory) {
		this.qnaCategory = qnaCategory;
	}

	public String getQnaTitle() {
		return qnaTitle;
	}

	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}

	public String getQnaContents() {
		return qnaContents;
	}

	public void setQnaContents(String qnaContents) {
		this.qnaContents = qnaContents;
	}

	public Date getQnaWriteDate() {
		return qnaWriteDate;
	}

	public void setQnaWriteDate(Date qnaWriteDate) {
		this.qnaWriteDate = qnaWriteDate;
	}

	public String getQnaSecret() {
		return qnaSecret;
	}

	public void setQnaSecret(String qnaSecret) {
		this.qnaSecret = qnaSecret;
	}

	public String getQnaReplyContents() {
		return qnaReplyContents;
	}

	public void setQnaReplyContents(String qnaReplyContents) {
		this.qnaReplyContents = qnaReplyContents;
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
		return this.qnaNo + ", " + 
				this.qnaCategory + ", " + 
				this.qnaTitle + ", " + 
				this.qnaContents + ", " + 
				this.qnaWriteDate + ", " + 
				this.qnaSecret + ", " + 
				this.qnaReplyContents + ", " + 
				this.userNo + ", " + 
				this.productDetailNo;
	}
	
	

}
