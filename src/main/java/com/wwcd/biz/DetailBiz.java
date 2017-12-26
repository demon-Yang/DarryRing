package com.wwcd.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wwcd.dao.DetailDao;
import com.wwcd.entity.Detail;

@Service
public class DetailBiz {
	@Autowired
	private DetailDao detailDao;
	//添加地址
	public int add(Detail detail){
		return detailDao.add(detail);
	}
}
