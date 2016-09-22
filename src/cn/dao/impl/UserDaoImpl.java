package cn.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.bean.user;
import cn.dao.UserDao;
import cn.dbc.BaseDao;

public class UserDaoImpl implements UserDao
{
	BaseDao bs=new BaseDao();
    Connection conn=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
	@Override
	public user finduserById(int id) 
	{
		user use=new user();
		conn=bs.getConnection();
		String sql="select * from user where id="+id;
		try
		{
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();
			if(rs.next())
			{
				use.setId(rs.getInt(1));
				use.setUsername(rs.getString(2));
				use.setSex(rs.getString(3));
				use.setPhone(rs.getString(4));
				use.setEmail(rs.getString(5));;
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
		return use;
	}
	@Override
	public boolean register_user(String name, String sex, String phone,
			String email, String username, String password) 
	{
		boolean flag=false;
		conn=bs.getConnection();
		try
		{
			String sql0="select id from userlog where username=?";
			PreparedStatement pstmt0=conn.prepareStatement(sql0);
			pstmt0.setString(1, username);
			ResultSet rs0=pstmt0.executeQuery();
			if(!rs0.next())
			{
				String sql="select * from user";
				pstmt=conn.prepareStatement(sql);
				rs=pstmt.executeQuery();
				if(rs.last())
				{
					int uid=rs.getInt(1);
					int useID=uid+1;
					String sql1="insert into user values(?,?,?,?,?)";
					PreparedStatement pstmt1=conn.prepareStatement(sql1);
					pstmt1.setInt(1, useID);
					pstmt1.setString(2, name);
					pstmt1.setString(3, sex);
					pstmt1.setString(4,phone);
					pstmt1.setString(5,email);
					pstmt1.executeUpdate();
					String sql2="insert into userlog values(?,?,?,?)";
					PreparedStatement pstmt2=conn.prepareStatement(sql2);
					pstmt2.setInt(1, 0);
					pstmt2.setString(2, username);
					pstmt2.setString(3, password);
					pstmt2.setInt(4,useID);
					pstmt2.executeUpdate();
					flag=true;
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
		return flag;
	}

}
