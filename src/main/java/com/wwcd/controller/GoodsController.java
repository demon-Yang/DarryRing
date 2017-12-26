package com.wwcd.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wwcd.biz.GoodsBiz;
import com.wwcd.entity.Goods;
import com.wwcd.view.GoodsView;

@Controller
@RequestMapping("goods")
public class GoodsController {
	@Autowired
	private GoodsBiz goodsBiz;
	/**
	 * 添加商品
	 * */
	@RequestMapping("/add.do")
	public String add(HttpServletRequest request,@RequestParam("gname")String gname,
			@RequestParam("gseries")String gseries,@RequestParam("gtype")String gtype,
			@RequestParam("gweight")String gweight,@RequestParam("gsize")String gsize,
			@RequestParam("gnum")int gnum,@RequestParam("gprice")double gprice,
			@RequestParam("gbrief")String gbrief,@RequestParam("gimg1")MultipartFile gimg1,
			@RequestParam("gimg2")MultipartFile gimg2, @RequestParam("gimg3")MultipartFile gimg3,@RequestParam("gimg4")MultipartFile gimg4){
		Goods goods = new Goods();
		goods.setGname(gname);
		goods.setGseries(gseries);
		goods.setGtype(gtype);
		goods.setGweight(gweight);
		goods.setGsize(gsize);
		goods.setGprice(gprice);
		goods.setGnum(gnum);
		goods.setGbrief(gbrief);
		//图片保存路径
		String path = request.getSession().getServletContext().getRealPath("upload/");
		
		//获取图片1全称
		String img1 = gimg1.getOriginalFilename();
		//获取图片的后缀
		String fileType1 = img1.substring(img1.lastIndexOf("."));
		//新建文件，并用时间戳命名
		String fileName1 = System.currentTimeMillis()+"1"+fileType1;
		File targetFile1 = new File(path,fileName1);
		if (!targetFile1.exists()) {
			targetFile1.mkdirs();
		}
		// 保存文件到指定路径
		try {
			gimg1.transferTo(targetFile1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		goods.setGimg1("upload/"+fileName1);
		
		//获取图片2全称
		String img2 = gimg2.getOriginalFilename();
		//获取图片的后缀
		String fileType2 = img2.substring(img2.lastIndexOf("."));
		//新建文件，并用时间戳命名
		String fileName2 = System.currentTimeMillis()+"2"+fileType2;
		File targetFile2 = new File(path,fileName2);
		if (!targetFile2.exists()) {
			targetFile2.mkdirs();
		}
		// 保存文件到指定路径
		try {
			gimg2.transferTo(targetFile2);
		} catch (Exception e) {
			e.printStackTrace();
		}
		goods.setGimg2("upload/"+fileName2);
		
		//获取图片3全称
		String img3 = gimg3.getOriginalFilename();
		//获取图片的后缀
		String fileType3 = img3.substring(img3.lastIndexOf("."));
		//新建文件，并用时间戳命名
		String fileName3 = System.currentTimeMillis()+"3"+fileType3;
		File targetFile3 = new File(path,fileName3);
		if (!targetFile3.exists()) {
			targetFile3.mkdirs();
		}
		// 保存文件到指定路径
		try {
			gimg3.transferTo(targetFile3);
		} catch (Exception e) {
			e.printStackTrace();
		}
		goods.setGimg3("upload/"+fileName3);
		
		//获取图片4全称
		String img4 = gimg4.getOriginalFilename();
		//获取图片的后缀
		String fileType4 = img4.substring(img4.lastIndexOf("."));
		//新建文件，并用时间戳命名
		String fileName4 = System.currentTimeMillis()+"4"+fileType4;
		File targetFile4 = new File(path,fileName4);
		if (!targetFile4.exists()) {
			targetFile4.mkdirs();
		}
		// 保存文件到指定路径
		try {
			gimg4.transferTo(targetFile4);
		} catch (Exception e) {
			e.printStackTrace();
		}
		goods.setGimg4("upload/"+fileName4);
		
		//写进数据库
		goodsBiz.add(goods);
		
		return "redirect:/goods/findAll.do"; 
	}
	/**
	 * 修改商品数量
	 * */
	@ResponseBody
	@RequestMapping("/modify.do")
	public String modify(HttpServletRequest request,@RequestParam("gid")int gid,@RequestParam("oldNum")int oldNum,@RequestParam("addNum")int addNum){
		goodsBiz.modify(oldNum+addNum, gid);
		return "1";
	}
	/**
	 * 删除商品
	 * */
	@ResponseBody
	@RequestMapping("/delete.do")
	public String delete(HttpServletRequest request,@RequestParam("gid")int gid){
		goodsBiz.delete(gid);
		return "1";
	}
	/**
	 * 查询所有商品
	 * */
	@RequestMapping("/findAll.do")
	public String findAll(HttpServletRequest request,@RequestParam(value="pageNum",defaultValue="1")int pageNum,
			@RequestParam(value="pageSize",defaultValue="10")int pageSize){
		PageHelper.startPage(pageNum, pageSize);
		List<Goods> list = goodsBiz.findAll();
		PageInfo<Goods> pages = new PageInfo<>(list);
		request.setAttribute("pages",pages);
		return "admin/goods";
	}
	/**
	 * 查询热销商品
	 * */
	@RequestMapping("/index.do")
	public String findHot(HttpServletRequest request){
		List<GoodsView> goodsList = goodsBiz.findHot();
		request.setAttribute("goodsList",goodsList);
		return "index";
	}
	/**
	 * 按条件查询商品
	 * */
	@RequestMapping("/findByCondition.do")
	public String findByCondition(HttpServletRequest request,@RequestParam(value="pageNum",defaultValue="1")int pageNum,
			@RequestParam(value="pageSize",defaultValue="12")int pageSize,@RequestParam(value="gseries",required=false)String gseries,
			@RequestParam(value="gtype",required=false)String gtype,@RequestParam(value="gweight",required=false)String gweight,
			@RequestParam(value="gsize",required=false)Integer gsize,@RequestParam(value="orderby",required=false)String orderby,
			@RequestParam(value="gname",required=false)String gname){
		PageHelper.startPage(pageNum, pageSize);
		List<GoodsView> list = goodsBiz.findByCondition(gseries, gtype, gweight, gsize, orderby, gname);
		PageInfo<GoodsView> pages = new PageInfo<>(list);
		request.setAttribute("pages",pages);
		request.setAttribute("gseries", gseries);
		request.setAttribute("gtype",gtype);
		request.setAttribute("gweight",gweight);
		request.setAttribute("gsize",gsize);
		request.setAttribute("orderby",orderby);
		request.setAttribute("gname",gname);
		return "lists";
	}
	/**
	 * 按gid查询单个商品
	 * */
	@RequestMapping("/findByGid.do")
	public String findByGid(HttpServletRequest request,@RequestParam(value="gid")int gid){
		GoodsView goodsView = goodsBiz.findByGid(gid);
		request.setAttribute("goodsView",goodsView);
		return "detail";
	}
}
