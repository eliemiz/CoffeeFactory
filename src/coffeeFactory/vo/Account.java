package coffeeFactory.vo;

import java.util.Date;

public class Account {
	private int account_id;
	private String name;
	private String id;
	private String pass;
	private String nickname;
	private Date birthday;
	private String birthday_s;
	private String gender;
	private int post;
	private String address;
	private String address2;
	private String email;
	private String phone;
	private String phone2;
	private String mail_recv;
	private String auth;

	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Account(int account_id, String name, String id, String pass, String nickname, Date birthday, String gender,
			int post, String address, String address2, String email, String phone, String phone2, String mail_recv,
			String auth) {
		super();
		this.account_id = account_id;
		this.name = name;
		this.id = id;
		this.pass = pass;
		this.nickname = nickname;
		this.birthday = birthday;
		this.gender = gender;
		this.post = post;
		this.address = address;
		this.address2 = address2;
		this.email = email;
		this.phone = phone;
		this.phone2 = phone2;
		this.mail_recv = mail_recv;
		this.auth = auth;
	}

	public Account(int account_id, String name, String id, String pass, String nickname, String birthday_s,
			String gender, int post, String address, String address2, String email, String phone, String phone2,
			String mail_recv, String auth) {
		super();
		this.account_id = account_id;
		this.name = name;
		this.id = id;
		this.pass = pass;
		this.nickname = nickname;
		this.birthday_s = birthday_s;
		this.gender = gender;
		this.post = post;
		this.address = address;
		this.address2 = address2;
		this.email = email;
		this.phone = phone;
		this.phone2 = phone2;
		this.mail_recv = mail_recv;
		this.auth = auth;
	}

	public int getAccount_id() {
		return account_id;
	}

	public void setAccount_id(int account_id) {
		this.account_id = account_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getBirthday_s() {
		return birthday_s;
	}

	public void setBirthday_s(String birthday_s) {
		this.birthday_s = birthday_s;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getPost() {
		return post;
	}

	public void setPost(int post) {
		this.post = post;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPhone2() {
		return phone2;
	}

	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}

	public String getMail_recv() {
		return mail_recv;
	}

	public void setMail_recv(String mail_recv) {
		this.mail_recv = mail_recv;
	}

	public String getAuth() {
		return auth;
	}

	public void setAuth(String auth) {
		this.auth = auth;
	}

	@Override
	public String toString() {
		return "Account [account_id=" + account_id + ", name=" + name + ", id=" + id + ", pass=" + pass + ", nickname="
				+ nickname + ", birthday=" + birthday + ", birthday_s=" + birthday_s + ", gender=" + gender + ", post="
				+ post + ", address=" + address + ", address2=" + address2 + ", email=" + email + ", phone=" + phone
				+ ", phone2=" + phone2 + ", mail_recv=" + mail_recv + ", auth=" + auth + "]";
	}

}
