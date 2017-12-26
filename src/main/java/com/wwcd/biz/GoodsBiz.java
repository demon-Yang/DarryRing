package com.wwcd.biz;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wwcd.dao.GoodsDao;
import com.wwcd.entity.Goods;
import com.wwcd.view.GoodsView;

@Service
public class GoodsBiz {
	@Autowired
	private GoodsDao goodsDao;
	//添加商品
	public int add(Goods goods){
		return goodsDao.add(goods);
	}
	//修改商品数量
	public int modify(int gnum,int gid){
		return goodsDao.modify(gnum, gid);
	}
	//删除商品
	public int delete(int gid){
		return goodsDao.delete(gid);
	}
	//查询所有商品 
	public List<Goods> findAll(){
		return goodsDao.findAll();
	}
	//查询热销商品
	public List<GoodsView> findHot(){
		return goodsDao.findHot();
	}
	//查询商品剩余库存量 
	public int findGnum(int gid){
		return goodsDao.findGnum(gid);
	}
	//按条件查询商品
	public List<GoodsView> findByCondition(String gseries,String gtype,String gweight,Integer gsize,String orderby,String gname){
		return goodsDao.findByCondition(gseries, gtype, gweight, gsize, orderby, gname);
	}
	//按gid查询单个商品
	public GoodsView findByGid(int gid){
		return goodsDao.findByGid(gid);
	}
}
