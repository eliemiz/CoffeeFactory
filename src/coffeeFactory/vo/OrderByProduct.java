package coffeeFactory.vo;

public class OrderByProduct {
	private int order_id;
	private int product_id;
	private String capacity;
	private int grind_id;
	private int count;
	private int price;
	public OrderByProduct() {
		super();
		// TODO Auto-generated constructor stub
	}
	public OrderByProduct(int order_id, int product_id, String capacity, int grind_id, int count, int price) {
		super();
		this.order_id = order_id;
		this.product_id = product_id;
		this.capacity = capacity;
		this.grind_id = grind_id;
		this.count = count;
		this.price = price;
	}
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
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
	public int getGrind_id() {
		return grind_id;
	}
	public void setGrind_id(int grind_id) {
		this.grind_id = grind_id;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "OrderByProduct [order_id=" + order_id + ", product_id=" + product_id + ", capacity=" + capacity
				+ ", grind_id=" + grind_id + ", count=" + count + ", price=" + price + "]";
	}
	
	
	
}
