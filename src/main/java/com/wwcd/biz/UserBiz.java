package com.wwcd.biz;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.wwcd.dao.UserDao;
import com.wwcd.entity.User;

@Service
public class UserBiz {
	@Autowired
	private UserDao userDao;
	//用户登录验证
	public User login(String utel,String upwd){
		return userDao.login(utel, upwd);
	}
	//根据用户的手机号查找用户是否存在
	public User findByUtel(String utel){
		return userDao.findByUtel(utel);
	}
	//用户注册
	public int register(User user){
		return userDao.register(user);
	}
	//修改密码
	public int modifyUpwd(String utel,String upwd){
		return userDao.modifyUpwd(utel, upwd);
	}
	//用户修改个人信息(csr)
	public int xInformation(User user) {
		return userDao.xInformation(user);
	}
	//分割日期
	public User information(String utel) {
		// TODO Auto-generated method stub
		return userDao.information(utel);
	}
	//修改头像
	public int modifyUimg(String utel,String uimg){
		return userDao.modifyUimg(utel, uimg);
	}
}
