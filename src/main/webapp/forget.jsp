<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">

	<head>
		<meta charset="utf-8" />
		<title>忘记密码</title>
		<link href="<%=path %>/css/style.css" type="text/css" rel="stylesheet" />
		<script src="<%=path %>/js/jquery-1.10.1.min.js" type="text/javascript"></script>
		<script src="<%=path %>/js/common.js" type="text/javascript"></script>
	</head>

	<body>
		<div class="wrap">
			<!-- start of 头部导航-->
			<div class="head_top">
				<div class="head clearfix">
					<!--头部左边-->
					<div class="topLeft left">
						<a href="index.jsp" title="Darry Ring"> <img width="186" height="42" src="<%=path%>/images/logo_01.png " /> </a>
						<span>求婚钻戒领导品牌</span>
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
							<!--手机注册-->
							<form method="post" action="<%=path %>/user/modifyUpwd.do" class="form_first">
								<input type="hidden" value="1" name="type" />
								<input type="hidden" value="NCkpc1Pl" name="fbkey" />
								<div class="photo_show">
									<!--手机号-->
									<div class="the_input">
										<span class="member"></span>
										<input type="text" placeholder="请输入手机号码" class="al_Input dr_photo" name="mobile" value="" />
									</div>
									<!--手机号end-->
									<!--密码-->
									<div style="border:none" class="the_input">
										<span class="password"></span>
										<input type="text" style="width:133px;" placeholder="请输入验证码" class="al_Input ls" name="mobile_code" value="" />
										<input type="button" value="获取验证码" class="action mobile_action" />
									</div>
									<!--验证码end-->
									<!--密码-->
									<div class="the_input ">
										<span class="pw"></span>
										<input type="password" placeholder="请输入新密码" maxlength="21" class="al_Input dr_photo" name="mobile_pwd" value="" />
									</div>
									<!--密码end-->
									<!--密码-->
									<div class="the_input ">
										<span class="pw"></span>
										<input type="password" placeholder="确认新密码" maxlength="21" class="al_Input dr_photo" name="mobile_pwd_confirm" value="" />
									</div>
									<!--其他合作-->
									<div class="other_hz">
										<input type="button" value="确认重置" class="up" />
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
					<p> Copyright &copy; 2017 winner winner,chickdinner ！！团队 All Rights Reserved. 闽ICP备11012085号-2.ICP经营许可证闽B2-20140279 </p>
					<p> 中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票 </p>
				</div>
			</div>
		</div>
		<script src="<%=path%>/js/jquery.js" type="text/javascript"></script>
		<script type="text/javascript">
			//修改密码后跳转页面
			var success_info = '${success_info}';
			if(success_info != null && success_info.trim() != ''){
				alert(success_info);
				location.href = "<%=path%>/login.jsp";
			}
			//验证参数
			$('.up').click( function() {
				$('.ts_wrong').remove();
				$('.al_Input').removeClass('error');
				//手机登录
				var mobile = $('input[name="mobile"]').val();
				if (mobile == "") {
					var notice = '<div class="ts_wrong"><span id="wrong">请输入手机号码！</span></div>';
					$('input[name="mobile"]').parent()
							.after(notice);
					$('input[name="mobile"]').addClass(
							'error');
					return false;
				}

				if (!/^(((13[0-9]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1}))+\d{8})$/
						.test(mobile)) {
					var notice = '<div class="ts_wrong"><span id="wrong">手机号码格式错误 请重新输入！</span></div>';
					$('input[name="mobile"]').parent()
							.after(notice);
					$('input[name="mobile"]').addClass(
							'error');
					return false;
				}
				
				var code = $('input[name="mobile_code"]').val();
				if (code == "") {
					var notice = '<div class="ts_wrong"><span id="wrong">请输入验证码！</span></div>';
					$('input[name="mobile_code"]').parent()
							.after(notice);
					$('input[name="mobile_code"]')
							.addClass('error');
					return false;
				}

				var pwd = $('input[name="mobile_pwd"]').val();
				if (pwd == "") {
					var notice = '<div class="ts_wrong"><span id="wrong">请输入密码！</span></div>';
					$('input[name="mobile_pwd"]').parent()
							.after(notice);
					$('input[name="mobile_pwd"]').addClass(
							'error');
					return false;
				}

				if (pwd.length < 6) {
					var notice = '<div class="ts_wrong"><span id="wrong">密码长度为6~21个字符！</span></div>';
					$('input[name="mobile_pwd"]').parent()
							.after(notice);
					$('input[name="mobile_pwd"]').addClass(
							'error');
					return false;
				} else if (pwd.length > 21) {
					var notice = '<div class="ts_wrong"><span id="wrong">密码长度为6~21个字符！</span></div>';
					$('input[name="mobile_pwd"]').parent()
							.after(notice);
					$('input[name="mobile_pwd"]').addClass(
							'error');
					return false;
				}

				var pwd_confirm = $( 'input[name="mobile_pwd_confirm"]') .val();
				if (pwd_confirm == "") {
					var notice = '<div class="ts_wrong"><span id="wrong">请输入确认密码！</span></div>';
					$('input[name="mobile_pwd_confirm"]')
							.parent().after(notice);
					$('input[name="mobile_pwd_confirm"]')
							.addClass('error');
					return false;
				}

				if (pwd != pwd_confirm) {
					var notice = '<div class="ts_wrong"><span id="wrong">密码与确认密码不一致 请重新输入！</span></div>';
					$('input[name="mobile_pwd_confirm"]')
							.parent().after(notice);
					$('input[name="mobile_pwd_confirm"]')
							.addClass('error');
					return false;
				}
				
				//检测手机号码是否注册
				$ .ajax({
						type : "POST",
						url : "<%=path%>/user/findByUtel.do",
						data : "mobile=" + mobile,
						success : function(msg) {
							if (msg == 0) {
								var notice = '<div class="ts_wrong"><span id="wrong">该手机号码没有注册！</span></div>';
								$( 'input[name="mobile"]').parent().after(notice);
								$( 'input[name="mobile"]').addClass('error');
								return false;
							} else{
								$('.form_first').submit();
							}
						}
				});
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
		</script>
	</body>
</html>