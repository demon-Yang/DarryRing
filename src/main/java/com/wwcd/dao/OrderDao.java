package com.wwcd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wwcd.entity.Order;
import com.wwcd.view.OrderView;

@Repository
public interface OrderDao {
	//添加订单
	public int add(Order order);
	// 按Uid查询订单 
	public List<OrderView> findByUid(@Param("uid")int uid);
	// 按Oid查询订单 
	public OrderView findByOid(@Param("oid")int oid);
	//查询所有订单
	public List<OrderView> findAll();
	//查询未受理订单
	public List<OrderView> findAllUn();
	//订单受理
	public int modify(@Param("oid")int oid,@Param("ologistics")String ologistics);
}
