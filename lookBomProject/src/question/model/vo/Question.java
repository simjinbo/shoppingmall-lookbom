package question.model.vo;

import java.sql.Date;

public class Question implements java.io.Serializable{
	private static final long serialVersionUID = 3313L;
	
	private int questionNo;
	private String questionCategory;
	private String questionTitle;
	private String questionContents;
	private Date questionWriteDate;
	private String questionReplyContents;
	private String questionImage1;
	private String questionImage2;
	private String questionImage3;
	private int userNo;
	private int orderNo;
	
	public Question() {}

	public Question(int questionNo, String questionCategory, String questionTitle, String questionContents,
			Date questionWriteDate, String questionReplyContents, String questionImage1, String questionImage2,
			String questionImage3, int userNo, int orderNo) {
		super();
		this.questionNo = questionNo;
		this.questionCategory = questionCategory;
		this.questionTitle = questionTitle;
		this.questionContents = questionContents;
		this.questionWriteDate = questionWriteDate;
		this.questionReplyContents = questionReplyContents;
		this.questionImage1 = questionImage1;
		this.questionImage2 = questionImage2;
		this.questionImage3 = questionImage3;
		this.userNo = userNo;
		this.orderNo = orderNo;
	}

	public int getQuestionNo() {
		return questionNo;
	}

	public void setQuestionNo(int questionNo) {
		this.questionNo = questionNo;
	}

	public String getQuestionCategory() {
		return questionCategory;
	}

	public void setQuestionCategory(String questionCategory) {
		this.questionCategory = questionCategory;
	}

	public String getQuestionTitle() {
		return questionTitle;
	}

	public void setQuestionTitle(String questionTitle) {
		this.questionTitle = questionTitle;
	}

	public String getQuestionContents() {
		return questionContents;
	}

	public void setQuestionContents(String questionContents) {
		this.questionContents = questionContents;
	}

	public Date getQuestionWriteDate() {
		return questionWriteDate;
	}

	public void setQuestionWriteDate(Date questionWriteDate) {
		this.questionWriteDate = questionWriteDate;
	}

	public String getQuestionReplyContents() {
		return questionReplyContents;
	}

	public void setQuestionReplyContents(String questionReplyContents) {
		this.questionReplyContents = questionReplyContents;
	}

	public String getQuestionImage1() {
		return questionImage1;
	}

	public void setQuestionImage1(String questionImage1) {
		this.questionImage1 = questionImage1;
	}

	public String getQuestionImage2() {
		return questionImage2;
	}

	public void setQuestionImage2(String questionImage2) {
		this.questionImage2 = questionImage2;
	}

	public String getQuestionImage3() {
		return questionImage3;
	}

	public void setQuestionImage3(String questionImage3) {
		this.questionImage3 = questionImage3;
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

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return this.questionNo + ", " + 
				this.questionCategory + ", " + 
				this.questionTitle + ", " + 
				this.questionContents + ", " + 
				this.questionWriteDate + ", " + 
				this.questionReplyContents + ", " + 
				this.questionImage1 + ", " + 
				this.questionImage2 + ", " + 
				this.questionImage3 + ", " + 
				this.userNo + ", " + 
				this.orderNo;
	}
	
	
}
