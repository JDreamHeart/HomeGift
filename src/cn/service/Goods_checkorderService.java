package cn.service;

import java.util.List;

import cn.bean.goods_checkout;

public interface Goods_checkorderService 
{
	public List<goods_checkout> serchgd_checkByid(int userid);
	public float s_total_price(int userid);
	public float s_addgoods(int gd_id,float gd_price,int gd_num,int gd_userid);
    public boolean s_delgoods(int gd_id,int gd_userid);
    public float s_addgoods_order(int gd_id,float gd_price,int gd_num,int gd_userid,String gd_date,int pay_type);
    public boolean s_paygoods_order(int gd_userid,String pay_date);
    public int searchnumFromgoods(int gd_id);
}
