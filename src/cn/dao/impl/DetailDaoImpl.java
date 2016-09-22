package cn.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import cn.bean.detail;
import cn.bean.detail_det;
import cn.dao.DetailDao;
import cn.dbc.BaseDao;

public class DetailDaoImpl implements DetailDao 
{
	BaseDao bs=new BaseDao();
    Connection conn=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
	@Override
	public List<detail> findAlldetail() 
	{
		List<detail> ls=new ArrayList<detail>();
		conn=bs.getConnection();
		String sql="select * from goods";
		try
		{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			while(rs.next())
			{
				detail gds=new detail();
				gds.setNum(rs.getInt(1));
				gds.setName(rs.getString(2));
				gds.setPic_src(rs.getString(3));
				gds.setPrice(rs.getFloat(4));
				gds.setAhref(rs.getString(5)+rs.getInt(1));
				ls.add(gds);
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
	public detail finddetBynum(int num) 
	{
		detail det=new detail();
		conn=bs.getConnection();
		String sql="select * from goods where num="+num;
		try
		{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next())
			{
				det.setNum(num);
				det.setName(rs.getString(2));
				det.setPic_src(rs.getString(3));
				det.setPrice(rs.getFloat(4));
				det.setAhref(rs.getString(5)+rs.getInt(1));
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
		return det;
	}

	@Override
	public detail_det finddetByid(int id) 
	{
		detail_det det=new detail_det();
		conn=bs.getConnection();
		String sql="select * from goods_details where id="+id;
		try
		{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next())
			{
				det.setDet_text(rs.getString(3));
				det.setDet_pic1(rs.getString(4));
				det.setDet_pic2(rs.getString(5));
				det.setDet_pic3(rs.getString(6));
				det.setDet_pic4(rs.getString(7));
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
		return det;
	}

}
