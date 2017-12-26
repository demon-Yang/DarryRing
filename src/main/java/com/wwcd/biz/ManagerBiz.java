package com.wwcd.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wwcd.dao.ManagerDao;
import com.wwcd.entity.Manager;

@Service
public class ManagerBiz {
	@Autowired
	private ManagerDao managerDao;
	//管理员登录验证
	public Manager login(String mname,String mpwd){
		return managerDao.login(mname, mpwd);
	}
}
