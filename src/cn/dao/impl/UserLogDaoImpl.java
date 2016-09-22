package cn.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import cn.bean.user;
import cn.dao.UserLogDao;
import cn.dbc.BaseDao;

public class UserLogDaoImpl implements UserLogDao
{
	UserDaoImpl userDao=new UserDaoImpl();
	
    BaseDao bs=new BaseDao();
    Connection conn=null;
    PreparedStatement pstmt=null;
    ResultSet rs=null;
	@Override
	public user findUser(String username, String password) 
	{
		user use=null;
		conn=bs.getConnection();
		String sql="select * from userlog where username=? and password=?";
		try
		{
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,username);
			pstmt.setString(2,password);
			rs=pstmt.executeQuery();
			if(rs.next())
			{
				use=userDao.finduserById(rs.getInt(4));
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

}
