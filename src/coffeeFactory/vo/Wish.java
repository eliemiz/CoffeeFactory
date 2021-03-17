package coffeeFactory.vo;

public class Wish {
	private int account_id;
	private int proudct_id;
	
	public Wish() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Wish(int account_id, int proudct_id) {
		super();
		this.account_id = account_id;
		this.proudct_id = proudct_id;
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

	@Override
	public String toString() {
		return "Wish [account_id=" + account_id + ", proudct_id=" + proudct_id + "]";
	}
	
}
