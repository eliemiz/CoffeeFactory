package coffeeFactory.vo;

public class Temp {
	private String temp;

	public Temp() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Temp(String temp) {
		super();
		this.temp = temp;
	}

	public String getTemp() {
		return temp;
	}

	public void setTemp(String temp) {
		this.temp = temp;
	}

	@Override
	public String toString() {
		return "Temp [temp=" + temp + "]";
	}

}
