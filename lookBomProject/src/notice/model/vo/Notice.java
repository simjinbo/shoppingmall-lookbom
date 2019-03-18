package notice.model.vo;

import java.sql.Date;

public class Notice implements java.io.Serializable{
	private static final long serialVersionUID = 3311L;
	
	private int noticeNo;
	private String noticeTitle;
	private String noticeContents;
	private Date noticeWriteDate;
	private int noticeViews;
	private String noticeImage1;
	private String noticeImage2;
	private String noticeImage3;
	
	public Notice() {}

	public Notice(int noticeNo, String noticeTitle, String noticeContents, Date noticeWriteDate, int noticeViews,
			String noticeImage1, String noticeImage2, String noticeImage3) {
		super();
		this.noticeNo = noticeNo;
		this.noticeTitle = noticeTitle;
		this.noticeContents = noticeContents;
		this.noticeWriteDate = noticeWriteDate;
		this.noticeViews = noticeViews;
		this.noticeImage1 = noticeImage1;
		this.noticeImage2 = noticeImage2;
		this.noticeImage3 = noticeImage3;
	}

	public int getNoticeNo() {
		return noticeNo;
	}

	public void setNoticeNo(int noticeNo) {
		this.noticeNo = noticeNo;
	}

	public String getNoticeTitle() {
		return noticeTitle;
	}

	public void setNoticeTitle(String noticeTitle) {
		this.noticeTitle = noticeTitle;
	}

	public String getNoticeContents() {
		return noticeContents;
	}

	public void setNoticeContents(String noticeContents) {
		this.noticeContents = noticeContents;
	}

	public Date getNoticeWriteDate() {
		return noticeWriteDate;
	}

	public void setNoticeWriteDate(Date noticeWriteDate) {
		this.noticeWriteDate = noticeWriteDate;
	}

	public int getNoticeViews() {
		return noticeViews;
	}

	public void setNoticeViews(int noticeViews) {
		this.noticeViews = noticeViews;
	}

	public String getNoticeImage1() {
		return noticeImage1;
	}

	public void setNoticeImage1(String noticeImage1) {
		this.noticeImage1 = noticeImage1;
	}

	public String getNoticeImage2() {
		return noticeImage2;
	}

	public void setNoticeImage2(String noticeImage2) {
		this.noticeImage2 = noticeImage2;
	}

	public String getNoticeImage3() {
		return noticeImage3;
	}

	public void setNoticeImage3(String noticeImage3) {
		this.noticeImage3 = noticeImage3;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return this.noticeNo + ", " + 
		this.noticeTitle + ", " + 
		this.noticeContents + ", " + 
		this.noticeWriteDate + ", " + 
		this.noticeViews + ", " + 
		this.noticeImage1 + ", " + 
		this.noticeImage2 + ", " + 
		this.noticeImage3;
	}
	
}
