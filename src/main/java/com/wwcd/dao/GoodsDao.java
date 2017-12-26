package com.wwcd.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wwcd.entity.Goods;
import com.wwcd.view.GoodsView;

@Repository
public interface GoodsDao {
	//添加商品
	public int add(Goods goods);
	//修改商品数量
	public int modify(@Param("gnum")int gnum,@Param("gid")int gid);
	//删除商品
	public int delete(@Param("gid")int gid);
	//查询所有商品 
	public List<Goods> findAll();
	//查询热销商品
	public List<GoodsView> findHot();
	//查询商品剩余库存量 
	public int findGnum(@Param("gid")int gid);
	//按条件查询商品
	public List<GoodsView> findByCondition(@Param("gseries")String gseries,@Param("gtype")String gtype,@Param("gweight")String gweight,
									   @Param("gsize")Integer gsize,@Param("orderby")String orderby,@Param("gname")String gname);
	//按gid查询单个商品
	public GoodsView findByGid(@Param("gid")int gid);
}
