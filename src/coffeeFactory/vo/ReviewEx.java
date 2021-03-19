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
public class ReviewEx {

	private int review_id;
	private int product_id;
	private int account_id;
	private Date regist_date;
	private int rating;
	private String title;
	private String content;
	private String image;
	private String reply_content;

	private String name;
	private String category;
	private String origin;
	private String company;
	private String thumbnail;

	private String nickname;

	public ReviewEx() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ReviewEx(int review_id, int product_id, int account_id, Date regist_date, int rating, String title,
			String content, String image, String reply_content, String name, String category, String origin,
			String company, String thumbnail) {
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
		this.name = name;
		this.category = category;
		this.origin = origin;
		this.company = company;
		this.thumbnail = thumbnail;
	}
	
	 public ReviewEx(int review_id, int rating, String title, String name, String thumbnail, String nickname) {
		super();
		this.review_id = review_id;
		this.rating = rating;
		this.title = title;
		this.name = name;
		this.thumbnail = thumbnail;
		this.nickname = nickname;
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

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	@Override
	public String toString() {
		return "ReviewEx [review_id=" + review_id + ", product_id=" + product_id + ", account_id=" + account_id
				+ ", regist_date=" + regist_date + ", rating=" + rating + ", title=" + title + ", content=" + content
				+ ", image=" + image + ", reply_content=" + reply_content + ", name=" + name + ", category=" + category
				+ ", origin=" + origin + ", company=" + company + ", thumbnail=" + thumbnail + "]";
	}

}
