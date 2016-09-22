package cn.bean;

public class goods_checkout
{
	private int id;
	private int gd_id;
	private String gd_picsrc;
	private String gd_number;
	private String gd_name;
	private float gd_price;
	private int gd_num;
	private int gd_userid;
	private String gd_date;
	private float gd_totalprice;
	public goods_checkout() {
		super();
	}
	public goods_checkout(int id, int gd_id, String gd_picsrc,
			String gd_number, String gd_name, float gd_price, int gd_num,
			int gd_userid, String gd_date, float gd_totalprice) {
		super();
		this.id = id;
		this.gd_id = gd_id;
		this.gd_picsrc = gd_picsrc;
		this.gd_number = gd_number;
		this.gd_name = gd_name;
		this.gd_price = gd_price;
		this.gd_num = gd_num;
		this.gd_userid = gd_userid;
		this.gd_date = gd_date;
		this.gd_totalprice = gd_totalprice;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getGd_id() {
		return gd_id;
	}
	public void setGd_id(int gd_id) {
		this.gd_id = gd_id;
	}
	public String getGd_picsrc() {
		return gd_picsrc;
	}
	public void setGd_picsrc(String gd_picsrc) {
		this.gd_picsrc = gd_picsrc;
	}
	public String getGd_number() {
		return gd_number;
	}
	public void setGd_number(String gd_number) {
		this.gd_number = gd_number;
	}
	public String getGd_name() {
		return gd_name;
	}
	public void setGd_name(String gd_name) {
		this.gd_name = gd_name;
	}
	public float getGd_price() {
		return gd_price;
	}
	public void setGd_price(float gd_price) {
		this.gd_price = gd_price;
	}
	public int getGd_num() {
		return gd_num;
	}
	public void setGd_num(int gd_num) {
		this.gd_num = gd_num;
	}
	public int getGd_userid() {
		return gd_userid;
	}
	public void setGd_userid(int gd_userid) {
		this.gd_userid = gd_userid;
	}
	public String getGd_date() {
		return gd_date;
	}
	public void setGd_date(String gd_date) {
		this.gd_date = gd_date;
	}
	public float getGd_totalprice() {
		return gd_totalprice;
	}
	public void setGd_totalprice(float gd_totalprice) {
		this.gd_totalprice = gd_totalprice;
	}
}
