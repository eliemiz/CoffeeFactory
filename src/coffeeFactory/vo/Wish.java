package coffeeFactory.vo;

public class Wish {
	private int account_id;
	private int product_id;
	
	public Wish() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Wish(int account_id, int product_id) {
		super();
		this.account_id = account_id;
		this.product_id = product_id;
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

	@Override
	public String toString() {
		return "Wish [account_id=" + account_id + ", product_id=" + product_id + "]";
	}
	
}
