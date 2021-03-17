package coffeeFactory.vo;

/*
CREATE TABLE PRODUCT_OPTION(
PRODUCT_ID NUMBER,
CAPACITY VARCHAR2(100),
PRICE NUMBER
); 
*/
public class ProductOption {
	private int product_id;
	private String capacity;
	private int price;

	public ProductOption() {
		super();
		// TODO Auto-generated constructor stub
	}

	public ProductOption(int product_id, String capacity, int price) {
		super();
		this.product_id = product_id;
		this.capacity = capacity;
		this.price = price;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	public String getCapacity() {
		return capacity;
	}

	public void setCapacity(String capacity) {
		this.capacity = capacity;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "ProductOption [product_id=" + product_id + ", capacity=" + capacity + ", price=" + price + "]";
	}
}
