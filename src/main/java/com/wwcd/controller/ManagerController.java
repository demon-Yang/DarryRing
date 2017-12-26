package com.wwcd.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wwcd.biz.ManagerBiz;
import com.wwcd.entity.Manager;

@Controller
@RequestMapping("manager")
public class ManagerController {
	@Autowired
	private ManagerBiz managerBiz;
	/**
	 * 管理员登录验证
	 * */
	@ResponseBody
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request,@RequestParam("mname")String mname,@RequestParam("mpwd")String mpwd){
		Manager manager = managerBiz.login(mname, mpwd);
		if(manager != null){
			request.getSession().setAttribute("manager",manager);
			return "1";
		}else{
			return "0";
		}
	}
	/**
	 * 管理员退出登录
	 * */
	@ResponseBody
	@RequestMapping("loginout.do")
	public String loginout(HttpServletRequest request){
		request.getSession().setAttribute("manager",null);
		return "1";
	}
}
