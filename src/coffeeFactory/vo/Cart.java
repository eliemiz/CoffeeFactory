package coffeeFactory.vo;

public class Cart {
	private int account_id;
	private int product_id;
	private String capacity;
	private int grind_id;
	private int count;
	
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Cart [account_id=" + account_id + ", product_id=" + product_id + ", capacity=" + capacity
				+ ", grind_id=" + grind_id + ", count=" + count + "]";
	}

	public Cart(int account_id, int product_id, String capacity, int grind_id, int count) {
		super();
		this.account_id = account_id;
		this.product_id = product_id;
		this.capacity = capacity;
		this.grind_id = grind_id;
		this.count = count;
	}

	public int getAccount_id() {
		return account_id;
	}

	public void setAccount_id(int account_id) {
		this.account_id = account_id;
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
	
}
