package cn.service.impl;

import cn.bean.user;
import cn.dao.UserLogDao;
import cn.dao.impl.UserLogDaoImpl;
import cn.service.UserLogService;

public class UserLogServiceImpl implements UserLogService
{
    UserLogDao userLog=new UserLogDaoImpl();
	@Override
	public user login(String username, String password)
	{
		return userLog.findUser(username, password);
	}

}
