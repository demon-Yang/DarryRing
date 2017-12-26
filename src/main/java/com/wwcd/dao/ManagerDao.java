package com.wwcd.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wwcd.entity.Manager;

@Repository
public interface ManagerDao {
	//管理员登录验证
	public Manager login(@Param("mname")String mname,@Param("mpwd")String pwd);
}
