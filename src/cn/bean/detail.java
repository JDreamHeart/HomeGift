package cn.bean;

public class detail 
{
	private int num;
	private String name;
    private String pic_src;
	private float price;
	private String ahref;
	public detail() {
		super();
	}
	public detail(int num, String name, String pic_src, float price,
			String ahref) {
		super();
		this.num = num;
		this.name = name;
		this.pic_src = pic_src;
		this.price = price;
		this.ahref = ahref;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPic_src() {
		return pic_src;
	}
	public void setPic_src(String pic_src) {
		this.pic_src = pic_src;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getAhref() {
		return ahref;
	}
	public void setAhref(String ahref) {
		this.ahref = ahref;
	}
}
