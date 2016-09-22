package cn.service.impl;

import java.util.List;

import cn.bean.detail;
import cn.bean.detail_det;
import cn.dao.DetailDao;
import cn.dao.impl.DetailDaoImpl;
import cn.service.DetailService;

public class DetailServiceImpl implements DetailService 
{
	DetailDao detDao=new DetailDaoImpl();
	@Override
	public List<detail> searchdetail() 
	{
		return detDao.findAlldetail();
	}

	@Override
	public detail searchdetail(int num) 
	{
		// TODO Auto-generated method stub
		return detDao.finddetBynum(num);
	}

	@Override
	public detail_det searchdetail_det(int id) 
	{
		// TODO Auto-generated method stub
		return detDao.finddetByid(id);
	}

}
