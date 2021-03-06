package coffeeFactory.vo;

public class ProductEx {
	private int product_id;
	private String name;
	private String category;
	private String origin;
	private String company;
	private String description;
	private String thumbnail;
	private int price;

	public ProductEx() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProductEx(int product_id, String name, String category, String origin, String company, String description,
			String thumbnail, int price) {
		super();
		this.product_id = product_id;
		this.name = name;
		this.category = category;
		this.origin = origin;
		this.company = company;
		this.description = description;
		this.thumbnail = thumbnail;
		this.price = price;
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

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

}
