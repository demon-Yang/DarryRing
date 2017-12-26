<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
	<head>
		<meta charset="utf-8" />
		<title>购物车 - 真爱协议</title>
		<link href="<%=path%>/css/shopping.css?v=1.3.5" type="text/css" rel="stylesheet" />
		<script src="<%=path%>/js/jquery.js" type="text/javascript"></script>
		<script src="<%=path%>/js/shoppcart.js" type="text/javascript"></script>
	</head>
	<body>
		<form id="form" action="<%=path %>/cart/detail.do" method="post">
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
							<a class="my_dr" href="<%=path%>/member_index.jsp">我的DR</a>
							<a onClick="javascript:logout()" class="tc_dr" href="#">退出</a>
							<a class="help_dr" href="<%=path%>/help.jsp">帮助中心</a>
						</div>
					</div>
					<!--头部end-->
					<!--导航条-->
					<div class="shop_nav shop_nav-love" id="ctl00_showNav"></div>
					<!--导航条end-->

					<script type="text/javascript">
						function check() {
							if (!$("#cbAgree").attr("checked")) {
								alert("必须先接受真爱协议。");
								return false;
							}
							return true;
						}

						function submitAgreement() {
							if (check()) {
								$("#form").submit();
							}

						}
					</script>
					<!--真爱协议中的内容-->
					<div class="shop_agree">
						<div class="shop_agree-top"></div>
						<!--边框内容-->
						<div class="shop_agree-cort">
							<div class="shopagree_cort-top">
								<i></i>
								<span>真爱协议</span>
								<i></i>
							</div>
							<div class="shopagree_cort-center">
								<p>Darry Ring 真爱戒指男士凭身份证号一生仅可购买一枚，作为一生唯一真爱的最高承诺。</p>
								<p>签署该协议则表示您已经过慎重考虑，</p>
								<p>决定自购买之日起，将您的身份证号与Darry Ring 编码绑定，并接受亲友对购买信息的验证查询。</p>
								<p>此购买信息将终身留存在Darry Ring 数据库中并无法更改。请用心呵护您的真爱。</p>
							</div>
							<br>
							<div class="shopagree_cort-spcenter">
								<p>温馨提示：当您填写此资料,即默认同意本公司相关资料制作的网页放在Darry Ring专属页面。此资料将做合同永久保留。</p>
							</div>
							<br>
							<br>
							<div class="shopagree_cort-check">
								<input type="checkbox" id="cbAgree" />
								<label for="cbAgree"> <a>我已经仔细阅读并接受该协议</a> </label>
							</div>
							<br>
							<div onClick="submitAgreement();" class="shopagree_button">
								<div class="bt1">
									<span>确认提交真爱协议</span>
								</div>
							</div>
						</div>
						<!--边框内容end-->
						<div class="shop_agree-bottom"></div>
					</div>
					<!--真爱协议中的内容end-->
					<!--中间内容end-->
					<!--底部-->
					<div class="cmain shop_foot">
						<p>Copyright &copy; 2017 winner winner,chicken dinner All Rights Reserved. 闽ICP备11012085号</p>
						<p>中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票</p>
						<div class="shop_foot-img">
							<img src="images/db.jpg" />
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
		</form>
	</body>

</html>
