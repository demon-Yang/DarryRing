package com.wwcd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wwcd.entity.Cart;

@Repository
public interface CartDao {
	//添加添加商品到购物车
	public int add(@Param("gid")int gid,@Param("uid")int uid);
	//删除商品
	public int delete(@Param("cid")int cid);
	//根据Uid删除购物车中的商品
	public int deleteByUid(@Param("uid")int uid);
	//按Uid,Gid查询购物车中是否存在该商品
	public Cart findExist(@Param("gid")int gid,@Param("uid")int uid);
	//按Uid查询所有购物车中所有商品
	public List<Cart> findByUid(@Param("uid")int uid);
}
