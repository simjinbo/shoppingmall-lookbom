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
	private int orderNo;				//주문번호
	
	public CerList() {}
	
	public CerList(int receptionNo, Date receptionDate, String receptionType, String receptionProgress,
			String receptionTitle, String receptionContent, int orderNo) {
		super();
		this.receptionNo = receptionNo;
		this.receptionDate = receptionDate;
		this.receptionType = receptionType;
		this.receptionProgress = receptionProgress;
		this.receptionTitle = receptionTitle;
		this.receptionContent = receptionContent;
		this.orderNo = orderNo;
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
		return this.receptionNo + ", " + 
			   this.receptionDate + ", " +
			   this.receptionType + ", " +
			   this.receptionProgress + ", " +
			   this.receptionTitle + ", " +
			   this.receptionContent + ", " +
			   this.orderNo;
	}
	
	
	
	
}
