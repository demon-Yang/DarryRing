<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">

<head>
<meta charset="utf-8" />
<title>会员登录</title>
<link href="<%=path%>/css/style.css" type="text/css" rel="stylesheet" />
<script src="<%=path%>/js/jquery.js" type="text/javascript"></script>
<script src="<%=path%>/js/common.js" type="text/javascript"></script>
</head>

<body>
	<div class="wrap">
		<!-- start of 头部导航-->
		<div class="head_top">
			<div class="head clearfix">
				<!--头部左边-->
				<div class="topLeft left">
					<a href="index.jsp" title="Darry Ring"> <img width="186"
						height="42" src="<%=path%>/images/logo_01.png " />
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
					<form method="post" action="<%=path %>/user/login.do" id="loginform">
						<div class="cr_border">
							<h3></h3>
							<!--手机-->
							<div id="cssName" class="the_input ">
								<span class="member"></span> <input type="text"
									placeholder="请输入手机号码" id="txtName" class="al_Input dr_email"
									value="" name="utel" /> <i id="tname"></i>
							</div>
							<!--手机end-->
							<!--密码-->
							<div style="margin-top:15px;" class="the_input" id="cssPwd">
								<span class="password"></span> <input type="password"
									placeholder="请输入密码" id="txtPwd" class="al_Input"
									value="" name="upwd" /> <i id="pwdd"></i>
							</div>
							<!--报错信息-->
							<div class="ts_wrong" id="showWrong" style="display: none">
								<span id="wrong"> <span id="Label1">Label</span></span>
							</div>
							<!--报错信息end-->
							<!--其他选项-->
							<div class="other_input">
								<div class="left">
									<input type="checkbox" name="remember" id="check" value="1" />
									<label for="check">记住密码</label>
								</div>
								<div class="right">
									<a href="<%=path %>/forget.jsp" class="forget">忘记密码</a>
								</div>
							</div>
							<!--其他选项end-->
							<!--按钮-->
							<div class="other_input">
								<div class="bt1 clearfix" id="login">
									<span class="left">注册</span> <span class="right focus">登录</span>
								</div>
							</div>
							<!--按钮end-->
							<!--其他合作-->
							<div class="other_hz">
								<p>
									<span>更多合作网站帐号登录:</span> <a class="oth_qq"></a> <a
										class="oth_wb"></a> <a class="oth_wx"></a>
								</p>
							</div>
							<!--其他合作end-->
						</div>
					</form>
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
				<p>Copyright &copy; 2017 winner winner,chickdinner ！！团队 All
					Rights Reserved. 闽ICP备11012085号-2.ICP经营许可证闽B2-20140279</p>
				<p>中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票</p>
			</div>
		</div>

	</div>

	<script type="text/javascript">
		$(document).ready( function() {
				var error_info = '${error_info}';
				if(error_info != null && error_info.trim() != ''){
					 $('.ts_wrong').remove();
					 $('.the_input').removeClass('error');
					var notice = '<div class="ts_wrong"><span id="wrong">'+error_info+'</span></div>';
							$('#txtName').parent().after(notice);
							$('#txtName').parent().addClass('error');
				}
				$('#login span').eq(0).click(function() {
					location.href = "<%=path%>/reg.jsp";
				});
              
				$('#login span') .eq(1) .click( function() {
					var mobile = $('#txtName').val();
						$('.ts_wrong').remove();
						$('.the_input').removeClass( 'error');
						if ($('#txtName').val() == '') {
							var notice = '<div class="ts_wrong"><span id="wrong">请输入手机号码！</span></div>';
							$('#txtName').parent().after(notice);
							$('#txtName').parent().addClass('error');
							return false;
						}
                        if (!/^(((13[0-9]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test(mobile)) {
							var notice = '<div class="ts_wrong"><span id="wrong">手机号码格式错误 请重新输入！</span></div>';
							$('#txtName').parent().after(notice);
							$('#txtName').parent().addClass('error');
							return false;
						}
						
						if ($('#txtPwd').val() == '') {
							var notice = '<div class="ts_wrong"><span id="wrong">请输入密码！</span></div>';
							$('#txtPwd').parent().after(notice);
							$('#txtPwd').parent().addClass('error');
							return false;
						}
						
						if ($('#txtPwd').val().length<6||$('#txtPwd').val().length>21) {
							var notice = '<div class="ts_wrong"><span id="wrong">密码长度为6~21个字符！</span></div>';
							$('#txtPwd').parent().after(notice);
							$('#txtPwd').parent().addClass('error');
							return false;
						}

						$('form').submit();
				});
			});

			$(document).keyup(function(event) {
				if (event.keyCode == 13) {
					$('#login span').eq(1).click();
				}
			});
	</script>
</body>

</html>