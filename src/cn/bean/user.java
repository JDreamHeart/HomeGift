package cn.bean;

public class user
{
    private int id;
    private String username;
    private String sex;
    private String phone;
    private String email;
	public user() {
		super();
	}
	public user(int id, String username, String sex, String phone, String email) {
		super();
		this.id = id;
		this.username = username;
		this.sex = sex;
		this.phone = phone;
		this.email = email;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
