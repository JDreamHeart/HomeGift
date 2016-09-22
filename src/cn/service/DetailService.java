package cn.service;

import java.util.List;

import cn.bean.detail;
import cn.bean.detail_det;

public interface DetailService 
{
	 public List<detail> searchdetail();
	    
	 public detail searchdetail(int num);
	 
	 public detail_det searchdetail_det(int id);
}
