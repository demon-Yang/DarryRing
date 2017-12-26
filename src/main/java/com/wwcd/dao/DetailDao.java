package com.wwcd.dao;

import org.springframework.stereotype.Repository;

import com.wwcd.entity.Detail;

@Repository
public interface DetailDao {
	//添加地址
	public int add(Detail detail);
}
