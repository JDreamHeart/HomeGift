package cn.service.impl;

import cn.bean.user;
import cn.dao.UserDao;
import cn.dao.impl.UserDaoImpl;
import cn.service.UserService;

public class UserServiceImpl implements UserService
{
    UserDao userDao=new UserDaoImpl();
	@Override
	public user searchUser(int id)
	{
		return userDao.finduserById(id);
	}
	@Override
	public boolean s_register_user(String name, String sex, String phone,
			String email, String username, String password) 
	{
		return userDao.register_user(name, sex, phone, email, username, password);
	}

}
