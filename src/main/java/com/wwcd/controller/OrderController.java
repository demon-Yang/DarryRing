package com.wwcd.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wwcd.biz.OrderBiz;
import com.wwcd.entity.Detail;
import com.wwcd.entity.Order;
import com.wwcd.entity.User;
import com.wwcd.view.OrderView;

@Controller
@RequestMapping("order")
public class OrderController {
	@Autowired
	private OrderBiz orderBiz;
	/**
	 * 添加订单
	 * */
	@ResponseBody
	@RequestMapping("/add.do")
	public String add(HttpServletRequest request,@RequestParam("aid")int aid,@RequestParam("gid[]")int []gid,
					  @RequestParam("ototal")double ototal,@RequestParam(value="ocontent",required=false)String ocontent){
		for(int i=0;i<gid.length;i++){
			int gnum = orderBiz.findGnum(gid[i]);
			if(gnum <= 0){
				return "抱歉，购物车中的'"+(i+1)+"'号商品已无库存，请选择别的商品";
			}
		}
		int uid = ((User)(request.getSession().getAttribute("user"))).getUid();
		Order order = new Order();
		order.setAid(aid);
		order.setOcontent(ocontent);
		order.setOlogistics("");
		order.setUid(uid);
		order.setOstatus("未受理");
		order.setOtotal(ototal);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String odate = sdf.format(new Date());
		order.setOdate(odate);
		orderBiz.add(order);
		
		for(int i=0;i<gid.length;i++){
			//添加到订单详情里面
			Detail detail = new Detail();
			detail.setGid(gid[i]);
			detail.setOid(order.getOid());
			orderBiz.addDetail(detail);
			//商品库存减一
			int gnum = orderBiz.findGnum(gid[i]);
			orderBiz.modifyGnum(--gnum, gid[i]);
		}
		//删除购物车中的商品
		orderBiz.deleteCart(uid);
		return "1";
	}
	/**
	 * 按Uid查询订单 
	 * */
	@RequestMapping("findByUid.do")
	public String findByUid(HttpServletRequest request){
		int uid = ((User)(request.getSession().getAttribute("user"))).getUid();
		List<OrderView> list = orderBiz.findByUid(uid);
		request.setAttribute("orderList",list);
		return "member_order";
	}
	/**
	 * 按Oid查询订单 
	 * */
	@RequestMapping("findByOid.do")
	public String findByOid(HttpServletRequest request,@RequestParam("oid")int oid){
		OrderView orderView = orderBiz.findByOid(oid);
		request.setAttribute("orderView",orderView);
		return "member_order_detail";
	}
	
	/**
	 * 后台查询所有订单
	 * */
	@RequestMapping("/findAll.do")
	public String findAll(HttpServletRequest request,@RequestParam(value="pageNum",defaultValue="1")int pageNum,
			@RequestParam(value="pageSize",defaultValue="10")int pageSize){
		PageHelper.startPage(pageNum, pageSize);
		List<OrderView> list = orderBiz.findAll();
		PageInfo<OrderView> pages = new PageInfo<>(list);
		request.setAttribute("pages",pages);
		request.setAttribute("allNum", list.size());
		return "admin/order";
	}
	
	/**
	 * 后台查询未受理订单
	 * */
	@RequestMapping("/findAllUn.do")
	public String findAllUn(HttpServletRequest request,@RequestParam(value="pageNum",defaultValue="1")int pageNum,
			@RequestParam(value="pageSize",defaultValue="10")int pageSize){
		PageHelper.startPage(pageNum, pageSize);
		List<OrderView> list = orderBiz.findAllUn();
		PageInfo<OrderView> pages = new PageInfo<>(list);
		request.setAttribute("pages",pages);
		request.setAttribute("allUnNum", list.size());
		return "admin/order_unfinished";
	}

	/**
	 * 处理订单
	 * */
	@RequestMapping("/modify.do")
	public String modify(HttpServletRequest request,@RequestParam("oid")int oid,@RequestParam("ologistics")String ologistics){
		orderBiz.modify(oid, ologistics);
		return "admin/order_unfinished";
	}
	
	
}
