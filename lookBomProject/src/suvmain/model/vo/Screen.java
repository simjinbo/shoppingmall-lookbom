package screen.model.vo;

import java.io.Serializable;

public class Screen implements Serializable {
	private static final long serialVersionUID = 332134L;
	
	private int bannerNo;
	private String bannerUrl;
	private String bannerImg;
	private int bannerDivision;
	private String adContents;
	
	public Screen() {}

	public Screen(int bannerNo, String bannerUrl, String bannerImg, int bannerDivision, String adContents) {
		super();
		this.bannerNo = bannerNo;
		this.bannerUrl = bannerUrl;
		this.bannerImg = bannerImg;
		this.bannerDivision = bannerDivision;
		this.adContents = adContents;
	}

	public int getBannerNo() {
		return bannerNo;
	}

	public void setBannerNo(int bannerNo) {
		this.bannerNo = bannerNo;
	}

	public String getBannerUrl() {
		return bannerUrl;
	}

	public void setBannerUrl(String bannerUrl) {
		this.bannerUrl = bannerUrl;
	}

	public String getBannerImg() {
		return bannerImg;
	}

	public void setBannerImg(String bannerImg) {
		this.bannerImg = bannerImg;
	}

	public int getBannerDivision() {
		return bannerDivision;
	}

	public void setBannerDivision(int bannerDivision) {
		this.bannerDivision = bannerDivision;
	}

	public String getAdContents() {
		return adContents;
	}

	public void setAdContents(String adContents) {
		this.adContents = adContents;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	@Override
	public String toString() {
		return this.bannerNo + ", " +
				this.bannerUrl + ", " + 
				this.bannerImg + ", " + 
				this.bannerImg + ", " +
				this.adContents;
	}
	


}
