package cn.service.impl;

import java.util.List;

import cn.bean.goods_checkout;
import cn.dao.goods_checkoutDao;
import cn.dao.impl.goods_checkoutDaoImpl;
import cn.service.Goods_checkorderService;

public class Goods_checkorderServiceImpl implements Goods_checkorderService 
{
	goods_checkoutDao gd_cod=new goods_checkoutDaoImpl();
	@Override
	public List<goods_checkout> serchgd_checkByid(int userid)
	{
		// TODO Auto-generated method stub
		return gd_cod.findgd_checkByid(userid);
	}

	@Override
	public float s_addgoods(int gd_id, float gd_price, int gd_num, int gd_userid) 
	{
		// TODO Auto-generated method stub
		return gd_cod.addgoods(gd_id, gd_price, gd_num, gd_userid);
	}

	@Override
	public boolean s_delgoods(int gd_id,int gd_userid)
	{
		// TODO Auto-generated method stub
		return gd_cod.delgoods(gd_id,gd_userid);
	}

	@Override
	public float s_addgoods_order(int gd_id, float gd_price, int gd_num,int gd_userid,String gd_date,int pay_type)
	{
		// TODO Auto-generated method stub
		return gd_cod.addgoods_order(gd_id, gd_price, gd_num, gd_userid, gd_date, pay_type);
	}

	@Override
	public float s_total_price(int userid) 
	{
		// TODO Auto-generated method stub
		return gd_cod.total_price(userid);
	}

	@Override
	public boolean s_paygoods_order(int gd_userid, String pay_date) 
	{
		// TODO Auto-generated method stub
		return gd_cod.paygoods_order(gd_userid, pay_date);
	}

	@Override
	public int searchnumFromgoods(int gd_id) 
	{
		// TODO Auto-generated method stub
		return gd_cod.findnumFromgoods(gd_id);
	}

}
