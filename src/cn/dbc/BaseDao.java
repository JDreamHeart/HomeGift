package cn.dbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class BaseDao
{
    public Connection getConnection()
    {
    	Connection conn=null;
    	try
		{
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/nyshop?characterEncoding=utf-8","root","123456");
		} 
    	catch (Exception e)
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return conn;
    }
    
    public void closeConn(Connection conn,PreparedStatement pstmt,ResultSet rs)
    {
    	try
		{
			if(rs!=null)
			{
				rs.close();
			}
			if(pstmt!=null)
			{
				pstmt.close();
			}
			if(conn!=null)
			{
				conn.close();
			}
		} 
    	catch (Exception e)
		{
			// TODO: handle exception
		}
    }
}
