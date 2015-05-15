package com.ailk.mvnb.system.service;

import java.util.List;

import com.ailk.mvnb.system.entity.User;

public interface IUserService {
	public List<User> queryUserForList();
	public User queryUser(String id);
	public int regeditUser(User user, String mode);
}
