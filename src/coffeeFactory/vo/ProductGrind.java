package coffeeFactory.vo;

/*
CREATE TABLE GRIND(
GRIND_ID NUMBER,
GRIND_TYPE VARCHAR2(100)
); 
*/
public class ProductGrind {
	private int grind_id;
	private String grind_type;
	public ProductGrind() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductGrind(int grind_id, String grind_type) {
		super();
		this.grind_id = grind_id;
		this.grind_type = grind_type;
	}
	public int getGrind_id() {
		return grind_id;
	}
	public void setGrind_id(int grind_id) {
		this.grind_id = grind_id;
	}
	public String getGrind_type() {
		return grind_type;
	}
	public void setGrind_type(String grind_type) {
		this.grind_type = grind_type;
	}
	@Override
	public String toString() {
		return "ProductGrind [grind_id=" + grind_id + ", grind_type=" + grind_type + "]";
	}
}
