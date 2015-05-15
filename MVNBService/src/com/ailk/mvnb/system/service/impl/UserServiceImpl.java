package com.ailk.mvnb.system.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ailk.mvnb.system.dao.IUserDao;
import com.ailk.mvnb.system.entity.User;
import com.ailk.mvnb.system.service.IUserService;
@Service("userService")
public class UserServiceImpl implements IUserService {
	private IUserDao<User> userDao;

	public IUserDao<User> getUserDao() {
		return userDao;
	}

	@Resource
	public void setUserDao(IUserDao<User> userDao) {
		this.userDao = userDao;
	}
	public List<User> queryUserForList(){
		String sqlId = "";
		return userDao.queryPoJoList(sqlId, new Object());
	}

	public User queryUser(String id) {
		return userDao.queryPoJo("", id);
	}

	public int regeditUser(User user,String mode) {
		if("email".equals(mode)){
			return userDao.insertPoJo("user.regeditByEmail", user);
		}else{
			return userDao.insertPoJo("user.regeditByPhone", user);
		}
	}

}
