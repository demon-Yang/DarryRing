package com.wwcd.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wwcd.dao.CartDao;
import com.wwcd.entity.Address;
import com.wwcd.entity.Cart;

@Service
public class CartBiz {
	@Autowired
	private CartDao cartDao;
	@Autowired
	private AddressBiz addressBiz;
	//添加添加商品到购物车
	public int add(int gid,int uid){
		return cartDao.add(gid, uid);
	}
	//删除购物车中的商品
	public int delete(int cid){
		return cartDao.delete(cid);
	}
	//按Uid,Gid查询购物车中是否存在该商品
	public Cart findExist(int gid,int uid){
		return cartDao.findExist(gid, uid);
	}
	//根据Uid删除购物车中的商品
	public int deleteByUid(int uid){
		return cartDao.deleteByUid(uid);
	}
	//按Uid查询所有购物车中所有商品
	public List<Cart> findByUid(int uid){
		return cartDao.findByUid(uid);
	}
	//购物车详情
	public List<Address> findAddress(int uid){
		return addressBiz.findByUid(uid);
	}
}
