<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">

	<head>
		<meta charset="utf-8" />
		<title>购物车 - 订单提交成功</title>
		<meta charset="utf-8" />
		<link href="<%=path%>/css/shopping.css?v=1.3.5" type="text/css" rel="stylesheet" />
		<script src="<%=path%>/js/jquery.js" type="text/javascript"></script>
		<script src="<%=path%>/js/shoppcart.js" type="text/javascript"></script>
		<script src="<%=path%>/js/ma3.js" type="text/javascript"></script>
		<script type="text/javascript">
			function toPay() {
				alert("支付成功");
				location.href="<%=path %>/order/findByUid.do";
			}
		</script>
	</head>

	<body>
			<!--全部背景-->
			<div class="all-thing">
				<!--中间内容-->
				<div class="tcmain">
					<!--头部-->
					<div class="shop_top">
						<div class="shopt_left fl">
							<a title="Darry Ring" href="index.jsp"> <img width="186" height="42" src="<%=path%>/images/dr.png" /> </a>
							<span>求婚钻戒领导品牌</span>
						</div>
						<div class="shopt_right fr">
							<span id="ctl00_ltlUname">你好！${user.unick }</span>
							<a class="my_dr" href="member_index.jsp">我的DR</a>
							<a onClick="javascript:logout()" class="tc_dr" href="#">退出</a>
							<a class="help_dr" href="help.jsp">帮助中心</a>
						</div>
					</div>
					<!--头部end-->
					<!--导航条-->
					<div class="shop_nav shop_nav-end" id="ctl00_showNav"></div>
					<!--导航条end-->
					<!--订单提交-->
					<div class="shop_of-for">
						<div class="shop_ofor-top">
							<img width="54" height="67" src="<%=path%>/images/right.png" />
							<h3>订单提交成功，请您尽快完成支付！</h3>
							<h4>请您在24小时内完成付款，超过24小时后系统将自动取消订单。</h4>
						</div>
						<h2>网上支付方式</h2>
						<!--银行-->
						<ul class="shop_ofor-bank">
							<li> <input type="radio" id="bankgongshang" checked="checked" value="0005" name="target" /> <label for="bankgongshang"> <img width="160" height="43" src="<%=path%>/images/bank1.jpg" /> </label> </li>
							<li> <input type="radio" value="14" id="bankpingan" name="target" /> <label for="bankpingan"> <img width="160" height="43" src="<%=path%>/images/bank2.jpg" /> </label> </li>
							<li> <input type="radio" value="1010" id="bankjianshe" name="target" /> <label for="bankjianshe"> <img width="160" height="43" src="<%=path%>/images/bank3.jpg" /> </label> </li>
							<li> <input type="radio" value="43" id="banknongye" name="target" /> <label for="banknongye"> <img width="160" height="43" src="<%=path%>/images/bank4.jpg" /> </label> </li>
							<li> <input type="radio" value="3" id="bankzhaoshang" name="target" /> <label for="bankzhaoshang"> <img width="160" height="43" src="<%=path%>/images/bank5.jpg" /> </label> </li>
							<li> <input type="radio" value="67" id="bankjiaotong" name="target" /> <label for="bankjiaotong"> <img width="160" height="43" src="<%=path%>/images/bank6.jpg" /> </label> </li>
							<li> <input type="radio" value="84" id="bankzhongxin" name="target" /> <label for="bankzhongxin"> <img width="160" height="43" src="<%=path%>/images/bank7.jpg" /> </label> </li>
							<li> <input type="radio" value="60" id="bankhuaxia" name="target" /> <label for="bankhuaxia"> <img width="160" height="43" src="<%=path%>/images/bank8.jpg" /> </label> </li>
							<li> <input type="radio" value="1022" id="bankpufa" name="target" /> <label for="bankpufa"> <img width="160" height="43" src="<%=path%>/images/bank9.jpg" /> </label> </li>
							<li> <input type="radio" value="0051" id="bankdongya" name="target" /> <label for="bankdongya"> <img width="160" height="43" src="<%=path%>/images/bank10.jpg" /> </label> </li>
							<li> <input type="radio" value="44" id="bankguangfa" name="target" /> <label for="bankguangfa"> <img width="160" height="43" src="<%=path%>/images/bank11.jpg" /> </label> </li>
							<li> <input type="radio" value="33" id="bankxingye" name="target" /> <label for="bankxingye"> <img width="160" height="43" src="<%=path%>/images/bank12.jpg" /> </label> </li>
							<li> <input type="radio" value="28" id="bankmingsheng" name="target" /> <label for="bankmingsheng"> <img width="160" height="43" src="<%=path%>/images/bank13.jpg" /> </label> </li>
							<li> <input type="radio" value="85" id="bankzhongguo" name="target" /> <label for="bankzhongguo"> <img width="160" height="43" src="<%=path%>/images/bank14.jpg" /> </label> </li>
							<li> <input type="radio" value="74" id="bankguangda" name="target" /> <label for="bankguangda"> <img width="160" height="43" src="<%=path%>/images/bank15.jpg" /> </label> </li>
							<li> <input type="radio" value="59" id="bankyouzheng" name="target" /> <label for="bankyouzheng"> <img width="160" height="43" src="<%=path%>/images/bank16.jpg" /> </label> </li>
							<li> <input type="radio" value="8607" id="bankzaixian" name="target" /> <label for="bankzaixian"> <img width="160" height="43" src="<%=path%>/images/bank17.jpg" /> </label> </li>
							<li> <input type="radio" value="alipay" id="bankzhifubao" name="target" /> <label for="bankzhifubao"> <img width="160" height="43" src="<%=path%>/images/bank18.jpg" /> </label> </li>
						</ul>
						<!--银行end-->
						<!--提交按钮-->
						<div class="shop_ofor-button">
							<div onClick="toPay()" class="bt3">
								<span>立即支付</span>
							</div>
						</div>
						<!--提交按钮end-->
					</div>

					<!--底部-->
					<div class="cmain shop_foot">
						<p>Copyright &copy; 2017 winner winner,chicken dinner All Rights Reserved. 闽ICP备11012085号</p>
						<p>中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票</p>
						<div class="shop_foot-img">
							<img width="92px" height="26px" src="<%=path%>/images/db.jpg" />
						</div>
					</div>
					<!--底部end-->
				</div>
				<!--全部背景end-->
			</div>
			<script type="text/javascript">
				$(function(){
					if('${user}' == '')
						location.href = "<%=path %>/goods/index.do";
				});
				function logout() {
					if (window.confirm('确定退出吗？')) {
						$.ajax({
							type:"get",
							url:"<%=path %>/user/loginout.do",
							success:function(msg){
								location.href = "<%=path %>/goods/index.do";
							}
						});
					}
				}
			</script>
	</body>
</html>