package coffeeFactory.vo;

/*
 CREATE TABLE PRODUCT(
PRODUCT_ID NUMBER,
NAME VARCHAR2(100),
ORIGIN VARCHAR2(100),
COMPANY VARCHAR2(50),
DESCRIPTION VARCHAR2(1000),
THUMBNAIL VARCHAR2(200)
); 
 */
public class Product {
	private int product_id;
	private String name;
	private String origin;
	private String company;
	private String decription;
	private String thumbnail;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(int product_id, String name, String origin, String company, String decription, String thumbnail) {
		super();
		this.product_id = product_id;
		this.name = name;
		this.origin = origin;
		this.company = company;
		this.decription = decription;
		this.thumbnail = thumbnail;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getDecription() {
		return decription;
	}
	public void setDecription(String decription) {
		this.decription = decription;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	@Override
	public String toString() {
		return "Product [product_id=" + product_id + ", name=" + name + ", origin=" + origin + ", company=" + company 
				+ ", decription=" + decription + ", thumbnail=" + thumbnail +"]";
	}
}
