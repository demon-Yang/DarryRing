package com.wwcd.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wwcd.dao.OrderDao;
import com.wwcd.entity.Detail;
import com.wwcd.entity.Order;
import com.wwcd.view.OrderView;

@Service
public class OrderBiz {

	@Autowired
	private OrderDao orderDao;
	@Autowired
	private DetailBiz detailBiz;
	@Autowired
	private CartBiz cartBiz;
	@Autowired
	private GoodsBiz goodsBiz;
	//添加订单
	public int add(Order order){
		return orderDao.add(order);
	}
	//查询商品剩余库存量
	public int findGnum(int gid){
		return goodsBiz.findGnum(gid);
	}
	//添加到订单详情表中
	public int addDetail(Detail detail){
		return detailBiz.add(detail);
	}
	//商品库存减一
	public int modifyGnum(int gnum,int gid){
		return goodsBiz.modify(gnum, gid);
	}
	//删除购物车的商品
	public int deleteCart(int uid){
		return cartBiz.deleteByUid(uid);
	}
	// 按Uid查询订单 
	public List<OrderView> findByUid(int uid){
		return orderDao.findByUid(uid);
	}
	// 按Oid查询订单 
	public OrderView findByOid(int oid){
		return orderDao.findByOid(oid);
	}
	//后台查询所有订单
	public List<OrderView> findAll(){
		return orderDao.findAll();
	}
	//后台查询未受理订单
	public List<OrderView> findAllUn(){
		return orderDao.findAllUn();
	}
	//订单受理
	public int modify(int oid,String ologistics){
		return orderDao.modify(oid, ologistics);
	}
}
