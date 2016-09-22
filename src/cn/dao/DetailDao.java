package cn.dao;

import java.util.List;

import cn.bean.detail;
import cn.bean.detail_det;

public interface DetailDao 
{
	public List<detail> findAlldetail();
    
    public detail finddetBynum(int num);
    
    public detail_det finddetByid(int id);
}
