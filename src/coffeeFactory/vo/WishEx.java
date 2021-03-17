package coffeeFactory.vo;

public class WishEx {
	private int account_id;
	private int proudct_id;
	private String name;
	private String category;
	private String origin;
	private String company;
	private String thumbnail;
	private String min_price;
	private String max_price;

	public WishEx() {
		super();
		// TODO Auto-generated constructor stub
	}

	public WishEx(int account_id, int proudct_id, String name, String category, String origin, String company,
			String thumbnail, String min_price, String max_price) {
		super();
		this.account_id = account_id;
		this.proudct_id = proudct_id;
		this.name = name;
		this.category = category;
		this.origin = origin;
		this.company = company;
		this.thumbnail = thumbnail;
		this.min_price = min_price;
		this.max_price = max_price;
	}

	public int getAccount_id() {
		return account_id;
	}

	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}

	public int getProudct_id() {
		return proudct_id;
	}

	public void setProudct_id(int proudct_id) {
		this.proudct_id = proudct_id;
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

	public String getMin_price() {
		return min_price;
	}

	public void setMin_price(String min_price) {
		this.min_price = min_price;
	}

	public String getMax_price() {
		return max_price;
	}

	public void setMax_price(String max_price) {
		this.max_price = max_price;
	}

	@Override
	public String toString() {
		return "WishEx [account_id=" + account_id + ", proudct_id=" + proudct_id + ", name=" + name + ", category="
				+ category + ", origin=" + origin + ", company=" + company + ", thumbnail=" + thumbnail + ", min_price="
				+ min_price + ", max_price=" + max_price + "]";
	}

}
