package coffeeFactory.vo;

import java.util.Date;

public class QnaEx {
	private int qna_id;
	private int product_id;
	private int account_id;
	private Date regist_date;
	private String title;
	private String content;
	private String reply_content;
	private String name;
	private String category;
	private String origin;
	private String company;
	private String thumbnail;

	public QnaEx() {
		super();
		// TODO Auto-generated constructor stub
	}

	public QnaEx(int qna_id, int product_id, int account_id, Date regist_date, String title, String content,
			String reply_content, String name, String category, String origin, String company, String thumbnail) {
		super();
		this.qna_id = qna_id;
		this.product_id = product_id;
		this.account_id = account_id;
		this.regist_date = regist_date;
		this.title = title;
		this.content = content;
		this.reply_content = reply_content;
		this.name = name;
		this.category = category;
		this.origin = origin;
		this.company = company;
		this.thumbnail = thumbnail;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	@Override
	public String toString() {
		return "QnaEx [qna_id=" + qna_id + ", product_id=" + product_id + ", account_id=" + account_id
				+ ", regist_date=" + regist_date + ", title=" + title + ", content=" + content + ", reply_content="
				+ reply_content + ", name=" + name + ", category=" + category + ", origin=" + origin + ", company="
				+ company + ", thumbnail=" + thumbnail + "]";
	}

}
