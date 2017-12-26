<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">

	<head>
		<meta charset="utf-8" />
		<title>购物车 - 提交订单</title>
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
							<span id="ctl00_ltlUname">你好！${user.unick }</span>
							<a class="my_dr" href="<%=path%>/member_index.jsp">我的DR</a>
							<a onClick="javascript:logout()" class="tc_dr" href="#">退出</a>
							<a class="help_dr" href="<%=path%>/help.jsp">帮助中心</a>
						</div>
					</div>
					<!--头部end-->
					<!--导航条-->
					<div class="shop_nav shop_nav-dd" id="ctl00_showNav"></div>
					<!--导航条end-->

					<script type="text/javascript">
						function addressItemSelected(control) {
							$(control).addClass("check_bk").siblings().removeClass("check_bk");
							$(control).find("input:radio").attr("checked", true);
						}

						$(function() {
							//绑定地址点击事件
							$(".shop_adress-top:not(:last)").each(function() {
								$(this).click(function() {
									hideNewAddress();
									addressItemSelected(this);
								});
							});
							//绑定新增地址事件
							$(".shop_adress-top:last").click(function() {
								addressItemSelected(this);
								showNewAddress();
							});

							//绑定选中默认地址事件
							$("#adefault").siblings('input[type="radio"]').attr("checked","checked");
							//保存地址按钮事件
							$(".save").click(function() {
								var aname = $("#addressName").val();
								var street = $("#street").val();
								var postcode = $("#postcode").val();
								var mobile = $("#mobile").val();
								$(".error").hide();
								if (aname == "") {
									$(".aname_error").text("不能为空！！");
									$(".aname_error").show();
									return;
								}else if(street == ""){
									$(".addr_error").text("不能为空！！");
									$(".addr_error").show();
									return;
								}else if(postcode == ""){
									$(".apcode_error").text("不能为空！！");
									$(".apcode_error").show();
									return;
								}else if(postcode.length != 6){
									$(".apcode_error").text("请输入正确的邮政编码！！");
									$(".apcode_error").show();
									return;
								}else if(mobile == ""){
									$(".atel_error").text("不能为空！！");
									$(".atel_error").show();
									return;
								}else if(!/^(((13[0-9]{1})|(15[0-9]{1})|(17[0-9]{1})|(18[0-9]{1}))+\d{8})$/.test(mobile)){
									$(".atel_error").text("请输入正确的手机号码！！");
									$(".atel_error").show();
									return;
								}
								$.ajax({
									type:"get",
									url:"<%=path %>/address/add.do",
									data:{aname:aname,addr:street,apcode:postcode,atel:mobile},
									success:function(msg){
										location.reload();
									}
								});
							});
						});


						function showNewAddress() {
							resetNewAddress();
							$(".shop_adress-add").show();
						}

						function hideNewAddress() {
							$(".shop_adress-add").hide();
						}

						function resetNewAddress() {
							$("#addressName").val("");
							$("#street").val("");
							$("#postcode").val("");
							$("#mobile").val("");
						}

						function deleteAddress(aid) {
							if (confirm("确认是否删除？")) {
								$.ajax({
									type:"get",
									url:"<%=path %>/address/delete.do",
									data:{aid:aid},
									success:function(msg){
										location.reload();
									}
								});
							}
						}
						
						function submitOrder(){
							var aid = $('.select-address input[type="radio"]:checked').next().val();
							if(aid == null){
								alert('请选择地址');
								return;
							}
							var cartNum = '${cartNum }';
							if(cartNum == 0){
								alert('请您选择商品');
								location.href = "<%=path %>/goods/findByCondition.do";
								return;
							}
							var ototal = '${cartTotal }';
							var ocontent = $('textarea').val();
							var gid = new Array();
							var a =$('input[name="regid"]');
							for(var i=0;i<a.length;i++){
								gid[i] = $(a[i]).val();
							}
							
							$.ajax({
									type:"get",
									url:"<%=path %>/order/add.do",
									data:{aid:aid,gid:gid,ototal:ototal,ocontent:ocontent},
									success:function(msg){
									console.log(msg);
										if(msg == 1)
											location.href = "<%=path %>/cart_order_success.jsp";
									},
									error:function(msg){
										alert(msg.responseText);
										location.href = "<%=path %>/cart/findByUid.do";
									}
								});
						}
					</script>
					<!--内容-->
					<div class="shop_cort">
						<!--左边-->
						<div class="shop_cort-left fl">
							<h3>收货人信息</h3>
							<!--填写地址信息-->
							<div class="shop_cort-adress">
								<!--地址-->
								<c:forEach items="${addressList }" var="list">
									<div class="shop_adress-top select-address">
										<input type="radio" name="adress"/>
										<input type="hidden"  value="${list.aid }"/>
										<label>${list.addr }</label>
										<label>&nbsp;&nbsp;${list.aname }(收) &nbsp;${list.atel }</label>
										<c:if test="${list.adefault == 'yes' }">
											<span style="padding-right:10px;" id="adefault">默认地址</span>
										</c:if>
										<i>|</i>
										<a href="javascript:deleteAddress(${list.aid });">删除</a>
									</div>
								</c:forEach>
								<div class="shop_adress-top">
									<input type="radio" id="addressNew" name="adress" />
									<label class="adress_color" for="addressNew">添加新地址</label>
								</div>
								<!--地址end-->
								<!--新加地址-->
								<div style="display:none;" class="shop_adress-add">
									<h4>添加新地址:</h4>
									<div class="shop_adress-Toadd">
										<label><i>*</i>收 货 人：</label>
										<input type="text" class="true_name" placeholder="请准确填写真实姓名" id="addressName" />
										<label style="width: 120px;color: red;display: none;" class="error aname_error"></label>
									</div>
									<div class="shop_adress-Toadd">
										<label><i>*</i>详细地址：</label>
										<input type="text" placeholder="请填写详细路名及门牌号" class="adt_1" id="street" />
										<label style="width: 120px;color: red;display: none;" class="error addr_error"></label>
									</div>
									<div class="shop_adress-Toadd">
										<label><i>*</i>邮政编码：</label>
										<input type="number" class="true_number" placeholder="请填写邮政编码" id="postcode" />
										<label style="width: 160px;color: red;display: none;" class="error apcode_error"></label>
									</div>
									<div class="shop_adress-Toadd">
										<label><i>*</i>手机号码：</label>
										<input type="text" id="mobile" placeholder="请填写手机号码"/>
										<label style="width: 160px;color: red;display: none;" class="error atel_error"></label>
									</div>
									<div class="shop_adress-sp">
									</div>
									<div class="shop_adress-save">
										<div class="bt1">
											<span class="save">保存收货人信息</span>
										</div>
									</div>
								</div>
								<!--新加地址end-->
								<div class="shop_adress-qr">
									<div class="shop_adressqr-top">
										<a class="fr" href="<%=path %>/cart/findByUid.do">返回修改购物车&gt;&gt;</a>
										<span>确认订单信息</span>
										<i>提示：专属订制产品，需要相关证书认证时间。建议尽快提交。</i>
									</div>
									<!--订单-->
									<table cellspacing="0" cellpadding="0" border="0" class="shop_adressqr-of">
										<tbody>
											<tr class="shop_adressqr-first">
												<td class="shop_adress-shoop">商 品</td>
												<td class="shop_adress-cz">材 质</td>
												<td class="shop_adress-sc">钻石</td>
												<td class="shop_adress-kz">手寸</td>
												<td class="shop_adress-pirce">价 格</td>
											</tr>
											<c:forEach items="${cartList }" var="list">
												<tr class="shop_adressqr-sec">
													<input type="hidden" value="${list.goods.gid }" name="regid"/>
													<td class="shop_adress-shoop">${list.goods.gname }</td>
													<td class="shop_adress-cz">${list.goods.gtype }</td>
													<td class="shop_adress-sc">${list.goods.gweight }</td>
													<td class="shop_adress-kz">${list.goods.gsize }</td>
													<td class="shop_adress-pirce"><span style="font-family:微软雅黑">${list.goods.gprice }</span></td>
												</tr>
											</c:forEach>
										</tbody>
									</table>
									<!--订单end-->
									<!--总计-->
									<div class="shop_adress-zj">
										<div class="fl">
											<span>总计</span>
										</div>
										<div class="fr">
											<i>${cartNum }</i>
											<span>件商品</span>
											<span>应付金额：</span>
											<i style="font-family:微软雅黑" class="fw_bold">￥${cartTotal }</i>
										</div>
									</div>
									<!--总计-->
									<!--最后一块-->
									<div class="shop_adress-last">
										<div class="shop_adress-ddbz fl">
											<p>订单备注</p>
											<textarea placeholder="此处请勿填写有关支付方面的信息,留言请在50字以内。" class="shop_adress-text" name="ocontent"></textarea>
										</div>
										<div onClick="submitOrder();" class="shop_adress-tjdd fr">
											<div class="bt1 fr">
												<span>立即提交订单</span>
											</div>
										</div>
									</div>
									<!--最后一块end-->
								</div>
							</div>
							<!--填写地址信息end-->
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
					<!--内容end-->
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