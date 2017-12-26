package com.wwcd.dao;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.wwcd.entity.User;

@Repository
public interface UserDao {
	//用户登录验证
	public User login(@Param("utel")String utel,@Param("upwd")String upwd);
	//根据用户的手机号查找用户是否存在
	public User findByUtel(@Param("utel")String utel);
	//用户注册
	public int register(User user);
	//修改密码
	public int modifyUpwd(@Param("utel")String utel,@Param("upwd")String upwd);
	//用户修改个人信息（csr）
	public int xInformation(User user);
	//用户分割日期
	public User information(@Param("utel")String utel);
	//修改头像
	public int modifyUimg(@Param("utel")String utel,@Param("uimg")String uimg);
}
