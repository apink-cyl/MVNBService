package com.ailk.mvnb.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
/**
 * 
 * <p>Project: Credo's Base</p>
 * <p>Description:ת����ҳ��ĵ����� TODO</p>
 * <p>Copyright (c) 2015��5��14�� ����1:20:06 ChenYuLu.All Rights Reserved.</p>
 * @author <a href="cylinbeijing2013@163.com">ChenYuLu</a>
 */
@Controller
public class RequestDispatcherController {
	
	@RequestMapping("/forward")
	public String RequestDispatcher(String key){
		return "WEB-INF/jsp/"+key;
	}

}
