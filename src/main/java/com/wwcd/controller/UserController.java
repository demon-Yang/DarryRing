package com.wwcd.controller;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.wwcd.biz.UserBiz;
import com.wwcd.entity.User;

@Controller
@RequestMapping("user")
public class UserController {
	@Autowired
	private UserBiz userBiz;
	/**
	 * 登录验证
	 * */
	@RequestMapping("/login.do")
	public String login(HttpServletRequest request,@RequestParam("utel")String utel,@RequestParam("upwd")String upwd){
		User user = userBiz.login(utel, upwd);
		if(user != null){
			request.getSession().setAttribute("user",user);
			return "redirect:/goods/index.do";
		}else{
			request.setAttribute("error_info","手机号或密码错误，请重新输入！！");
			return "login";
		}
	}
	/**
	 * 根据用户的手机号查找用户是否存在
	 * */
	@ResponseBody
	@RequestMapping("/findByUtel.do")
	public String findByUtel(HttpServletRequest request,@RequestParam("mobile")String utel){
		if(userBiz.findByUtel(utel) != null)
			return "1";
		else
			return "0";
	}
	/**
	 * 用户注册
	 * */
	@RequestMapping("/register.do")
	public String register(HttpServletRequest request,@RequestParam("mobile")String utel,@RequestParam("mobile_pwd")String upwd){
			User user = new User();
			user.setUtel(utel);
			user.setUpwd(upwd);
			user.setUnick("user");
			user.setUsex("男");
			user.setUimg("images/mem.jpg");
			userBiz.register(user);
			request.setAttribute("success_info","注册成功");
			return "reg";
	}
	/**
	 * 忘记密码修改密码
	 * */
	@RequestMapping("/modifyUpwd.do")
	public String modifyUpwd(HttpServletRequest request,@RequestParam("mobile")String utel,@RequestParam("mobile_pwd")String upwd){
		userBiz.modifyUpwd(utel, upwd);
		request.setAttribute("success_info","修改成功");
		return "forget";
	}
	

	/**
	 *用户修改个人信息（csr） 
	 */
	@RequestMapping("/xInformation.do")
	public String xInformation(HttpServletRequest request,@RequestParam("nicname")String unick,@RequestParam("realName")String uname,@RequestParam("sex")String usex,@RequestParam("selYear")String selYear,@RequestParam("selMonth")String selMonth,@RequestParam("selDay")String selDay,@RequestParam("street")String uaddr){
		User user=(User)request.getSession().getAttribute("user");
		String ubirth=selYear+"-"+selMonth+"-"+selDay;
		user.setUnick(unick);
		user.setUname(uname);
		user.setUsex(usex);
		user.setUbirth(ubirth);
		user.setUaddr(uaddr);
		userBiz.xInformation(user);
		request.setAttribute("success_info","修改成功");
		//更改后存到session中
		User suser = (User)(request.getSession().getAttribute("user"));
		suser.setUnick(unick);
		suser.setUname(uname);
		suser.setUsex(usex);
		suser.setUbirth(ubirth);
		suser.setUaddr(uaddr);
		request.getSession().setAttribute("user",suser);
		return "member_info";
	}
	
	/**
	 * 用户分割日期(csr)
	 * */
	@RequestMapping("/information.do")
	public String information(HttpServletRequest request,@RequestParam("utel")String utel){
		User user = userBiz.information(utel);
		if(user.getUbirth() != null){
			String ubirth=user.getUbirth();
			String selYear=ubirth.substring(0,4);
			String selMonth=ubirth.substring(5,7);
			String selDay=ubirth.substring(8,10);
			request.getSession().setAttribute("selYear",selYear);
			request.getSession().setAttribute("selMonth",selMonth);
			request.getSession().setAttribute("selDay",selDay);
			return "member_info";
		}else{
			return "member_info";
		}
	}

	/**
	 * 验证输入的原始密码是否正确
	 * */
	@ResponseBody
	@RequestMapping("/findUpwdByUtel.do")
	public String findUpwdByUtel(HttpServletRequest request,@RequestParam("mobile_pwd")String upwd){
		//在session中取出密码
		String oupwd = ((User)(request.getSession().getAttribute("user"))).getUpwd();
		//取出的密码与传过来的值匹配
		if(upwd.equals(oupwd))
			return "1";
		else
			return "0";
	}
	/**
	 * 个人中心修改密码
	 * */
	@RequestMapping("/modifyUpwd1.do")
	public String modifyUpwd(HttpServletRequest request,@RequestParam("mobile_pwd1")String upwd){
		String utel=((User)(request.getSession().getAttribute("user"))).getUtel();
		userBiz.modifyUpwd(utel, upwd);
		request.setAttribute("success_info","修改成功");
		//更改后存到session中
		User user = (User)(request.getSession().getAttribute("user"));
		user.setUpwd(upwd);
		request.getSession().setAttribute("user",user);
		return "member_pwd";
	}

	/**
	 * 修改头像
	 * */
	@RequestMapping("/modifyUimg.do")
	public String modifyUimg(HttpServletRequest request,
			@RequestParam("uimg") MultipartFile uimg) {
		// 图片保存路径
		String path = request.getSession().getServletContext()
				.getRealPath("upload/uimg/");

		// 获取图片全称
		String img= uimg.getOriginalFilename();
		// 获取图片的后缀
		String fileType1 = img.substring(img.lastIndexOf("."));
		// 新建文件，并用时间戳命名
		String fileName1 = System.currentTimeMillis() + "1" + fileType1;
		File targetFile1 = new File(path, fileName1);
		if (!targetFile1.exists()) {
			targetFile1.mkdirs();
		}
		// 保存文件到指定路径
		try {
			uimg.transferTo(targetFile1);
		} catch (Exception e) {
			e.printStackTrace();
		}
		String utel = ((User) (request.getSession().getAttribute("user")))
				.getUtel();
		userBiz.modifyUimg(utel,"upload/uimg/"+fileName1);
		//更改后存到session中
		User user = (User)(request.getSession().getAttribute("user"));
		user.setUimg("upload/uimg/"+fileName1);
		request.getSession().setAttribute("user",user);
		return "member_avatar";
	}
	/**
	 * 退出登录
	 * */
	@ResponseBody
	@RequestMapping("loginout.do")
	public String loginout(HttpServletRequest request){
		request.getSession().setAttribute("user",null);
		return "1";
	}
}
