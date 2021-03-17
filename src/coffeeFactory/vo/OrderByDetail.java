package coffeeFactory.vo;

import java.util.Date;

public class OrderByDetail {
	private int order_id; 
	private int account_id; 
	private int price; 
	private String send_name; 
	private String send_email; 
	private String send_phone; 
	private String send_phone2; 
	private String send_address; 
	private String recv_name; 
	private String recv_phone; 
	private String recv_phone2; 
	private String recv_address; 
	private String comment;
	private String pay;
	private String state;
	private Date order_date; 
	private String order_date_s;
	
	public OrderByDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "OrderByDetail [order_id=" + order_id + ", account_id=" + account_id + ", price=" + price
				+ ", send_name=" + send_name + ", send_email=" + send_email + ", send_phone=" + send_phone
				+ ", send_phone2=" + send_phone2 + ", send_address=" + send_address + ", recv_name=" + recv_name
				+ ", recv_phone=" + recv_phone + ", recv_phone2=" + recv_phone2 + ", recv_address=" + recv_address
				+ ", comment=" + comment + ", pay=" + pay + ", state=" + state + ", order_date=" + order_date
				+ ", order_date_s=" + order_date_s + "]";
	}

	public OrderByDetail(int order_id, int account_id, int price, String send_name, String send_email,
			String send_phone, String send_phone2, String send_address, String recv_name, String recv_phone,
			String recv_phone2, String recv_address, String comment, String pay, String state, Date order_date) {
		super();
		this.order_id = order_id;
		this.account_id = account_id;
		this.price = price;
		this.send_name = send_name;
		this.send_email = send_email;
		this.send_phone = send_phone;
		this.send_phone2 = send_phone2;
		this.send_address = send_address;
		this.recv_name = recv_name;
		this.recv_phone = recv_phone;
		this.recv_phone2 = recv_phone2;
		this.recv_address = recv_address;
		this.comment = comment;
		this.pay = pay;
		this.state = state;
		this.order_date = order_date;
	}

	public OrderByDetail(int order_id, int account_id, int price, String send_name, String send_email,
			String send_phone, String send_phone2, String send_address, String recv_name, String recv_phone,
			String recv_phone2, String recv_address, String comment, String pay, String state, String order_date_s) {
		super();
		this.order_id = order_id;
		this.account_id = account_id;
		this.price = price;
		this.send_name = send_name;
		this.send_email = send_email;
		this.send_phone = send_phone;
		this.send_phone2 = send_phone2;
		this.send_address = send_address;
		this.recv_name = recv_name;
		this.recv_phone = recv_phone;
		this.recv_phone2 = recv_phone2;
		this.recv_address = recv_address;
		this.comment = comment;
		this.pay = pay;
		this.state = state;
		this.order_date_s = order_date_s;
	}

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getAccount_id() {
		return account_id;
	}

	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getSend_name() {
		return send_name;
	}

	public void setSend_name(String send_name) {
		this.send_name = send_name;
	}

	public String getSend_email() {
		return send_email;
	}

	public void setSend_email(String send_email) {
		this.send_email = send_email;
	}

	public String getSend_phone() {
		return send_phone;
	}

	public void setSend_phone(String send_phone) {
		this.send_phone = send_phone;
	}

	public String getSend_phone2() {
		return send_phone2;
	}

	public void setSend_phone2(String send_phone2) {
		this.send_phone2 = send_phone2;
	}

	public String getSend_address() {
		return send_address;
	}

	public void setSend_address(String send_address) {
		this.send_address = send_address;
	}

	public String getRecv_name() {
		return recv_name;
	}

	public void setRecv_name(String recv_name) {
		this.recv_name = recv_name;
	}

	public String getRecv_phone() {
		return recv_phone;
	}

	public void setRecv_phone(String recv_phone) {
		this.recv_phone = recv_phone;
	}

	public String getRecv_phone2() {
		return recv_phone2;
	}

	public void setRecv_phone2(String recv_phone2) {
		this.recv_phone2 = recv_phone2;
	}

	public String getRecv_address() {
		return recv_address;
	}

	public void setRecv_address(String recv_address) {
		this.recv_address = recv_address;
	}

	public String getComment() {
		return comment;
	}

	public void setComment(String comment) {
		this.comment = comment;
	}

	public String getPay() {
		return pay;
	}

	public void setPay(String pay) {
		this.pay = pay;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public Date getOrder_date() {
		return order_date;
	}

	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}

	public String getOrder_date_s() {
		return order_date_s;
	}

	public void setOrder_date_s(String order_date_s) {
		this.order_date_s = order_date_s;
	}
	
}
