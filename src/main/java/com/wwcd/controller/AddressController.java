package com.wwcd.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wwcd.biz.AddressBiz;
import com.wwcd.entity.Address;
import com.wwcd.entity.User;

@Controller
@RequestMapping("address")
public class AddressController {
	@Autowired
	private AddressBiz addressBiz;
	/**
	 * 添加地址
	 * */
	@RequestMapping("/add.do")
	public String add(HttpServletRequest request,@RequestParam("addr")String addr,@RequestParam("aname")String aname,@RequestParam("apcode")String apcode,@RequestParam("atel")String atel){
		User user=(User)request.getSession().getAttribute("user");
		int uid=user.getUid();
		String adefault="no";
		Address address=new Address();
		address.setAddr(addr);
		address.setAname(aname);
		address.setApcode(apcode);
		address.setAtel(atel);
		address.setAdefault(adefault);
		address.setUid(uid);
		addressBiz.add(address);
		request.setAttribute("success_info","添加地址成功");
		return "member_addr";
	}
	/**
	 * 删除地址
	 * */
	@RequestMapping("/delete.do")
	public String delete(HttpServletRequest request,@RequestParam("aid")int aid){
		if(addressBiz.delete(aid)>0){
		request.setAttribute("success_info","删除地址成功");
		return "member_addr";
		}else{
		return "member_addr";
		}
	}
	/**
	 * 按Uid查询地址
	 * */
	@RequestMapping("/findByUid.do")
	public String findByUid(HttpServletRequest request,@RequestParam("uid")Integer uid){
		List<Address> address=addressBiz.findByUid(uid);
		if(address!=null){
			request.getSession().setAttribute("address",address);
			return "member_addr";
		}else{
			return "member_addr";
		}
	}
	/**
	 * 设置默认地址
	 * */
	@ResponseBody
	@RequestMapping("/modifyAdefault.do")
	public String modifyAdefault(HttpServletRequest request,@RequestParam("aid")Integer aid){
			int uid = ((User)(request.getSession().getAttribute("user"))).getUid();
			addressBiz.modifyAdefault(aid,uid);
			return "1";
	}
}
