<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
  <head>
		<title>个人中心 - 修改资料</title>
		<meta charset="utf-8" />
		<link href="<%=path%>/css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
		<link href="<%=path%>/css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
		<link href="<%=path%>/css/member.css?v=1.3.6.0" type="text/css" rel="stylesheet" />
		<script src="<%=path%>/js/jquery.js" type="text/javascript"></script>
		<script src="<%=path%>/js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
		<script src="<%=path%>/js/year_month_day.js" type="text/javascript"></script>
		<script type="text/javascript" >
			var success_info = '${success_info}';
			if(success_info != null && success_info.trim() != ''){
				alert(success_info);
				location.href = "<%=path%>/user/information.do?utel=${user.utel}";
			}
			$(function() {

				$("#nicname").focus(function() {
					$("#shrid").hide();
					$("#shry").hide();
				});
				$("#realName").focus(function() {
					$("#realId").hide();
					$("#realy").hide();
				});
				$("#street").focus(function() {
					$("#streid").hide();
					$("#strey").hide();
				});

				$("#nicname").blur(function() {
					var nickname = $("#nicname").val();
					if (nickname == "") {
						$("#shrwrong").text("请输入昵称！");
						$("#shrid").show();
						return false;
					} else {
						$("#shry").show();

					}
				});
				$("#street").blur(function() {
					var stree = $("#street").val();
					if (stree == "") {
						$("#strewrong").text("请输入内容！");
						$("#streid").show();
						$("#strey").hide();
						return false;
					}
					if (stree.length > 250) {
						$("#strewrong").text("输入内容过长！");
						$("#streid").show();
						$("#strey").hide();
					} else {
						$("#strey").show();
					}
				});
				$("#realName").blur(function() {
					var realName = $("#realName").val();
					if (realName == "") {
						$("#realwrong").text("请输入姓名！");
						$("#realId").show();
						return false;
					} else {
						$("#realy").show();

					}
				});
				$("#btnsave").click(function() {
					var realName = $("#realName").val();
					var address = $("#street").val();
					var nickname = $("#nicname").val();

					if (nickname == "") {
						$("#shrwrong").text("请输入昵称！");
						$("#shrid").show();
						return false;
					} else {
						$("#shry").show();

					}
					if (realName == "") {
						$("#realwrong").text("请输入姓名！");
						$("#realId").show();
						return false;
					} else {
						$("#realy").show();

					}
					if (address == "") {
						$("#strewrong").text("请输入内容！");
						$("#streid").show();
						return false;
					}
					if (address.length > 150) {
						$("#strewrong").text("输入内容过长！");
						$("#streid").show();
						return false;
					} else {
						$("#strey").show();
					}
			   });
		   });
		</script>
	</head>

	<body>

		<!--头部-->
		<div class="cmain">
			<div class="headtop">
				<!--头部左边-->
				<div class="top-left fl">
					<a title="Darry Ring" href="index.jsp"> <img width="187" height="42" alt="Darry Ring官网" src="<%=path%>/images/logo.png" /> </a>
					<span style="font-weight: normal;">求婚钻戒领导品牌</span>
				</div>
				<!--头部左边end-->
				<!--头部右边-->
				<div class="top-right fr">
					<ul class="tright-ul fl">
						<li><a><span id="ctl00_ucheader_lit">${user.unick }</span></a></li>
						<li> <a href="javascript:logout()" rel="nofollow">退出</a><em>|</em> </li>
						<li><a target="black" rel="nofollow" href="<%=path %>/member_index.jsp">我的DR</a><em>|</em></li>
						<li class="headed"><em class="icon shooping"></em><a target="black" rel="nofollow" href="<%=path %>/cart/findByUid.do">购物车</a></li>
					</ul>
				</div>
			</div>
			<!--头部右边end-->
		</div>
		<!--头部end-->
		<!--导航-->
		<div class="nav">
			<div class="cmain">
				<!--导航的左边-->
				<ul class="nav-ul fl">
						<li><a href="<%=path %>/goods/index.do">首页</a> </li>
						<li><a href="<%=path %>/brand.jsp">品牌文化</a> </li>
						<li><a style="font-family:arial" href="<%=path %>/goods/findByCondition.do">Darry Ring 求婚钻戒</a>
						<div class="nav-div">
							<div class="navdiv_top">
								<div class="navdiv-right">
									<p> <a href="<%=path %>/goods/findByCondition.do"> 查看所有款</a></p>
									<p> <a href="<%=path %>/goods/findByCondition.do?gseries=Forever系列">Forever系列</a></p>
									<p> <a href="<%=path %>/goods/findByCondition.do?gseries=MarryMe系列">MarryMe系列</a></p>
									<p> <a href="<%=path %>/goods/findByCondition.do?gseries=MyHeart系列">MyHeart系列</a></p>
									<p> <a href="<%=path %>/goods/findByCondition.do?gseries=TrueLove系列">TrueLove系列</a></p>
									<p> <a href="<%=path %>/goods/findByCondition.do?gseries=ISwear系列">ISwear系列</a></p>
								</div>
								<div class="navdiv-left">
									<h3> NEW</h3>
									<a href="javascript:void(0)"> <img width="138" height="97"  src="<%=path%>/images/03wj.jpg" /></a>
									<div class="more_cp">
										<a href="<%=path %>/goods/findByCondition.do?gseries=JustYou系列">&gt; 了解该系列产品</a>
									</div>
								</div>
							</div>
							<div class="navdiv_bottom"></div>
						</div>
					</li>
					<li><a href="<%=path %>/question.jsp">常见问题</a></li>
				</ul>

			</div>
		</div>
		<!--导航end-->
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
		<div class="cort">
			<!--中间-->
			<div class="cort">
				<!--内容-->
				<div class="cmain mb_back">
					<div class="zbk_top spalid">
						<span>您当前的位置：</span>
						<span id="ctl00_content_website_SiteMapPath1"><span> <a href="javascript:void(0)">Darry Ring</a> </span><span> <em>&gt;</em> </span><span> <a href="javascript:void(0)">我的DR</a> </span><span> <em>&gt;</em> </span><span> <span>个人信息</span>								</span>
						</span>
					</div>
					<!--中间内容-->
					<div class="member_cort">
						<!--左边树-->
						<div class="member_cort-left fl">
							<!--我的DR-->
							<div class="member_cortleft-tittle">
								<i class="mb_home"></i>
								<a rel="nofollow" href="<%=path %>/member_index.jsp">我的DR</a>
							</div>
							<!--我的DR end-->
							<ul class="member_cort-ul">
								<li>
									<h3> -订单中心-</h3>
									<ul class="member_ul-dr">
										<li id="ctl00_content_ucmemberleft_order"><a rel="nofollow" href="<%=path %>/order/findByUid.do">我的订单</a></li>
										<li id="ctl00_content_ucmemberleft_ask"><a rel="nofollow" href="javascript:void(0)">我要评价</a></li>
										<li id="ctl00_content_ucmemberleft_cart"><a rel="nofollow" href="<%=path %>/cart/findByUid.do" target="_blank">我的购物车</a></li>

									</ul>
								</li>

								<li>
									<h3> -帐户管理-</h3>
									<ul class="member_ul-dr">
										<li id="ctl00_content_ucmemberleft_myinfo"><a rel="nofollow" href="<%=path %>/user/information.do?utel=${user.utel}">个人信息</a></li>
										<li id="ctl00_content_ucmemberleft_password"><a rel="nofollow" href="<%=path %>/member_pwd.jsp">修改密码</a></li>
										<li id="ctl00_content_ucmemberleft_address"><a rel="nofollow" href="<%=path %>/address/findByUid.do?uid=${user.uid}">收货地址</a></li>

									</ul>
								</li>
							</ul>
						</div>
						<!--左边树end-->
						<!--右边的主要内容-->
						<div class="member_cort-right fr">
							<!--我的个人信息-->
							<div class="member_person">
								<div class="member_ask-tittle">
									<h4> 我的个人信息</h4>
									<p> 为了能给您提供个性化服务，请完善您的基本资料。</p>
								</div>
								<!--个人信息填写-->
	
								<form method="post" action="<%=path %>/user/xInformation.do" id="xInformationform">
								<div class="member_person-cort">
								<input type="hidden" name="yutel" value="${user.utel }">
									<!--左边-->
									<div class="member_person-cort_left">
										<div class="person-cort_left-write">
											<span>昵&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;称：</span>
											<input type="text" value="${user.unick }" class="write_text" id="nicname" name="nicname" />
											<span style="display: none" id="shrid"><i class="writer_wrong"></i><em id="shrwrong" class="writer_word"></em></span>
											<span id="shry" style="display: none"><i class="writer_right"> </i></span>
										</div>
										<div class="person-cort_left-write">
											<span>真实姓名：</span>
											<input type="text" value="${user.uname }" class="write_text" id="realName" name="realName" />
											<span style="display: none" id="realId"><i class="writer_wrong"></i><em id="realwrong" class="writer_word"></em></span>
											<span id="realy" style="display: none"><i class="writer_right"> </i></span>
										</div>
										<c:if test="${user.usex=='' }">
										<div class="person-cort_left-write">
											<span>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</span>
											<input type="radio" id="ctl00_content_nan" name="sex"  checked="checked" value="男"  />
											<label for="nan"> 男</label>
											<input type="radio"  id="ctl00_content_nv" name="sex" value="女" />
											<label for="nv"> 女</label>
										</div>
										</c:if>
											<c:if test="${user.usex=='男' }">
										<div class="person-cort_left-write">
											<span>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</span>
											<input type="radio" id="ctl00_content_nan" name="sex"  checked="checked" value="男"  />
											<label for="nan"> 男</label>
											<input type="radio"  id="ctl00_content_nv" name="sex" value="女" />
											<label for="nv"> 女</label>
										</div>
										</c:if>
											<c:if test="${user.usex=='女' }">
										<div class="person-cort_left-write">
											<span>性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别：</span>
											<input type="radio" id="ctl00_content_nan" name="sex"  value="男"  />
											<label for="nan"> 男</label>
											<input type="radio"  id="ctl00_content_nv" name="sex" checked="checked" value="女" />
											<label for="nv"> 女</label>
										</div>
										</c:if>
										<div class="person-cort_left-write">
											<span>出生日期：</span>
											<select id="selYear" name="selYear"><option value="${selYear}">${selYear}</option><option value="2015">2015</option><option value="2014">2014</option><option value="2013">2013</option><option value="2012">2012</option><option value="2011">2011</option><option value="2010">2010</option><option value="2009">2009</option><option value="2008">2008</option><option value="2007">2007</option><option value="2006">2006</option><option value="2005">2005</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option><option value="1913">1913</option><option value="1912">1912</option><option value="1911">1911</option><option value="1910">1910</option><option value="1909">1909</option><option value="1908">1908</option><option value="1907">1907</option><option value="1906">1906</option><option value="1905">1905</option><option value="1904">1904</option><option value="1903">1903</option><option value="1902">1902</option><option value="1901">1901</option><option value="1900">1900</option></select>
											<select id="selMonth" name="selMonth"><option value="${selMonth}">${selMonth}</option><option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option></select>
											<select id="selDay" name="selDay"><option value="${selDay}">${selDay}</option><option value="01">01</option><option value="02">02</option><option value="03">03</option><option value="04">04</option><option value="05">05</option><option value="06">06</option><option value="07">07</option><option value="08">08</option><option value="09">09</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select>
										</div>

										<div class="person-cort_left-write">
											<span class="write_vtop">详细地址：</span>
											<textarea id="street" cols="20" rows="2" name="street" >${user.uaddr}</textarea>
											<span id="streid" style="display: none"><i class="writer_wrong"></i><em id="strewrong" class="writer_word"></em></span>
											<span id="strey" style="display: none"><i class="writer_right"> </i></span>
										</div>

										<div class="person-cort_left-write">
											<span class="fl">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机：</span>
											<input type="text" value="${user.utel }" class="write_text fl" id="mobile" name="mobile" value="disabled" disabled/>
											<span id="sjid" style="display: none"><i class="writer_wrong"></i><em id="sjwrong" class="writer_word"></em></span>
											<span id="sjy" style="display: none"><i class="writer_right"> </i></span>
										</div>

										
									</div>
									<!--左边end-->
									<!--右边-->
									<div class="member_person-cort_right">
										<a href="#"> <img width="90" height="90" src="<%=path %>/${user.uimg }" /> </a>
										<p> <a href="<%=path %>/member_avatar.jsp">更换头像</a> </p>
									</div>
									<!--右边end-->
								</div>
								<!--个人信息填写end-->
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="保存" style="width: 85px; height: 35px;" id="btnsave">	
								</form>
							
							</div>
							<!--我的个人信息end-->
						</div>
						<!--右边的主要内容end-->
					</div>
					<!--中间内容end-->
				</div>
				<!--内容end-->
			</div>
			<!--中间end-->
		</div>
		<!--底部-->
		<div class="footer">
			<div class="loverit_wrong2" style="display: none;">
				<p>信息填写不正确，请重新输入。</p>
			</div>
			<!--错误end-->
			<!--验证身份-->
			<div class="loveit_center">
				<div class="love_doit2" style="display: none;">
					<div class="loverit_center2">
						<div class="loverit_write2">
							<label>国家/区域:</label>
							<select id="txtArea" style="vertical-align: middle;height:22px;"> <option value="0">中国大陆</option> <option value="1">中国香港</option> <option value="2">中国澳门</option> <option value="3">中国台湾</option> </select>
							<label>先生姓名:</label>
							<input type="text" class="lit_txt" id="textName2" />
							<label>身份证号码:</label>
							<input type="text" class="lit_txt" id="textIDCard2" />
							<span id="btnsub2"></span>
						</div>
					</div>
				</div>
			</div>
			<!--验证身份end-->
			<div style="clear:both"></div>
			<div class="cmain">
				<ul class="Service_ul">
					<!--每一块li-->
					<li>
						<div class="Service_ul-img">
							<a href="javascript:void(0)" rel="nofollow"></a>
						</div>
						<a href="javascript:void(0)" rel="nofollow">
							<p>权威认证</p>
						</a>
					</li>
					<!--每一块li-->
					<li>
						<div class="Service_ul-img bk_2">
							<a href="javascript:void(0)" rel="nofollow"></a>
						</div>
						<a href="javascript:void(0)" rel="nofollow">
							<p> 一钻双证</p>
						</a>
					</li>
					<!--每一块li-->
					<li>
						<div class="Service_ul-img bk_3">
							<a href="javascript:void(0)" rel="nofollow"></a>
						</div>
						<a href="javascript:void(0)" rel="nofollow">
							<p> 终生保养</p>
						</a>
					</li>
					<!--每一块li-->
					<li>
						<div class="Service_ul-img bk_4">
							<a href="javascript:void(0)" rel="nofollow"></a>
						</div>
						<a href="javascript:void(0)" rel="nofollow">
							<p> 以小换大</p>
						</a>
					</li>
					<!--每一块li-->
					<li>
						<div class="Service_ul-img bk_5">
							<a href="javascript:void(0)" rel="nofollow"></a>
						</div>
						<a href="javascript:void(0)" rel="nofollow">
							<p> 15天退换</p>
						</a>
					</li>
					<!--每一块li-->
					<li>
						<div class="Service_ul-img bk_6">
							<a href="javascript:void(0)" rel="nofollow"></a>
						</div>
						<a href="javascript:void(0)" rel="nofollow">
							<p> 全国免运费</p>
						</a>
					</li>
					<!--每一块li-->
					<li>
						<div class="Service_ul-img bk_7">
							<a href="javascript:void(0)" rel="nofollow"></a>
						</div>
						<a href="javascript:void(0)" rel="nofollow">
							<p> 全程保险</p>
						</a>
					</li>
				</ul>

				<!--条文-->
				<div class="auto" id="Menu_Service">
				</div>
				<div class="tw-foot">
					<div class="auto" id="Copyright">
						<p> Copyright &copy; 2017 winner winner,chickdinner ！！团队 All Rights Reserved. 闽ICP备11012085号-2.ICP经营许可证闽B2-20140279 </p>
						<p> 中国互联网违法信息举报中心 | 中国公安网络110报警服务 | 本网站提供所售商品的正式发票 </p>
					</div>
				</div>
			</div>
		</div>
		<div class="model" id="model">
			<div class="Prompt" id="Prompt">
			</div>
			<span id="log_uid" style="display:none"></span>
			<span id="log_uname" style="display:none"></span>
			<span id="log_orderid" style="display:none"></span>
			<span id="log_price" style="display:none"></span>
		</div>
		<div style="display:none" class="Ffloat_kf">
			<div class="fkf_top">
				<div style="cursor: pointer; display: none;" id="bridgehead">
				</div>
				<div id="BizQQWPA"></div>
				<div onClick="showModel(modelsever);" style="cursor: pointer;" class="qq_hover" id="qqTalk_head">
				</div>
				<div id="BizQQWPAB" class="sh">
				</div>
				<div id="bdBridge">
					<a href="javascript:NTKF.im_openInPageChat()"> <img width="75" height="37" src="<%=path%>/images/zx.jpg" /></a>
				</div>
			</div>
			<div class="fkf_bottom">
				<img width="92" height="82" alt="Darry Ring 官方微信" src="<%=path%>/images/to_erwei.jpg" />
				<a href="#"> <img width="92" height="26" src="<%=path%>/images/db.jpg" /></a>
			</div>
		</div>
		<!--新版右边客服start-->
		<!--右边漂浮悬挂大的-->
		<div class="float_big">
			<div class="floatbig_hide fr"></div>
			<div class="floatbig_center">
				<!--客服-->
				<div onClick="javascript:void(0)" id="Bearonline" class="floatbig_center-kf"></div>
				<!--客服end-->
				<!--定制咨询-->
				<div id="dzzxonline" class="floatbig_center-zx">
					<a href="javascript:showModel(modelsever);"></a>
				</div>
				<!--定制咨询end-->
				<img src="<%=path%>/images/ew.jpg" />
			</div>
		</div>
		<!--右边漂浮悬挂大的end-->
		<!--右边漂浮悬挂小的-->
		<div class="float_small">
			<div class="floatbig_show fr"></div>
			<div class="floatbig_center">
				<!--客服-->
				<div onClick="javascript:void(0)" class="floatsmall_center-kf fr"></div>
				<!--客服end-->
				<!--定制咨询-->
				<div class="floatsmall_center-zx fr">
					<a href="javascript:showModel(modelsever);"></a>
				</div>
				<!--定制咨询end-->
				<!--二维码-->
				<div class="floatsmall_erwei fr">
					<a href="#"></a>
				</div>
				<!--二维码end-->
			</div>
		</div>
		<!--右边漂浮悬挂小的end-->
		<!--返回顶部-->
		<div class="comeback" style="display: block;"></div>
		<!--返回顶部end-->
		<!--新版右边客服end-->
		<div style="position: fixed; cursor: pointer; right: 6px; top: 289px; padding-bottom: 152px; z-index: 9999; width: 19px; height: 103px; display: none;" onClick="openserver();" id="openbnt">
			<img width="19" height="103" src="<%=path%>/images/server_03.jpg" />
		</div>
		<div class="news_tc">
			<div class="newtc_left">
			</div>
			<div class="newtc_right">
				<span style="cursor: pointer" class="sszs">稍后再说</span>
				<span class="xzzx"><a onClick="showxiaon()" style="cursor: pointer" id="chatnow"> 现在咨询</a></span>
				<div style="cursor: pointer" class="tocclose">
				</div>
			</div>
		</div>
		<div class="mask" id="masks">
		</div>
		<div style="display:none;" class="modelsever" id="modelsever">
			<div class="cs_top">
				<div class="cs_topcenter">
					<div style="width:300px; height:40px; line-height:40px; float:left; display:inline-block; ">
						顾客常见疑问
					</div>
					<div style="width:385px; height:20px; float:left; text-align:right; padding-top:20px;">
						<img width="55" height="9" style="cursor: pointer;" onClick="CloseMaskser()" src="<%=path%>/images/popup_window_btn_close.gif" />
					</div>
				</div>
			</div>
			<div class="cs_content clear">
				<div id="box1" class="box1">
					<div onClick="contenttxt(1,1)" id="content_title_11" class="content_title">
						<span style="margin-top:8px;">Q：Darry Ring 是否有实体店？</span>
					</div>
					<div id="content_title1_1" class="content_txt">
						<span style="margin-top:1px;">A：DR公司总部在香港，目前内地深圳市、北京市、重庆市、广州市、上海市、武汉市、南京市、长沙市设有实体店，支持到店订购，也支持全国在线官网订购。同时目前其他一线城市公司已在考察选址阶段，将陆续开设店面。</span>
					</div>
					<div onClick="contenttxt(1,2)" id="content_title_12" class="content_title">
						<span style="margin-top:8px;">Q：实体店具体位置？</span>
					</div>
					<div id="content_title1_2" class="content_txt">
						<span style="margin-top:1px;">A：深圳实体店地址：深圳南山区世界之窗旁欧陆小镇4号楼Darry Ring （地铁罗宝线世界之窗I出口）深圳店联系方式：0755-86621782。<p></p> 北京实体店地址：北京东二环朝阳门桥银河SOHO中心B座负一层2-109 （朝阳门地铁G出口） 北京店联系方式：010-59576758。<p></p> 上海实体店地址：上海长宁区淮海西路570号红坊创意园区G-108栋(近虹桥路) 上海店联系方式：021-60934520。<p></p> 广州实体店地址：广州市天河区天河北路233号中信广场商场136单元 广州店联系方式：020-38836315。<p></p> 重庆实体店地址：重庆市渝中区解放碑步行街民族路188号环球金融中心（WFC）LG-B02A 重庆店联系方式：023-63710835。<p></p> 武汉实体店地址：武汉市洪山区光谷意大利风情街5号楼一层51021号 武汉店联系方式：027-87688895。<p></p> 南京实体店地址：南京市长江路288号1912街区17号楼一层 南京店联系方式：025-83613520。<p></p> 长沙实体店地址：长沙市开福区中山路589号万达百货商场2楼 长沙店联系方式：0731-83878575。<p></p> 全国400客服热线：400 01 13520。</span>
					</div>
					<div onClick="contenttxt(1,3)" id="content_title_13" class="content_title">
						<span style="margin-top:8px;">Q：到店订购和官网订购的价格一致吗？</span>
					</div>
					<div id="content_title1_3" class="content_txt">
						<span style="margin-top:1px;">A：DR的所有商品，到店订购和官网订购的时间周期，价格，质量及售后服务均一致。</span>
					</div>
					<div onClick="contenttxt(1,4)" id="content_title_14" class="content_title">
						<span style="margin-top:8px;">Q：价格是否有折扣优惠？</span>
					</div>
					<div id="content_title1_4" class="content_txt">
						<span style="margin-top:1px;">A：DR的品牌寓意为一生唯一真爱，大多是用作见证彼此求婚或结婚这一神圣时刻，所以所有商品都是常年任何节假日没有折扣活动，就像彼此一生唯一真爱的承诺及永恒的爱情，永不打折。</span>
					</div>
					<div onClick="contenttxt(1,5)" id="content_title_15" class="content_title">
						<span style="margin-top:8px;">Q：为什么在官网上输入姓名身份证号后看不到款式？</span>
					</div>
					<div id="content_title1_5" class="content_txt">
						<span style="margin-top:1px;">A：www.darryring.com 官网首页点击—求婚钻戒，进入页面后不需要填写任何信息，移动鼠标到最下方，就可以看到Darry Ring女戒的所有款式。</span>
					</div>
					<div onClick="contenttxt(1,6)" id="content_title_16" class="content_title">
						<span style="margin-top:8px;">Q：到实体店是否可以立刻拿到戒指？</span>
					</div>
					<div id="content_title1_6" class="content_txt">
						<span style="margin-top:1px;">A：您好，DR的所有商品都是需要根据您选择的款式、手寸大小及刻字信息来定制。实体店仅提供款式体验及预订，与官网购买的定制时间是一致的，可于15-20个工作日内送到或自取。</span>
					</div>
				</div>
				<div id="box2" class="box2">
					<div onClick="contenttxt(2,1)" id="content_title_21" class="content_title"></div>
					<div id="content_title2_1" class="content_txt"></div>
					<div onClick="contenttxt(2,2)" id="content_title_22" class="content_title"></div>
					<div id="content_title2_2" class="content_txt">
					</div>
					<div onClick="contenttxt(2,3)" id="content_title_23" class="content_title"></div>
					<div id="content_title2_3" class="content_txt">
					</div>
					<div onClick="contenttxt(2,4)" id="content_title_24" class="content_title"></div>
					<div id="content_title2_4" class="content_txt">
					</div>
				</div>
				<div id="box3" class="box3">
					<div onClick="contenttxt(3,1)" id="content_title_31" class="content_title"></div>
					<div id="content_title3_1" class="content_txt">
					</div>
					<div onClick="contenttxt(3,2)" id="content_title_32" class="content_title"></div>
					<div id="content_title3_2" class="content_txt"></div>
					<div onClick="contenttxt(3,3)" id="content_title_33" class="content_title"></div>
					<div id="content_title3_3" class="content_txt"></div>
					<div onClick="contenttxt(3,4)" id="content_title_34" class="content_title"></div>
					<div id="content_title3_4" class="content_txt"></div>
				</div>
				<div id="box4" class="box4">
					<div onClick="contenttxt(4,1)" id="content_title_41" class="content_title"></div>
					<div id="content_title4_1" class="content_txt"></div>
					<div onClick="contenttxt(4,2)" id="content_title_42" class="content_title"></div>
					<div id="content_title4_2" class="content_txt"></div>
					<div onClick="contenttxt(4,3)" id="content_title_43" class="content_title"></div>
					<div id="content_title4_3" class="content_txt"></div>
					<div onClick="contenttxt(4,4)" id="content_title_44" class="content_title"></div>
					<div id="content_title4_4" class="content_txt"></div>
				</div>
				<div id="box5" class="box5">
					<div onClick="contenttxt(5,1)" id="content_title_51" class="content_title"></div>
					<div id="content_title5_1" class="content_txt"></div>
					<div onClick="contenttxt(5,2)" id="content_title_52" class="content_title"></div>
					<div id="content_title5_2" class="content_txt">
					</div>
					<div onClick="contenttxt(5,3)" id="content_title_53" class="content_title"></div>
					<div id="content_title5_3" class="content_txt">
					</div>
					<div onClick="contenttxt(5,4)" id="content_title_54" class="content_title"></div>
					<div id="content_title5_4" class="content_txt">
					</div>
					<div onClick="contenttxt(5,5)" id="content_title_55" class="content_title"></div>
					<div id="content_title5_5" class="content_txt">
					</div>
					<div onClick="contenttxt(5,6)" id="content_title_56" class="content_title"></div>
					<div id="content_title5_6" class="content_txt">
					</div>
				</div>
				<div id="box6" class="box6">
					<div onClick="contenttxt(6,1)" id="content_title_61" class="content_title"></div>
					<div id="content_title6_1" class="content_txt"></div>
					<div onClick="contenttxt(6,2)" id="content_title_62" class="content_title"></div>
					<div id="content_title6_2" class="content_txt">
					</div>
					<div onClick="contenttxt(6,3)" id="content_title_63" class="content_title"></div>
					<div id="content_title6_3" class="content_txt">
					</div>
					<div onClick="contenttxt(6,4)" id="content_title_64" class="content_title"></div>
					<div id="content_title6_4" class="content_txt">
					</div>
					<div onClick="contenttxt(6,5)" id="content_title_65" class="content_title"></div>
					<div id="content_title6_5" class="content_txt">
					</div>
					<div onClick="contenttxt(6,6)" id="content_title_66" class="content_title"></div>
					<div id="content_title6_6" class="content_txt">
					</div>
				</div>
				<div id="box7" class="box7">
					<div onClick="contenttxt(7,1)" id="content_title_71" class="content_title"></div>
					<div id="content_title7_1" class="content_txt">
					</div>
					<div onClick="contenttxt(7,2)" id="content_title_72" class="content_title"></div>
					<div id="content_title7_2" class="content_txt">
					</div>
					<div onClick="contenttxt(7,3)" id="content_title_73" class="content_title"></div>
					<div id="content_title7_3" class="content_txt">
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			function showbox(id) {
				getQeestion(id);
				for (var i = 1; i <= 8; i++) {
					if (i == id) {
						showdiv(id);
					} else {
						hidediv(i);
					}
				}
			}

			function contenttxt(id, sid) {
				for (var i = 1; i <= 7; i++) {
					if (i == id) {
						showtxt(id, sid);
					} else {
						hidetxt(i, sid);
					}
				}

			}

			function showtxt(id, sid) {
				var objtitle = $("#content_title" + id + "_" + sid);

				if (objtitle.css("display") == "none") {
					objtitle.show("fast");
				} else {

					hidetxt(id, sid);
				}
				//$("#"+id).show("fast");
			}

			function hidetxt(id, sid) {
				var objtitle = $("#content_title" + id + "_" + sid);
				objtitle.hide("fast");
			}

			function hidediv(id) {
				$("#box" + id).hide("fast");

				$("#li" + id).css({
					"font-size": "14px",
					"color": "#7d7d7d"
				});
			}

			function showdiv(id) {
				if ($("#box" + id).css("display") == "none") {
					$("#box" + id).show("fast");
					$("#li" + id).css({
						"font-size": "18px",
						"color": "#000000"
					});
				}

			}
		</script>
		<script type="text/javascript">
			function showMask() {
				$("#masks").css("height", $(document).height());
				$("#masks").css("width", $(document).width());
				$("#masks").fadeIn();
			}

			function showModel(divName) {
				showMask();
				/* var top = ($(window).height() - $(divName).height()) / 5;
				 var left = ($(window).width() - $(divName).width()) / 2;
				 var scrollTop = $(document).scrollTop();
				 var scrollLeft = $(document).scrollLeft();*/
				$(divName).fadeIn();
			}

			function CloseMaskser() {

				$("#modelsever").fadeOut("slow");
				$("#masks").fadeOut("slow");
				$("#mask").fadeOut("slow");
			}
		</script>
	</body>
</html>
