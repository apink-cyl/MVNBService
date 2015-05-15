package com.ailk.mvnb.system.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.ailk.mvnb.system.entity.User;
import com.ailk.mvnb.system.service.IUserService;

@Controller
@RequestMapping("/user")
public class UserController {
	
	private IUserService userService;

	public void login() {
		System.out.println("ÄãºÃ°¡");
	}
	@RequestMapping("/regedit")
	public String regeditUser(User user, HttpServletRequest request, HttpSession session){
		System.out.println("UserAction.regeditUser()");
		String mode = request.getParameter("mode");
		int i = userService.regeditUser(user, mode);
		
		if("email".equals(mode)){
			//·¢ËÍÓÊ¼þ
			
		}
		return "WEB-INF/jsp/index";
	}
	
	@RequestMapping("/list")
	public String listUser(){
		System.out.println("UserController.listUser()");
		List<User> userList = userService.queryUserForList();
		return "WEB-INF/jsp/index";
	}
	public IUserService getUserService() {
		return userService;
	}

	@Resource
	public void setUserService(IUserService userService) {
		this.userService = userService;
	}
}
