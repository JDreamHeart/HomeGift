package cn.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import cn.bean.goods_checkout;
import cn.dao.goods_checkoutDao;
import cn.dbc.BaseDao;

public class goods_checkoutDaoImpl implements goods_checkoutDao 
{
	BaseDao bs=new BaseDao();
    Connection conn=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;

	@Override
	public List<goods_checkout> findgd_checkByid(int userid) 
	{
		List<goods_checkout> ls=new ArrayList<goods_checkout>();
		conn=bs.getConnection();
		String sql;
		if(userid==1)
		{
			sql="select * from goods_prepare";
		}
		else
		{
			sql="select * from goods_checkout where gd_userid="+userid;
		}
		try
		{
			int number=0;
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				int num=rs.getInt(2);
				number++;
				goods_checkout gd_co=new goods_checkout();
				String sql1="select * from goods where num="+num;
				PreparedStatement pstmt1=conn.prepareStatement(sql1);
				ResultSet rs1=pstmt1.executeQuery();
				if(rs1.next())
				{
					gd_co.setId(number);
					gd_co.setGd_id(num);
					gd_co.setGd_price(rs.getFloat(3));
					gd_co.setGd_num(rs.getInt(4));
					gd_co.setGd_userid(userid);
					gd_co.setGd_number("第"+number+"件商品");
					gd_co.setGd_name(rs1.getString(2));
					gd_co.setGd_picsrc(rs1.getString(3));
					gd_co.setGd_date(rs.getString(6));
					gd_co.setGd_totalprice(rs.getFloat(3)*rs.getInt(4));
					ls.add(gd_co);
				}
			}
		}
		catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			bs.closeConn(conn, pstmt, rs);
		}
		return ls;
	}

	@Override
	public float addgoods(int gd_id, float gd_price, int gd_num, int gd_userid)
	{
		float allprice = 0;
		Date gd_date=new Date();
		SimpleDateFormat date_f=new SimpleDateFormat("yyyy-MM-dd kk:mm:ss");
		conn=bs.getConnection();
		String sql = null;
		if(gd_userid==1)
		{
			int flag = 0;
			try 
			{
				String sql0="update goods_prepare set gd_num=? where gd_id=?";
				PreparedStatement pstmt0=conn.prepareStatement(sql0);
				pstmt0.setInt(1, gd_num);
				pstmt0.setInt(2,gd_id);
				flag=pstmt0.executeUpdate();
			} 
			catch (Exception e) 
			{
				// TODO: handle exception
			}
			if(flag==0)
			{
				sql="insert into goods_prepare values(?,?,?,?,?,?)";
			}
		}
		else
		{
			int flag = 0;
			try 
			{
				String sql0="update goods_checkout set gd_num=? where gd_id=? and gd_userid=?";
				PreparedStatement pstmt0=conn.prepareStatement(sql0);
				pstmt0.setInt(1, gd_num);
				pstmt0.setInt(2,gd_id);
				pstmt0.setInt(3,gd_userid);
				flag=pstmt0.executeUpdate();
			} 
			catch (Exception e) 
			{
				// TODO: handle exception
			}
			if(flag==0)
			{
				sql="insert into goods_checkout values(?,?,?,?,?,?)";
			}
		}
		if(sql!=null)
		{
			try
			{
				pstmt=conn.prepareStatement(sql);
				pstmt.setInt(1, 0);
				pstmt.setInt(2,gd_id);
				pstmt.setFloat(3, gd_price);
				pstmt.setInt(4,gd_num);
				pstmt.setInt(5,gd_userid);
				pstmt.setString(6, date_f.format(gd_date));
				pstmt.executeUpdate();
				allprice=gd_price*gd_num;
			}
			catch (SQLException e)
			{
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			finally
			{
				bs.closeConn(conn, pstmt, rs);
			}
		}
		return allprice;
	}

	@Override
	public boolean delgoods(int gd_id,int gd_userid) 
	{
		boolean flag=false;
		conn=bs.getConnection();
		String sql;
		if(gd_userid==1)
		{
			sql="delete from goods_prepare where gd_id=? and gd_userid=?";
		}
		else
		{
			sql="delete from goods_checkout where gd_id=? and gd_userid=?";
		}
		try
		{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,gd_id);
			pstmt.setInt(2,gd_userid);
			pstmt.executeUpdate();
			flag=true;
		} catch (Exception e)
		{
			// TODO: handle exception
			e.printStackTrace();
		}
		finally
		{
			bs.closeConn(conn, pstmt, rs);
		}
		return flag;
	}

	@Override
	public float addgoods_order(int gd_id, float gd_price, int gd_num, int gd_userid,String gd_date,int pay_type)
	{
		float allprice = 0;
		conn=bs.getConnection();
		String sql="insert into goods_order values(?,?,?,?,?,?,?)";
		try
		{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,0);
			pstmt.setInt(2,gd_id);
			pstmt.setFloat(3,gd_price);
			pstmt.setInt(4,gd_num);
			pstmt.setInt(5,gd_userid);
			pstmt.setString(6,gd_date);
			pstmt.setInt(7,pay_type);
			pstmt.executeUpdate();
			allprice=gd_price*gd_num;
		}
		catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			bs.closeConn(conn, pstmt, rs);
		}
		return allprice;
	}

	@Override
	public float total_price(int userid) 
	{
		float total_p=0;
		conn=bs.getConnection();
		String sql;
		if(userid==1)
		{
			sql="select * from goods_prepare";
		}
		else
		{
			sql="select * from goods_checkout where gd_userid="+userid;
		}
		try
		{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				total_p=total_p+rs.getFloat(3)*rs.getInt(4);
			}
		}
		catch (SQLException e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			bs.closeConn(conn, pstmt, rs);
		}
		return total_p;
	}

	@Override
	public boolean paygoods_order(int gd_userid,String pay_date) 
	{
		boolean flag=false;
		conn=bs.getConnection();
		String sql="update goods_order set pay=? where gd_userid=? and gd_date=?";
		try 
		{
			pstmt=conn.prepareStatement(sql);
			pstmt.setInt(1,1);
			pstmt.setInt(2,gd_userid);
			pstmt.setString(3,pay_date);
			pstmt.executeUpdate();
			flag=true;
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		finally
		{
			bs.closeConn(conn, pstmt, rs);
		}
		return flag;
	}

	@Override
	public int findnumFromgoods(int gd_id)
	{
		int gd_number=0;
		conn=bs.getConnection();
		String sql="select gd_num from goods_checkout where gd_id="+gd_id;
		try 
		{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next())
			{
				gd_number=rs.getInt(1);
			}
		} 
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		finally
		{
			bs.closeConn(conn, pstmt, rs);
		}
		return gd_number;
	}

}
