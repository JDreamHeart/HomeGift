package cn.demo;

import java.util.Date;
import java.util.List;

import javax.xml.crypto.Data;

import org.junit.Test;

import cn.bean.goods_checkout;
import cn.bean.user;
import cn.bean.detail;
import cn.dao.UserDao;
import cn.dao.impl.UserDaoImpl;
import cn.dao.impl.UserLogDaoImpl;
import cn.service.DetailService;
import cn.service.Goods_checkorderService;
import cn.service.impl.DetailServiceImpl;
import cn.service.impl.Goods_checkorderServiceImpl;

public class Demo
{
    @Test
    public void test01()
    {
    	Goods_checkorderService gd_cko=new Goods_checkorderServiceImpl();
    	DetailService detService=new DetailServiceImpl();
    	  detail det=detService.searchdetail(1);
    	  List<goods_checkout> flage=gd_cko.serchgd_checkByid(1605);
    	  int studd=flage.size();
			for(int i=0;i<studd;i++)
			{
				System.out.println(flage.get(i).getGd_date());
			}
    	
//    	UserLogDaoImpl userlog=new UserLogDaoImpl();
//    	user use=userlog.findUser("qw","12");
//    	if(use!=null)
//    	{
//    		Date date_test=new Date();
//    		SimpleDateFormat dft=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
//    		System.out.println(dft.format(date_test));
//    		System.out.println(use.getUsername());
//    	}
//    	detail det=new detail();
//    	det.setName("myhref");
//    	det.setPic_src("re.jsp");
//    	System.out.println(det.getName());
    }
    
    @Test
    public void test02()
    {
    	
    }
}
