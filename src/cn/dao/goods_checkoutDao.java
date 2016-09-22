package cn.dao;

import java.util.List;

import cn.bean.goods_checkout;

public interface goods_checkoutDao
{
	public List<goods_checkout> findgd_checkByid(int userid);
	public float total_price(int userid);
	public float addgoods(int gd_id,float gd_price,int gd_num,int gd_userid);
    public boolean delgoods(int gd_id,int gd_userid);
    public float addgoods_order(int gd_id,float gd_price,int gd_num,int gd_userid,String gd_date,int pay_type);
    public boolean paygoods_order(int gd_userid,String pay_date);
    public int findnumFromgoods(int gd_id);
}
