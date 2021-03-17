package coffeeFactory.vo;

import java.util.Date;

/*REVIEW_ID NUMBER,
PRODUCT_ID
ACCOUNT_ID
REGIST_DATE
RATING
TITLE
CONTENT
IMAGE
REPLY_CONTENT*/
public class Review {

	private int review_id;
	private int product_id;
	private int account_id;
	private Date regist_date;
	private String regist_date_s;
	private int rating;
	private String title;
	private String content;
	private String image;
	private String reply_content;
	public Review() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Review(int product_id, int account_id, int rating, String title, String content, String image,
			String reply_content) {
		super();
		this.product_id = product_id;
		this.account_id = account_id;
		this.rating = rating;
		this.title = title;
		this.content = content;
		this.image = image;
		this.reply_content = reply_content;
	}

	public Review(int review_id, int product_id, int account_id, Date regist_date, String regist_date_s, int rating,
			String title, String content, String image, String reply_content) {
		super();
		this.review_id = review_id;
		this.product_id = product_id;
		this.account_id = account_id;
		this.regist_date = regist_date;
		this.regist_date_s = regist_date_s;
		this.rating = rating;
		this.title = title;
		this.content = content;
		this.image = image;
		this.reply_content = reply_content;
	}
	public Review(int review_id, int product_id, int account_id, String regist_date_s, int rating, String title,
			String content, String image, String reply_content) {
		super();
		this.review_id = review_id;
		this.product_id = product_id;
		this.account_id = account_id;
		this.regist_date_s = regist_date_s;
		this.rating = rating;
		this.title = title;
		this.content = content;
		this.image = image;
		this.reply_content = reply_content;
	}
	public Review(int review_id, int product_id, int account_id, Date regist_date, int rating, String title,
			String content, String image, String reply_content) {
		super();
		this.review_id = review_id;
		this.product_id = product_id;
		this.account_id = account_id;
		this.regist_date = regist_date;
		this.rating = rating;
		this.title = title;
		this.content = content;
		this.image = image;
		this.reply_content = reply_content;
	}
	public int getReview_id() {
		return review_id;
	}
	public void setReview_id(int review_id) {
		this.review_id = review_id;
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
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
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
	public String getReply_content() {
		return reply_content;
	}
	public void setReply_content(String reply_content) {
		this.reply_content = reply_content;
	}
	@Override
	public String toString() {
		return "Review [review_id=" + review_id + ", product_id=" + product_id + ", account_id=" + account_id
				+ ", regist_date=" + regist_date + ", regist_date_s=" + regist_date_s + ", rating=" + rating
				+ ", title=" + title + ", content=" + content + ", image=" + image + ", reply_content=" + reply_content
				+ "]";
	}
	


	
}
