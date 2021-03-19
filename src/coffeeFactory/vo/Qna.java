package coffeeFactory.vo;

import java.util.Date;

public class Qna {
	private int qna_id;
	private int product_id;
	private int account_id;
	private Date regist_date;
	private String regist_date_s;
	private String title;
	private String content;
	private String reply_content;
	public Qna() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public String toString() {
		return "Qna [qna_id=" + qna_id + ", product_id=" + product_id + ", account_id=" + account_id + ", regist_date=" + regist_date
				+ ", regist_date_s=" + regist_date_s + ", title=" + title + ", content=" + content + ", reply_content="
				+ reply_content + "]";
	}

	public Qna(int qna_id, int product_id, int account_id, Date regist_date, String title, String content, String reply_content) {
		super();
		this.qna_id = qna_id;
		this.product_id = product_id;
		this.account_id = account_id;
		this.regist_date = regist_date;
		this.title = title;
		this.content = content;
		this.reply_content = reply_content;
	}
	
	public Qna(int qna_id, int product_id, int account_id, String regist_date_s, String title, String content,
			String reply_content) {
		super();
		this.qna_id = qna_id;
		this.product_id = product_id;
		this.account_id = account_id;
		this.regist_date_s = regist_date_s;
		this.title = title;
		this.content = content;
		this.reply_content = reply_content;
	}

	public Qna(String reply_content, int qna_id) {
		super();
		this.reply_content = reply_content;
		this.qna_id = qna_id;
	}
	
	public Qna(int qna_id, String reply_content) {
		super();
		this.qna_id = qna_id;
		this.reply_content = reply_content;
	}

	public Qna(int product_id, int account_id, String regist_date_s, String title, String content,
			String reply_content) {
		super();
		this.product_id = product_id;
		this.account_id = account_id;
		this.regist_date_s = regist_date_s;
		this.title = title;
		this.content = content;
		this.reply_content = reply_content;
	}
	
	public Qna(int product_id, int account_id, String title, String content, String reply_content) {
		super();
		this.product_id = product_id;
		this.account_id = account_id;
		this.title = title;
		this.content = content;
		this.reply_content = reply_content;
	}
	
	public int getQna_id() {
		return qna_id;
	}

	public void setQna_id(int qna_id) {
		this.qna_id = qna_id;
	}

	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public int getAccount_id() {
		return account_id;
	}
	public void setAccount_id(int account_id) {
		this.account_id = account_id;
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
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
}
