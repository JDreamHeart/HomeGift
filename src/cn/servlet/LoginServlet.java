package cn.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.bean.detail_det;
import cn.bean.goods_checkout;
import cn.bean.user;
import cn.bean.detail;
import cn.service.DetailService;
import cn.service.Goods_checkorderService;
import cn.service.UserLogService;
import cn.service.UserService;
import cn.service.impl.DetailServiceImpl;
import cn.service.impl.Goods_checkorderServiceImpl;
import cn.service.impl.UserLogServiceImpl;
import cn.service.impl.UserServiceImpl;

@SuppressWarnings("serial")
public class LoginServlet extends HttpServlet
{
	UserService userService=new UserServiceImpl();
    UserLogService userLog=new UserLogServiceImpl();
    DetailService detService=new DetailServiceImpl();
    Goods_checkorderService gd_cko=new Goods_checkorderServiceImpl();
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
          String username=request.getParameter("username");
          String password=request.getParameter("password");
          String sure_password=request.getParameter("sure_password");
          String pagename=request.getParameter("pagename");
          if(sure_password!=null)
          {
        	  String name=request.getParameter("name");
              String sex=request.getParameter("sex");
              String phone=request.getParameter("phone");
              String email=request.getParameter("email");
              if(userService.s_register_user(name, sex, phone, email, username, sure_password))
              {
            	  String message="1";
            	  request.setAttribute("message", message);
		          request.getRequestDispatcher("register.jsp").forward(request, response);
              }
              else
              {
            	  String message="0";
            	  request.setAttribute("message", message);
		          request.getRequestDispatcher("register.jsp").forward(request, response);
              }
          }
          else if(password!=null)
		  {
		        user use=userLog.login(username, password);
		        if(use!=null)
		        {
		        	String welcome_user="";
		        	if(use.getSex().equals("male"))
		        	{
		        		welcome_user="您好！"+use.getUsername()+"先生";
		        	}
		        	else
		        	{
		        		welcome_user="您好！"+use.getUsername()+"女士";
		        	}
		        	String display0="display:none";
		        	List<detail> detlist=detService.searchdetail();
		        	request.setAttribute("welcome_user",welcome_user);
		        	request.setAttribute("display0",display0);
		        	request.setAttribute("user",use);
		        	request.setAttribute("detlist",detlist);
		        	request.getRequestDispatcher("Homepage.jsp").forward(request, response);
		        }
		        else
		        {
		        	String message="账号与密码不匹配！";
		        	request.setAttribute("mess", message);
		        	request.getRequestDispatcher("login.jsp").forward(request, response);
		        }
		  }
          else if(pagename.equals("home_page"))
		  {
			  String hid_id=request.getParameter("hid_id");
			  if(hid_id!=null)
			  {
				  int id=0;
				  try 
				  {
					  id=Integer.parseInt(hid_id);
				  } 
				  catch (Exception e) 
				  {
					response.sendRedirect("Homepage.jsp");
				  }
				  user use=userService.searchUser(id);
				  String welcome_user="";
		          if(use.getSex().equals("male"))
		          {
		        	  welcome_user="您好！"+use.getUsername()+"先生";
		          }
		          else
		          {
		        	  welcome_user="您好！"+use.getUsername()+"女士";
		          }
		          String display0="display:none";
		          request.setAttribute("welcome_user",welcome_user);
		          request.setAttribute("display0",display0);
		          request.setAttribute("user",use);
		          request.getRequestDispatcher("Homepage.jsp").forward(request, response);
			  }
			  else
			  {
				  response.sendRedirect("Homepage.jsp");
			  }
		  }
		  else if(pagename.equals("detail_page"))
		  {
			  String hid_id=request.getParameter("hid_id");
			  String num=request.getParameter("num");
			  int d_num=0;
			  try 
			  {
				  d_num=Integer.parseInt(num);
			  } 
			  catch (Exception e) 
			  {
				response.sendRedirect("Homepage.jsp");
			  }
			  detail det=detService.searchdetail(d_num);
			  detail_det det_d=detService.searchdetail_det(d_num);
	          request.setAttribute("det",det);
	          request.setAttribute("detail_det",det_d);
			  if(hid_id!=null)
			  {
				  int id=0;
				  try 
				  {
					  id=Integer.parseInt(hid_id);
				  } 
				  catch (Exception e) 
				  {
					response.sendRedirect("Homepage.jsp");
				  }
				  user use=userService.searchUser(id);
				  String welcome_user="";
		          if(use.getSex().equals("male"))
		          {
		        	  welcome_user="您好！"+use.getUsername()+"先生";
		          }
		          else
		          {
		        	  welcome_user="您好！"+use.getUsername()+"女士";
		          }
		          String display0="display:none";
		          request.setAttribute("welcome_user",welcome_user);
		          request.setAttribute("display0",display0);
		          request.setAttribute("user",use);
			  }
	          request.getRequestDispatcher("detail.jsp").forward(request, response);
		  }
		  else if(pagename.equals("checkout_page"))
		  {
			  int d_num=0;
//			  int gd_num=1;
			  int gd_userid=1;
			  float totalprice=0;
			  String hid_id=request.getParameter("hid_id");
			  String num=request.getParameter("num");
//			  String delete_id=request.getParameter("delete_id");
//			  String[] gd_nums=request.getParameterValues("goods_num");
//			  String[] gd_ids=request.getParameterValues("goods_id");
			  try 
			  {
				  gd_userid=Integer.parseInt(hid_id);
			  } 
			  catch (Exception e) 
			  {
				  e.printStackTrace();
			  }
	          totalprice=gd_cko.s_total_price(gd_userid);
//	          if(delete_id!=null)
//	          {
//	        	  int del_id=0;
//	        	  try 
//	        	  {
//	        		  del_id=Integer.parseInt(delete_id);
//				  } 
//	        	  catch (Exception e) 
//	        	  {
//					e.printStackTrace();
//				  }
//	        	  gd_cko.s_delgoods(del_id, gd_userid);
//	          }
//	          else
//	          {
	        	  if(num!=null)
				  {
					  try 
					  {
						  d_num=Integer.parseInt(num);
					  } 
					  catch (Exception e) 
					  {
						  e.printStackTrace();
					  }
					  detail det=detService.searchdetail(d_num);
					  gd_cko.s_addgoods(d_num, det.getPrice(),1, gd_userid);
				  }
//				  if(!gd_nums.equals("")&!gd_nums.equals("0"))
//				  {
//					  int gdnum=0;
//					  int gdid=0;
//					  for(int i=0;i<gd_nums.length;i++)
//					  {
//						  try 
//						  {
//							  gdnum=Integer.parseInt(gd_nums[i]);
//							  gdid=Integer.parseInt(gd_ids[i]);
//						  } 
//						  catch (Exception e) 
//						  {
//							  e.printStackTrace();
//						  }
//						  detail det=detService.searchdetail(gdnum);
//						  gd_cko.s_addgoods(gdid, det.getPrice(),gdnum, gd_userid);
//					  }
//					  request.setAttribute("check", gdnum);
//				  }
//	          }

				  request.setAttribute("check", 1);
			  if(gd_userid!=1)
			  {
				  user use=userService.searchUser(gd_userid);
				  String welcome_user="";
		          if(use.getSex().equals("male"))
		          {
		        	  welcome_user="您好！"+use.getUsername()+"先生";
		          }
		          else
		          {
		              welcome_user="您好！"+use.getUsername()+"女士";
		          }
		          String display0="display:none";
		          request.setAttribute("welcome_user",welcome_user);
		          request.setAttribute("display0",display0);
		          request.setAttribute("user",use);
			  }
			  List<goods_checkout> gd_lisk=gd_cko.serchgd_checkByid(gd_userid);
		      request.setAttribute("gd_lisk",gd_lisk);
		      request.setAttribute("totalprice",totalprice);
	          request.getRequestDispatcher("checkout.jsp").forward(request, response);
		  }
		  else if(pagename.equals("account_page"))
		  {
			  int d_num=0;
			  int gd_userid=1;
			  float totalprice=0;
			  Date gd_date0=new Date();
			  SimpleDateFormat date_f=new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
			  String gd_date=date_f.format(gd_date0);
			  String hid_id=request.getParameter("hid_id");
			  String num=request.getParameter("num");
			  String[] gd_selected=request.getParameterValues("cko_ckb");
			  try 
			  {
				  gd_userid=Integer.parseInt(hid_id);
			  } 
			  catch (Exception e) 
			  {
				  
			  }
	          totalprice=gd_cko.s_total_price(gd_userid);
			  if(num!=null)
			  {
				  try 
				  {
					  d_num=Integer.parseInt(num);
				  } 
				  catch (Exception e) 
				  {
					  
				  }
				  detail det=detService.searchdetail(d_num);
				  gd_cko.s_addgoods_order(d_num, det.getPrice(),1, gd_userid,gd_date,0);
				  gd_cko.s_delgoods(d_num, gd_userid);
			  }
			  if(gd_selected!=null)
			  {
				  int gdselect=0;
				  for(int i=0;i<gd_selected.length;i++)
				  {
					  try 
					  {
						  gdselect=Integer.parseInt(gd_selected[i]);
					  } 
					  catch (Exception e) 
					  {
						  
					  }
					  detail det=detService.searchdetail(gdselect);
					  int gdnum=gd_cko.searchnumFromgoods(gdselect);
					  gd_cko.s_addgoods_order(gdselect, det.getPrice(),gdnum, gd_userid,gd_date,0);
					  gd_cko.s_delgoods(d_num, gd_userid);
				  }
			  }	
			  if(gd_userid!=1)
			  {
				  user use=userService.searchUser(gd_userid);
				  String welcome_user="";
		          if(use.getSex().equals("male"))
		          {
		        	  welcome_user="您好！"+use.getUsername()+"先生";
		          }
		          else
		          {
		              welcome_user="您好！"+use.getUsername()+"女士";
		          }
		          request.setAttribute("welcome_user",welcome_user);
		          request.setAttribute("user",use);
			  }
			  List<goods_checkout> gd_lisk=gd_cko.serchgd_checkByid(gd_userid);
		      request.setAttribute("gd_lisk",gd_lisk);
		      request.setAttribute("totalprice",totalprice);
	          request.getRequestDispatcher("account.jsp").forward(request, response);
		  }
		  else if(pagename.equals("payment_page"))
		  {
			  int gd_userid=1;
			  String hid_id=request.getParameter("hid_id");
			  String[] get_date=request.getParameterValues("getdate");
			  try 
			  {
				  gd_userid=Integer.parseInt(hid_id);
			  } 
			  catch (Exception e) 
			  {
				  
			  }
			  if(gd_userid!=1)
			  {
				  user use=userService.searchUser(gd_userid);
				  String welcome_user="";
		          if(use.getSex().equals("male"))
		          {
		        	  welcome_user="您好！"+use.getUsername()+"先生";
		          }
		          else
		          {
		              welcome_user="您好！"+use.getUsername()+"女士";
		          }
		          request.setAttribute("welcome_user",welcome_user);
		          request.setAttribute("user",use);
			  }
			  if(get_date!=null)
			  {
				  for(int i=0;i<get_date.length;i++)
				  {
					  gd_cko.s_paygoods_order(Integer.parseInt(hid_id), get_date[i]);
				  }
			  }
			  String pay_success="支付成功！";
		      request.setAttribute("pay_success",pay_success);
	          request.getRequestDispatcher("payment.jsp").forward(request, response);
		  }
    	  else
    	  {
    		  	String flag="Wrong Operation!";
	        	request.setAttribute("wrongpwd",flag);
	        	request.getRequestDispatcher("Homepage.jsp").forward(request, response);
    	  }    
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException 
	{
          this.doGet(request, response);
	}

}
