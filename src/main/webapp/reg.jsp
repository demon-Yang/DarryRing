<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
<head>
	<meta charset="utf-8">
	<title>会员注册</title>
	<link href="<%=path%>/css/style.css" type="text/css" rel="stylesheet" />
</head>

<body>
	<div class="wrap">
		<!-- start of 头部导航-->
		<div class="head_top">
			<div class="head clearfix">
				<!--头部左边-->
				<div class="topLeft left">
					<a href="index.jsp" title="Darry Ring"> <img width="186"
						height="42" src="<%=path%>/images/logo_01.png ">
					</a> <span>求婚钻戒领导品牌</span>
				</div>
				<!--头部左边end-->
				<!--头部右边-->
				<ul class="topRight right">
					<li>国际权威认证</li>
					<li class="tr_2">15天无理由退换</li>
					<li class="tr_3">终身保养</li>
				</ul>
				<!--头部左边end-->
			</div>
		</div>
		<!--end of 头部导航-->
		<!-- starto of container -->
		<div class="container">
			<!--中间内容-->
			<div class="cmain ddd">
				<!--内容右边-->
				<div class="cort-right right">
					<div class="r_bg"></div>
					<!--登陆框内-->
					<div class="cr_border">
						<div class="tits" style="display:none;">
							<span class="focus ph"><em></em>手机注册</span>
						</div>
						<!--手机注册-->

						<form method="post" action="<%=path%>/user/register.do" class="form_first">
							<input type="hidden" value="1" name="type"> 
							<div style="" class="photo_show">
								<!--邮箱-->
								<div class="the_input">
									<span class="member"></span> <input type="text"
										placeholder="请输入手机号码" class="al_Input dr_photo" value=""
										name="mobile">
								</div>
								<!--邮箱end-->
								<!--密码-->
								<div style="border:none" class="the_input">
									<span class="password"></span> <input type="text"
										style="width:133px;" placeholder="请输入验证码" class="al_Input ls"
										value="" name="mobile_code"> <input type="button"
										value="获取验证码" class="action mobile_action">
								</div>

								<!--验证码end-->
								<!--密码-->
								<div class="the_input ">
									<span class="pw"></span> <input type="password"
										placeholder="请输入密码" maxlength="21" class="al_Input dr_photo"
										value="" name="mobile_pwd">
								</div>
								<!--密码end-->
								<!--密码-->
								<div class="the_input ">
									<span class="pw"></span> <input type="password"
										placeholder="确认密码" maxlength="21" class="al_Input dr_photo"
										value="" name="mobile_pwd_confirm">
								</div>
								<!--密码end-->

								<div class="other_input">
									<div class="left">
										<input type="checkbox" name="mobile_check" id="check">
										<label for="check">已经仔细阅读并同意<a target="_blank"
											href="javascript:void(0)">《Darry Ring用户注册协议》</a></label>
									</div>
								</div>

								<!--其他合作-->
								<div class="other_hz">
									<input type="button" value="立即注册" id="mobile_reg" class="up">
								</div>
								<!--其他合作end-->
							</div>
						</form>
						<!--手机注册end-->

					</div>
					<!--登陆框内end-->
				</div>
				<!--内容右边end-->
			</div>
			<!--中间内容end-->
		</div>
		<!-- end of container -->

		<!--底部end-->
		<div class="cmain bc_yz">
			<div class="db_cort">
				<p>Copyright &copy; 2006-2015 www.darryring.com 戴瑞珠宝 All Rights
					Reserved. 闽ICP备11012085号</p>
				<p>中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票</p>
			</div>
		</div>

		<script src="<%=path%>/js/jquery.js" type="text/javascript"></script>
		<script type="text/javascript">
			//注册成功后跳转页面
			var success_info = '${success_info}';
			if(success_info != null && success_info.trim() != ''){
				alert(success_info);
				location.href = "<%=path%>/login.jsp";
			}
			//验证参数
			$('.up') .click( function() {
					$('.ts_wrong').remove();
					$('.al_Input').removeClass('error');

					if ($('.ph').hasClass('focus')) {
						//手机登录
						var mobile = $('input[name="mobile"]').val();
						if (mobile == "") {
							var notice = '<div class="ts_wrong"><span id="wrong">请输入手机号码！</span></div>';
							$('input[name="mobile"]').parent().after(notice);
							$('input[name="mobile"]').addClass('error');
							return false;
						}

						if (!/^(((13[0-9]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test(mobile)) {
							var notice = '<div class="ts_wrong"><span id="wrong">手机号码格式错误 请重新输入！</span></div>';
							$('input[name="mobile"]').parent().after(notice);
							$('input[name="mobile"]').addClass('error');
							return false;
						}

						var code = $('input[name="mobile_code"]').val();
						if (code == "") {
							var notice = '<div class="ts_wrong"><span id="wrong">请输入验证码！</span></div>';
							$('input[name="mobile_code"]').parent().after(notice);
							$('input[name="mobile_code"]').addClass('error');
							return false;
						}

						var pwd = $('input[name="mobile_pwd"]').val();
						if (pwd == "") {
							var notice = '<div class="ts_wrong"><span id="wrong">请输入密码！</span></div>';
							$('input[name="mobile_pwd"]').parent().after(notice);
							$('input[name="mobile_pwd"]').addClass('error');
							return false;
						}

						if (pwd.length < 6) {
							var notice = '<div class="ts_wrong"><span id="wrong">密码长度为6~21个字符！</span></div>';
							$('input[name="mobile_pwd"]').parent().after(notice);
							$('input[name="mobile_pwd"]').addClass( 'error');
							return false;
						} else if (pwd.length > 21) {
							var notice = '<div class="ts_wrong"><span id="wrong">密码长度为6~21个字符！</span></div>';
							$('input[name="mobile_pwd"]').parent().after(notice);
							$('input[name="mobile_pwd"]').addClass('error');
							return false;
						}

						var pwd_confirm = $('input[name="mobile_pwd_confirm"]').val();
						if (pwd_confirm == "") {
							var notice = '<div class="ts_wrong"><span id="wrong">请输入确认密码！</span></div>';
							$('input[name="mobile_pwd_confirm"]').parent().after(notice);
							$('input[name="mobile_pwd_confirm"]').addClass('error');
							return false;
						}

						if (pwd != pwd_confirm) {
							var notice = '<div class="ts_wrong"><span id="wrong">密码与确认密码不一致 请重新输入！</span></div>';
							$('input[name="mobile_pwd_confirm"]').parent().after(notice);
							$('input[name="mobile_pwd_confirm"]').addClass('error');
							return false;
						}

						if (!$('input[name="mobile_check"]').is(':checked')) {
							var notice = '<div class="ts_wrong"><span id="wrong">请阅读并同意用户注册协议！</span></div>';
							$('input[name="mobile_check"]').parent().parent().after(notice);
							return false;
						}

						//检测手机号码是否使用过
						$ .ajax({
								type : "POST",
								url : "<%=path%>/user/findByUtel.do",
								data : "mobile=" + mobile,
								success : function(msg) {
									if (msg == 1) {
										var notice = '<div class="ts_wrong"><span id="wrong">该手机号码已被注册！</span></div>';
										$( 'input[name="mobile"]').parent().after(notice);
										$( 'input[name="mobile"]').addClass('error');
										return false;
									} else{
										$('.form_first').submit();
									}
								}
						});

					}
				});
			//发送验证码
			$('.mobile_action') .click( function() {
					$('.ts_wrong').remove();
					$('.al_Input').removeClass('error');
					var mobile = $('input[name="mobile"]').val();
					if (mobile == "") {
						var notice = '<div class="ts_wrong"><span id="wrong">请输入手机号码！</span></div>';
						$('input[name="mobile"]').parent().after( notice);
						$('input[name="mobile"]').addClass('error');
						return false;
					}

					if (!/^(((13[0-9]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test(mobile)) {
						var notice = '<div class="ts_wrong"><span id="wrong">手机号码格式错误 请重新输入！</span></div>';
						$('input[name="mobile"]').parent().after( notice);
						$('input[name="mobile"]').addClass('error');
						return false;
					}
					var rCode = Math.floor(Math.random()*9000)+1000;
					$('input[name="mobile_code"]').val(rCode);
			});

			$(document).keyup(function(event) {
				if (event.keyCode == 13) {
					if ($('.ph').hasClass('focus')) {
						$('#mobile_reg').click(ag_Reg_click_Mobile);
					}
					if ($('.em').hasClass('focus')) {
						$('#email_reg').click(ag_Reg_click_Email);
					}
				}

			});
		</script>
	</div>
</body>
</html>