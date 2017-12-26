package com.wwcd.controller;

import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wwcd.biz.CartBiz;
import com.wwcd.entity.Address;
import com.wwcd.entity.Cart;
import com.wwcd.entity.User;

@Controller
@RequestMapping("cart")
public class CartController {
	@Autowired
	private CartBiz cartBiz;
	/**
	 * 添加商品到购物车
	 * */
	@ResponseBody
	@RequestMapping("/add.do")
	public String add(HttpServletRequest request,@RequestParam("gid")int gid){
		int uid = ((User)(request.getSession().getAttribute("user"))).getUid();
		if(cartBiz.findExist(gid, uid) == null)
			cartBiz.add(gid, uid);
		else
			return "0";
		return "1";
	}
	/**
	 * 按Uid查询所有购物车中所有商品
	 * */
	@RequestMapping("/findByUid.do")
	public String findByUid(HttpServletRequest request){
		int uid = ((User)(request.getSession().getAttribute("user"))).getUid();
		List<Cart> list = cartBiz.findByUid(uid);
		if(list != null){
			Iterator<Cart> iterator = list.iterator();
			double total = 0;
			while(iterator.hasNext()){
				total += iterator.next().getGoods().getGprice();
			}
			request.setAttribute("cartTotal", total);
			request.setAttribute("cartNum",list.size());
		}
		request.setAttribute("cartList",list);
		return "cart";
	}
	/**
	 * 删除购物车中的商品
	 * */
	@ResponseBody
	@RequestMapping("/delete.do")
	public String delete(HttpServletRequest request,@RequestParam("cid")int cid){
		cartBiz.delete(cid);
		return "1";
	}
	/**
	 * 根据Uid删除购物车中的商品
	 * */
	@ResponseBody
	@RequestMapping("/deleteByUid.do")
	public String deleteByUid(HttpServletRequest request){
		int uid = ((User)(request.getSession().getAttribute("user"))).getUid();
		cartBiz.deleteByUid(uid);
		return "1";
	}
	/**
	 * 购物车详情
	 * */
	@RequestMapping("/detail.do")
	public String detail(HttpServletRequest request){
		int uid = ((User)(request.getSession().getAttribute("user"))).getUid();
		List<Address> addressList = cartBiz.findAddress(uid);
		List<Cart> list = cartBiz.findByUid(uid);
		if(list != null){
			Iterator<Cart> iterator = list.iterator();
			double total = 0;
			while(iterator.hasNext()){
				total += iterator.next().getGoods().getGprice();
			}
			request.setAttribute("cartTotal", total);
			request.setAttribute("cartNum",list.size());
		}
		request.setAttribute("addressList",addressList);
		request.setAttribute("cartList",list);
		return "cart_order";
	}
}
