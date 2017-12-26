<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">

	<head>
		<title>购物车</title>
		<meta charset="utf-8" />
		<link href="<%=path%>/css/shopping.css?v=1.3.5" type="text/css" rel="stylesheet" />
		<script src="<%=path%>/js/jquery.js" type="text/javascript"></script>
		<script src="<%=path%>/js/shoppcart.js" type="text/javascript"></script>
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
							<span id="ctl00_ltlUname">${user.unick }</span>
							<a class="my_dr" href="<%=path%>/member_index.jsp">我的DR</a>
							<a onClick="javascript:logout()" class="tc_dr" href="#">退出</a>
							<a class="help_dr" href="<%=path%>/help.jsp">帮助中心</a>
						</div>
					</div>
					<!--头部end-->
					<!--导航条-->
					<div class="shop_nav" id="ctl00_showNav"></div>
					<!--导航条end-->

					<script type="text/javascript">
						function deleteCart(cid) {
							if (confirm("确认删除？")) {
								$.ajax({
									type:"get",
									url:"<%=path %>/cart/delete.do",
									data:{cid:cid},
									success:function(msg){
										alert('删除成功');
										location.reload();
									}
								});
							}
						}

						function clearCart() {
							if (confirm("确认清除？")) {
								$.ajax({
									type:"get",
									url:"<%=path %>/cart/deleteByUid.do",
									success:function(msg){
										alert('删除成功');
										location.reload();
									}
								});
							}
						}

						function toPay() {
							var cartNum = '${cartNum }';
							if(cartNum == 0){
								alert('请您选择商品');
								location.href = "<%=path %>/goods/findByCondition.do";
								return;
							}
							window.location = "<%=path%>/cart_agreement.jsp";
						}
					</script>
					<!--内容-->
					<div class="shop_cort">
						<!--左边-->
						<div class="shop_cort-left fl">
							<h3>查看我的购物车</h3>
							<!--购物车-->
							<table cellspacing="0" cellpadding="0" border="0" class="shop_tabble">
								<tbody>
									<tr class="nav_tr">
										<td style="width:240px" class="sp_td">商品</td>
										<td style="width:100px" class="cz_td">材质</td>
										<td style="width:100px" class="sc_td">钻石</td>
										<td style="width:100px" class="kz_td">手寸</td>
										<td class="gm_td">购买价</td>
									</tr>
									<c:forEach items="${cartList }" var="list">
										<tr class="cp_tr">
											<td class="sp_td">
												<a href="javascript:void(0)" class="jx_shop"> <img width="85" height="85" src="<%=path %>/${list.goods.gimg1 }" /> <span> ${list.goods.gname }</span></a>
											</td>
											<td class="cz_td">${list.goods.gtype }</td>
											<td class="sc_td">${list.goods.gweight }</td>
											<td class="kz_td">${list.goods.gsize }</td>
											<td style="font-family:微软雅黑" class="gm_td">${list.goods.gprice }</td>
											<td class="close_td"><span onClick="deleteCart(${list.cid });" class="sicon s_close"></span></td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
							<!--购物车end-->
							<!--结算-->
							<div class="shop_js">
								<a class="jx_shop" href="<%=path %>/goods/findByCondition.do">继续购物</a>
								<a class="qk_shop" href="javascript:clearCart();">清空购物车</a>
								<span>您购买了<i>${cartNum }</i>件商品</span>
								<span>总计：<i style="font-family:微软雅黑" class="fw_bold">￥${cartTotal }</i></span>
								<span onClick="toPay();" class="end_bt"><em>立即结算</em></span>
							</div>
							<!--结算end-->
						</div>
						<!--左边end-->
						<!--右边-->
						<!--右边-->
						<div class="shop_cort-right fr">
							<div class="shop_right-nr">
								<h3>购物帮助指南</h3>
								<div class="shop_right-zx line_bottom">
									<p class="shop_lx">24小时在线客服</p>
									<p class="shop_tel">400-13-14520</p>
								</div>
								<div class="shop_right-zf line_bottom">
									<h4>支付安全保障</h4>
									<p>安全支付系统采用SSL加密。</p>
									<ul class="shop_right-ul">
										<li class="shop_cor-yl"></li>
										<li class="shop_cor-cft"></li>
										<li class="shop_cor-zf"></li>
									</ul>
								</div>
								<div class="shop_right-ps">
									<h4>全球配送</h4>
									<p class="shop_kd">支持全球配送,店铺取货</p>
									<p class="shop_bj">全程保价 无风险</p>
								</div>
							</div>
						</div>
						<!--右边end-->
						<!--右边end-->
					</div>
					<!--底部-->
					<div class="cmain shop_foot">
						<p>Copyright &copy; 2017 winner winner,chicken dinner All Rights Reserved. 闽ICP备11012085号</p>
						<p>中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票</p>
						<div class="shop_foot-img">
							<img src="<%=path %>/images/db.jpg" />
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