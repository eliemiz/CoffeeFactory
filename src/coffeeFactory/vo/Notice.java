package coffeeFactory.vo;
/*
	NOTICE_ID NUMBER,
	REGIST_DATE DATE,
	TITLE VARCHAR2(300),
	CONTENT VARCHAR2(4000),
	IMAGE VARCHAR2(300),
	VIEWS NUMBER, 
 */

import java.util.Date;

public class Notice {
	private int notice_id;
	private Date regist_date;
	private String regist_date_s;
	private String title;
	private String content;
	private String image;
	private int views;
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return "Notice [notice_id=" + notice_id + ", regist_date=" + regist_date + ", regist_date_s=" + regist_date_s
				+ ", title=" + title + ", content=" + content + ", image=" + image + ", views=" + views + "]";
	}

	public Notice(int notice_id, Date regist_date, String title, String content, String image, int views) {
		super();
		this.notice_id = notice_id;
		this.regist_date = regist_date;
		this.title = title;
		this.content = content;
		this.image = image;
		this.views = views;
	}
	public Notice(int notice_id, String regist_date_s, String title, String content, String image, int views) {
		super();
		this.notice_id = notice_id;
		this.regist_date_s = regist_date_s;
		this.title = title;
		this.content = content;
		this.image = image;
		this.views = views;
	}
	/*
	public Notice(int notice_id, String title, String content, String image) {
		super();
		this.notice_id = notice_id;
		this.title = title;
		this.content = content;
		this.image = image;
	}

	public Notice(String title, String content, String image, int views) {
		super();
		this.title = title;
		this.content = content;
		this.image = image;
		this.views = views;
	}
*/
	public int getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(int notice_id) {
		this.notice_id = notice_id;
	}
	public Date getRegist_date() {
		return regist_date;
	}
	public void setRegist_date(Date regist_date) {
		this.regist_date = regist_date;
	}
	public String getRegist_date_s() {
		return regist_date_s;
	}
	public void setRegist_date_s(String regist_date_s) {
		this.regist_date_s = regist_date_s;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public int getViews() {
		return views;
	}
	public void setViews(int views) {
		this.views = views;
	}
}
