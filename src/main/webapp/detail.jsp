<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">

	<head>
		<title>钻戒详情</title>
		<meta charset="utf-8" />
		<link href="<%=path%>/css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
		<link href="<%=path%>/css/dr.css?v=1.3.5.0" type="text/css" rel="stylesheet" />
		<link href="<%=path%>/css/jiathis_share.css" type="text/css" rel="stylesheet" />
		<script src="<%=path%>/js/jquery.js" type="text/javascript"></script>
		<script src="<%=path%>/js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
		<script src="<%=path%>/js/buy_xq.js" type="text/javascript"></script>
		<script src="<%=path%>/js/Magnifier.js" type="text/javascript"></script>
		<script src="<%=path%>/js/fd_hd.js" type="text/javascript"></script>
		<script src="<%=path%>/js/navQH.js" type="text/javascript"></script>
		<script type="text/javascript" async="async" charset="utf-8" src="<%=path%>/js/zh_cn.js?siteid=kf_9883" data-requiremodule="lang"></script>
		<script type="text/javascript" async="async" charset="utf-8" src="<%=path%>/js/chat.in.js?siteid=kf_9883" data-requiremodule="chatManage"></script>
		<script type="text/javascript" async="async" charset="utf-8" src="<%=path%>/js/nt2.js?siteid=kf_9883" data-requiremodule="Window"></script>
		<script type="text/javascript" async="async" charset="utf-8" src="<%=path%>/js/zh_cn.js?siteid=kf_9883" data-requiremodule="lang"></script>
		<script type="text/javascript" async="async" charset="utf-8" src="<%=path%>/js/chat.in.js?siteid=kf_9883" data-requiremodule="chatManage"></script>
		<script type="text/javascript" async="async" charset="utf-8" src="<%=path%>/js/nt2.js?siteid=kf_9883" data-requiremodule="Window"></script>
		
	</head>

	<body>
		<div class="jiathis_style" style="position: absolute; z-index: 1000000000; display: none; top: 50%; left: 50%; overflow: auto;"></div>
		<div class="jiathis_style" style="position: absolute; z-index: 1000000000; display: none; overflow: auto;"></div>
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
							<!--登录注册-->
							<c:if test="${user == null }">
								<ul class="tright-ul fl">
										<li><a rel="nofollow" href="<%=path %>/login.jsp">登录</a><em>|</em></li>
										<li><a rel="nofollow" href="<%=path %>/reg.jsp">注册</a></li>
								</ul>
							</c:if>
							<c:if test="${user != null }">
								<ul class="tright-ul fl">
									<li><a><span id="ctl00_ucheader_lit">${user.unick }</span></a></li>
									<li> <a href="javascript:logout()" rel="nofollow">退出</a><em>|</em> </li>
									<li><a target="black" rel="nofollow" href="<%=path %>/member_index.jsp">我的DR</a><em>|</em></li>
									<li class="headed"><em class="icon shooping"></em><a target="black" rel="nofollow" href="<%=path %>/cart/findByUid.do">购物车</a></li>
								</ul>
							</c:if>
						</div>
						<!--头部右边end-->
					</div>
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
					<!--遮罩-->
					<div class="backall">
					</div>
					<!--遮罩end-->
					<!--钻戒页面中间-->
					<div class="cort">
						<div class="tobuy cmain">
							<div class="zbk_top spalid">
								<span>您当前的位置：</span>
								<span> <a href="javascript:void(0)">Darry Ring</a> </span>
								<span> <em>&gt;</em> </span>
								<span> <a href="javascript:void(0)">求婚钻戒</a> </span>
								<span> <em>&gt;</em> </span>
								<span> <a href="javascript:void(0)">钻戒详情</a> </span>
							</div>
							<!--购买页中间-->
							<div class="buy_cort">
								<!--购买页中间的左边图片-->
								<div class="buycort_left fl">
									<ul class="bc_left">
										<li class="li_border"> <img src="<%=path %>/${goodsView.goods.gimg1 }"/> </li>
										<li> <img src="<%=path %>/${goodsView.goods.gimg2 }"/> </li>
										<li> <img src="<%=path %>/${goodsView.goods.gimg3 }"/> </li>
										<li> <img src="<%=path %>/${goodsView.goods.gimg4 }"/> </li>
									</ul>
									<!--上下按钮-->
									<div class="top"></div>
									<div class="bottom"></div>
								</div>
								<!--购买页中间的左边图片end-->
								<!--购买页中间的中间图片-->
								<div class="buycort_center fl">
									<ul class="ul_center">
										<li id="magnifier2083" style="display: list-item;"> <img src="<%=path %>/${goodsView.goods.gimg1 }" /> 
											<span style="position: absolute; left: 248px; top: 248px; display: none; width: 150px; height: 150px; background: rgb(153, 153, 153) none repeat scroll 0% 0%; border: 1px solid rgb(0, 0, 0); cursor: move; opacity: 0.4;"></span>
										</li>
										<li id="magnifier2084"> <img src="<%=path %>/${goodsView.goods.gimg2 }" /> </li>
										<li id="magnifier2085"> <img src="<%=path %>/${goodsView.goods.gimg3 }" /> </li>
										<li id="magnifier2086"> <img src="<%=path %>/${goodsView.goods.gimg4 }" /> </li>
									</ul>
									<div class="kzyl"></div>
									<!--右按钮-->
									<div class="big_next"></div>
									<!--分享-->
									<div class="share">
										<!-- JiaThis Button BEGIN -->
										<div class="jiathis_style fl">
											<span class="jiathis_txt">分享到：</span>
											<a class="jiathis_button_qzone" title="分享到QQ空间"><span class="jiathis_txt jtico jtico_qzone"></span></a>
											<a class="jiathis_button_tsina" title="分享到新浪微博"><span class="jiathis_txt jtico jtico_tsina"></span></a>
											<a class="jiathis_button_tqq" title="分享到腾讯微博"><span class="jiathis_txt jtico jtico_tqq"></span></a>
											<a class="jiathis_button_renren" title="分享到人人网"><span class="jiathis_txt jtico jtico_renren"></span></a>
											<a target="_blank" class="jiathis jiathis_txt jtico jtico_jiathis"></a>
										</div>
										<script charset="utf-8" src="<%=path%>/js/jia.js" type="text/javascript"></script>
										<!-- JiaThis Button END -->
									</div>
									<!--分享end-->
								</div>
								<!--购买页中间的中间图片end-->
								<!--购买页中间的右边购买选项-->
								<div class="buycort_right fr">
									<!--钻戒-->
									<div class="byright_top">
										<p>${goodsView.goods.gseries }&nbsp;${goodsView.goods.gname }</p>
										<p> <span>&yen;${goodsView.goods.gprice }</span> </p>
										<div class="byright_top-xq">
											<i>最近售出：${goodsView.gsales }</i>
											<i>用户评论：5</i>
										</div>
									</div>
									<!--钻戒end-->
									<!--参数-->
									<div class="pho_cs" id="ctl00_content_zbDiv" style="padding-bottom: 20px;">
										<p> <span>简介：</span> <i>${goodsView.goods.gbrief }</i> </p>
										<p> <span>库存量：</span> <i>${goodsView.goods.gnum }</i> </p>
									</div>
									<!--参数end-->
									<!--选择材质刻字等-->
									<div class="byright_thr">
										<!--第一行-->
										<div id="materialDiv" class="thr_first">
											<span>材质：</span>
											<i class="iborder">${goodsView.goods.gtype }</i>
										</div>
										<!--第二行-->
										<div class="thr_first">
											<span>钻石：</span>
											<i class="iborder">${goodsView.goods.gweight }</i>
										</div>
										<div class="thr_first">
											<span>手寸：</span>
											<i class="iborder">${goodsView.goods.gsize }</i>
										</div>
									</div>
									<p class="thered_word">中国大陆用户付款后15个工作日内可收到货品,其它地区请咨询客服。</p>
									<!--购买选项-->
									<div id="addCa" class="button buy_button">
										<div title="购买darry ring钻戒" class="bt1" id="add">
											<span>加入购物车</span>
										</div>
										<div title="把darry ring加入购物车" class="bt2" id="buy">
											<span>立即购买</span>
										</div>
									</div>
								</div>
								<!--购买页中间的右边end-->
							</div>
							<!--购买页中间end-->
						</div>
						<!--小导航-->
						<div class="allthenav">
							<!--导航-->
							<div class="gd_nav">
								<ul class="gdnav_ul">
									<li class="gdnav_sp"> <span>商品详情</span> </li>
									<li> <span>最新评论<em id="commentDataCount">(5)</em></span> </li>
									<li> <span>如何购买</span> </li>
									<li> <span>常见问答</span> </li>
									<li> <span>售后服务</span> </li>
								</ul>
							</div>
							<!--导航end-->
							<!--导航下的线条-->
							<div class="gd_nav-line"></div>
							<!--导航下的线条end-->
						</div>
						<!--小导航end-->
						<!--导航下的所有-->
						<div class="sy_xx">
							<!--商品详情-->
							<div style="display:block" id="wrap" class="thing_wrap xqbuy_it cmain">
								<!--参数详情加图片-->
								<div class="xq_it cmain">
									<!--产品详情图片-->
									<div class="allphoto">
										<p>
											<img width="856" height="206" src="<%=path %>/images/shot.jpg" />
											<img width="480" height="384" src="<%=path %>/${goodsView.goods.gimg1}" />
											<img width="480" height="384" src="<%=path %>/${goodsView.goods.gimg2}" />
											<img width="480" height="384" src="<%=path %>/${goodsView.goods.gimg3}" />
											<img width="480" height="384" src="<%=path %>/${goodsView.goods.gimg4}" />
											<img width="980" height="283" src="<%=path %>/images/20150120184913353df5c1de.jpg" />
											<img width="980" height="176" src="<%=path %>/images/20150120184922187f1ab334.jpg" />
											<img width="980" height="196" src="<%=path %>/images/20150120184930130cbc3935.jpg" />
											<img width="980" height="291" src="<%=path %>/images/20150120184941a685f99b28.jpg" />
											<img width="980" height="160" src="<%=path %>/images/201501201849490a77d2f900.jpg" />
											<img width="980" height="194" src="<%=path %>/images/20150120184957b2e66540f5.jpg" />
											<img width="980" height="268" src="<%=path %>/images/201501201850057d164a24a8.jpg" />
											<img width="980" height="173" src="<%=path %>/images/201501201850148218920af1.jpg" />
										</p>
									</div>
									<!--产品详情图片end-->
								</div>
								<!--参数详情加图片end-->
								<!--评论页开始-->
							</div>
							<!--商品详情end-->
							<!--最新评论-->
							<!--评论页-->
							<div id="wrap" class="xq_it xqbuy_it cmain">
								<script>
									var CommentLoadEvent = function() {};
									var CommentCurrentNum = 1;

									function CommentLoadData(currentPageNum) {
										$.get("/nAPI/Comment.aspx?pagenum=" + currentPageNum + "&pid=404", function(data) {
											$("#commentContent").empty();
											$("#commentContent").html(data);
											$("#countpl").text(CommentDataCount);
											$("#commentpnum").text(currentPageNum + "/" + CommentPageCount);
											CommentCurrentNum = currentPageNum;
											__CurrentPagingComment.ReCreate(CommentPageCount, currentPageNum);
											CommentLoadEvent(CommentDataCount);
										});
									}

								</script>
								<!--评论页-->
								<div class="ask cmain">
									<!--别人的评论-->
									<div class="talk_it">
										<!--new评论标题-->
										<div class="talkit_top">
											<div class="talktop_left">
												最新评论
											</div>
										</div>
										<div id="commentContent">
											<!--每一条评论-->
											<div class="every_talk">
												<!--每一条评论左边-->
												<div class="evertalk_right fl">
													<p>好棒，服务好好</p>
													<p></p>
												</div>
												<!--每一条评论左边end-->
												<!--每一条评论左边-->
												<div class="evertalk_left fr">
													<!--星星-->
													<p class="star"> </p>
													<div class="name_date">
														<p>3**</p>
														<p>2015/7/7 12:16:02</p>
													</div>
												</div>
												<!--每一条评论左边end-->
											</div>
											<!--每一条评论end-->
											<!--每一条评论-->
											<div class="every_talk">
												<!--每一条评论左边-->
												<div class="evertalk_right fl">
													<p>很好很有意义</p>
													<p></p>
												</div>
												<!--每一条评论左边end-->
												<!--每一条评论左边-->
												<div class="evertalk_left fr">
													<!--星星-->
													<p class="star"> </p>
													<div class="name_date">
														<p>A**</p>
														<p>2015/6/9 13:18:31</p>
													</div>
												</div>
												<!--每一条评论左边end-->
											</div>
											<!--每一条评论end-->
											<!--每一条评论-->
											<div class="every_talk">
												<!--每一条评论左边-->
												<div class="evertalk_right fl">
													<p>哈哈，很好很好</p>
													<p></p>
												</div>
												<!--每一条评论左边end-->
												<!--每一条评论左边-->
												<div class="evertalk_left fr">
													<!--星星-->
													<p class="star"> </p>
													<div class="name_date">
														<p>匿名**</p>
														<p>2015/5/15 16:42:36</p>
													</div>
												</div>
												<!--每一条评论左边end-->
											</div>
											<!--每一条评论end-->
											<!--每一条评论-->
											<div class="every_talk">
												<!--每一条评论左边-->
												<div class="evertalk_right fl">
													<p>刚去了武汉店回来有点失望，戒指大了半寸打算编个绳子的，结果营业员说不允许编只能改大小，态度真是不想说了。</p>
													<p></p>
												</div>
												<!--每一条评论左边end-->
												<!--每一条评论左边-->
												<div class="evertalk_left fr">
													<!--星星-->
													<p class="star"> </p>
													<div class="name_date">
														<p>勺**</p>
														<p>2015/4/19 21:15:33</p>
													</div>
												</div>
												<!--每一条评论左边end-->
											</div>
											<!--每一条评论end-->
											<!--每一条评论-->
											<div class="every_talk">
												<!--每一条评论左边-->
												<div class="evertalk_right fl">
													<p>赞赞赞</p>
													<p></p>
												</div>
												<!--每一条评论左边end-->
												<!--每一条评论左边-->
												<div class="evertalk_left fr">
													<!--星星-->
													<p class="star"> </p>
													<div class="name_date">
														<p>匿名**</p>
														<p>2015/2/11 22:51:35</p>
													</div>
												</div>
												<!--每一条评论左边end-->
											</div>
											<!--每一条评论end-->
										</div>
										<!--new评论标题end-->
										<!--评论数目-->
										<div class="talkit_top">
											<div class="bt2 fl">
												<a target="_blank" href="javascript:void(0)">我要评论</a>
											</div>
											<div class="talktop_left fr">
												<span>共<i id="countpl">6</i>条评论</span>
												<em>|</em>
												<span id="commentpnum">1/1</span>
												<span class="next_page">下一页</span>
											</div>
										</div>
										<!--评论数目end-->
									</div>
									<!--别人的评论end-->
									<!--分页end-->
								</div>
								<!--评论页end-->
							</div>
							<!--评论页end-->
							<!--最新评论end-->
							<!--如何购买-->
							<div id="wrap" class="xq_it xqbuy_it cmain">
								<div>
									<img width="980" height="723" alt="" src="<%=path %>/images/2014111404094563e11107a1.jpg" />
								</div>
							</div>
							<!--如何购买end-->
							<!--常见问答-->
							<div id="wrap" class="xq_it xqbuy_it cmain">
								<script>
									var ComLoadEvent = function() {};
									var ComCurrentNum = 1;

									function ComLoadData(currentPageNum) {
										$.get("/nAPI/ComQuestion.aspx?pagenum=" + currentPageNum, function(data) {
											$("#questionContent").empty();
											$("#questionContent").html(data);
											$(".count").text(ComDataCount);
											$("#compnum").text(currentPageNum + "/" + ComPageCount);
											ComCurrentNum = currentPageNum;
											__Question.ReCreate(ComPageCount, currentPageNum);
											ComLoadEvent(ComPageCount);
										});
									}

									function ComToNext() {
										if (ComPageCount >= (ComCurrentNum + 1)) {
											__Question.Next();
										}
									}
								</script>
								<div class="xq_it cmain">
									<div class="talk_it">
										<!--new提问标题-->
										<div class="talkit_top">
											<div class="talktop_left">
												常见问答
											</div>
										</div>
										<div id="questionContent">
											<div class="every_talk">
												<!--每一条评论左边-->
												<div class="question_left fl">
													<p> <i></i> <span> <span style="margin-top:8px;">Q：哪些电商平台可以购买到DR正品？</span> </span>
													</p>
													<p class="answer"> <i></i> <span> </span></p>
													<p> <span style="margin-top:8px;">A：戴瑞目前开通电商平台有：亚马逊、京东、天猫、一号店等电商平台？</span></p>
													<p>&nbsp; </p>
													<p> <span style="margin-top:8px;">
													<a href="javascript:void(0)"><img width="201" height="85" src="<%=path %>/images/20150707101641f9d958efff.jpg" />
													</a>&nbsp;<a href="javascript:void(0)"><img width="201" height="85" src="<%=path %>/images/2015070710170180545692fd.jpg" alt="" /></a>&nbsp;<a href="http://list.yhd.com/c0-0-0/b969402-30038/a-s1-v4-p1-price-d0-f0-m1-rt0-pid-mid0-k%E7%8F%A0%E5%AE%9D/"><img width="201" height="85" src="<%=path %>/images/20150707101711e7690bde7f.jpg" alt="" /></a>&nbsp;<a href="http://www.amazon.cn/s/ref=sr_nr_i_0?fst=as%3Aoff&amp;rh=k%3ADarry+Ring%2Ci%3Ajewelry&amp;keywords=Darry+Ring&amp;ie=UTF8&amp;qid=1436234715"><img width="201" height="85" src="<%=path %>/images/20150707101722a3e63ffc72.jpg" alt="" /></a></span></p>
													<p></p>
												</div>
												<!--每一条评论左边end-->
											</div>
											<div class="every_talk">
												<!--每一条评论左边-->
												<div class="question_left fl">
													<p> <i></i> <span> <span style="margin-top:8px;">Q：网上购买，如果手寸不合适或者想要修改刻字怎么办阿？</span> </span>
													</p>
													<p class="answer"> <i></i> <span> <span style="margin-top:1px;">A：小戴非常理解您的顾虑，请您放心。DR支持常规手寸范围内终身免工费修改手寸或刻字的呢。</span> 注：女士常规手寸范围（8-15），男士常规手寸范围（15-22）；刻字范围（5个汉字/10个英文字母）</span>
													</p>
													<p></p>
												</div>
												<!--每一条评论左边end-->
											</div>
											<div class="every_talk">
												<!--每一条评论左边-->
												<div class="question_left fl">
													<p> <i></i> <span> <span style="margin-top:8px;">Q：只能购买一次，如果以后款式不喜欢了怎么办？</span> </span>
													</p>
													<p class="answer"> <i></i> <span> <span style="margin-top:1px;">A：请您放心，DR支持每年一次免工费更换款式/钻石升级服务的呢。您届时联系官网客服协助您进行换款申请即可哦。</span> </span>
													</p>
												</div>
												<!--每一条评论左边end-->
											</div>
											<div class="every_talk">
												<!--每一条评论左边-->
												<div class="question_left fl">
													<p> <i></i> <span> <span style="margin-top:8px;">Q：购买了Darry Ring的戒指不满意可以退货吗？</span> </span>
													</p>
													<p class="answer"> <i></i> <span> <span style="margin-top:1px;">A：您好，DR支持您收到货品后15天内无理由退换货的哦。你收到商品如果不是十分满意，可以联系客服选择更换款式或是退货处理的。但因DR都是定制商品，如非质量原因申请退货，则需要扣除一定的定制费用。 注：扣费标准请参考index.jsp/help_se/84.jsp</span> </span>
													</p>
												</div>
												<!--每一条评论左边end-->
											</div>
											<div class="every_talk">
												<!--每一条评论左边-->
												<div class="question_left fl">
													<p> <i></i> <span> <span style="margin-top:8px;">Q：Darry Ring戒指内可以刻字吗？</span> </span>
													</p>
													<p class="answer"> <i></i> <span> <span style="margin-top:1px;">A：您好，DR戒指类产品均支持免费刻字服务（刻字范围：5个汉字/10个英文字母）</span> </span>
													</p>
												</div>
												<!--每一条评论左边end-->
											</div>
											<div class="every_talk">
												<!--每一条评论左边-->
												<div class="question_left fl">
													<p> <i></i> <span> <span style="margin-top:8px;">Q：收到后如果级别跟我选的不一样怎么处理？</span></span>
													</p>
													<p class="answer"> <i></i> <span> <span style="margin-top:1px;">A：您好，定制中心都是按照您挑选的钻石级别来帮您定制，复检的结果如果出现不符，那么您是可以无条件退回给我们，并由我们来承担复检的费用，以及邮寄的费用。</span> </span>
													</p>
												</div>
												<!--每一条评论左边end-->
											</div>
											<div class="every_talk">
												<!--每一条评论左边-->
												<div class="question_left fl">
													<p> <i></i> <span> <span style="margin-top:8px;">Q：有哪些售后服务？</span> </span>
													</p>
													<p class="answer"> <i></i> <span> <span style="margin-top:1px;">A：DR支持终身免工费修改手寸/刻字、收到货品后15天无理由退换货服务、每年一次免工费更换款式/钻石升级、终身免工费保养与维护。</span> </span>
													</p>
												</div>
												<!--每一条评论左边end-->
											</div>
											<div class="every_talk">
												<!--每一条评论左边-->
												<div class="question_left fl">
													<p> <i></i> <span> <span style="margin-top:8px;">Q：可以保证在我要求的使用时间之前到达吗？</span></span>
													</p>
													<p class="answer"> <i></i> <span> <span style="margin-top:1px;">A：非常抱歉，快递运输过程中，导致延迟的因素很多，恶劣的天气或者航班延误、或者节假日个别快递点调休，因此我们无法百分之百的保证在您的期望日抵达。如出现此类情况，请您包涵及谅解，根据以往经验99%的订单会准时到达。）</span> </span>
													</p>
												</div>
												<!--每一条评论左边end-->
											</div>
										</div>
										<!--new评论标题end-->
										<!--联系客服-->
										<div class="talkit_bottom">
											<div class="talkit_top-lx fr">
												<span class="fl">更多疑问咨询请联系我们，欢迎留下您宝贵的意见。</span>
												<div class="bt2">
													<span>联系客服</span>
												</div>
											</div>
										</div>
										<!--联系客服end-->
									</div>

								</div>
							</div>
							<!--常见问答end-->
							<!--售后服务-->
							<div id="wrap" class="xq_it xqbuy_it cmain">
								<div>
									<img width="980" height="669" alt="" src="<%=path %>/images/201411140408514e81071ba7.jpg" />&nbsp;
								</div>
								<div>
									&nbsp;
								</div>
								<div>
									&nbsp;
								</div>
							</div>
							<!--售后服务end-->
						</div>
						<!--导航下的所有end-->

						<script src="<%=path%>/js/click_hide.js" type="text/javascript"></script>
						<script src="<%=path%>/js/index_clear.js" type="text/javascript"></script>
						<!--验证身份框-->
						<div class="yz_password">
							<div class="yzp_border">
								<div class="yzpb_top">
								</div>
								<!--未购买过Darryring-->
								<div style="display: none" class="yzpb_cort toyz_nobuy wgm">
									<h3> 真爱验证</h3>
									<h4> Darry Ring 求婚钻戒，男士一生只能定制一枚</h4>
									<p> <span id="ng"></span>先生 您好！</p>
									<p> 对不起,所有的饰品需要购买过Darry Ring求婚钻戒后才可以购买!</p>
									<p> 点击<a href="lists.jsp">这里</a>购买Darry Ring求婚钻戒，祝您购物愉快 ！</p>
								</div>
								<!--未购买过end-->
								<!--未登陆-->
								<div style="display: none" class="yzpb_cort toyz_buyit wdl">
									<h3> 真爱验证</h3>
									<h4> Darry Ring 求婚钻戒，男士一生只能定制一枚</h4>
									<p> 所有饰品仅限拥有Darry Ring求婚钻戒的恋人购买</p>
									<p> 您尚未登录，无法购买请<a href="<%=path %>/login.jsp">登录</a>/<a href="<%=path %>/reg.jsp">注册</a></p>
								</div>
								<!--未登陆 end-->
								<!--购买过Darry钻戒-->
								<div style="display: none" class="yzpb_cort toyz_buyit haveDarry">
									<h3> 真爱验证</h3>
									<h4> Darry Ring 求婚钻戒，男士一生只能定制一枚</h4>
									<p> <span id="cg"></span>先生 您好！</p>
									<p> 您已成功订购Darry Ring，所有饰品均可任意购买!</p>
									<p> 谢谢您对Darry Ring的支持 ，祝您购物愉快。</p>
									<div class="ts_button">
										<div id="btnBuy" class="bt2">
											<span>立即购买</span>
										</div>
									</div>
								</div>
								<!--购买过Darry钻戒-->
								<!--购买过Darry钻戒-->
								<div style="display: none" class="yzpb_cort toyz_buyit notCart">
									<h3> 真爱验证</h3>
									<h4> Darry Ring 求婚钻戒，男士一生只能定制一枚</h4>
									<p> <span id="noCart"></span>先生 您好！</p>
									<p> 您的购物车已存在Darry Ring钻戒，所有饰品均可任意购买!谢谢您对Darry Ring的支持 ，祝您购物愉快。</p>
									<div class="ts_button">
										<div id="btnbuy2" class="bt2">
											<span>立即购买</span>
										</div>
									</div>
								</div>
								<!--购买过Darry钻戒-->
								<!--未付款的DR钻戒订单-->
								<div style="display: none" class="yzpb_cort toyz_buyit" id="noPayOrder">
									<h3> 真爱验证</h3>
									<h4> Darry Ring 求婚钻戒，男士一生只能定制一枚</h4>
									<p> <span id="noPay"></span>先生 您好！</p>
									<p>你有未付款DR求婚钻戒订单，请先付款成为DR用户才能购买饰品<br />点击<a href="member_order.jsp">这里</a>进行付款，祝您购物愉快！</p>
								</div>
								<!--未付款的DR钻戒订单-->
								<div class="yzpb_bottom">
								</div>
							</div>
							<!--close-->
							<div class="yz_close">
							</div>
							<!--close end-->
						</div>
						<!--验证身份框end-->
						<script type="text/javascript">
							
							$(function() {
								//添加到购物车
								$('#add').click(function() {
									//判断是否登录
									var user = '${user}';
									if (user != "") {
										if(confirm("确定添加到购物车吗？")){
											var gid = '${goodsView.goods.gid }';
											$.ajax({
												type:"get",
												url:"<%=path %>/cart/add.do",
												data:{gid:gid},
												success:function(msg){
													if(msg == 1)
														alert("添加成功");
													else
														alert("同一商品限购一枚");
												}
											});
										}
									} else {
										//未登录
										$(".wdl").show();
										$('.yz_password').show();
										$('.backall').show();
									}
								});
								//立即购买
								$('#buy').click(function() {
									//判断是否登录
									var user = '${user}';
									if (user != "") {
										if(confirm("确定购买吗？")){
											var gid = '${goodsView.goods.gid }';
											$.ajax({
												type:"get",
												url:"<%=path %>/cart/add.do",
												data:{gid:gid},
												success:function(msg){
													if(msg == 1)
														location.href = "<%=path %>/cart/findByUid.do";
													else
														alert("同一商品限购一枚");
												}
											});
										}
									} else {
										//未登录
										$(".wdl").show();
										$('.yz_password').show();
										$('.backall').show();
									}
								});
								$('.yz_close').click(function() {
									$(".yz_password").hide();
									$(".wdl").hide();
									$(".backall").hide();
								});

							});
						</script>
					</div>
				</div>
				<!--底部-->
				<div class="footer">
					<!--错误-->
					<!--提示-->
					<div class="loverit_word2">
						Darry Ring严格规定男士凭身份证一生仅能定制一枚，象征男人一生真爱的最高承诺。输入身份证号码即可查询购买记录。
					</div>
					<!--提示end-->
					<div class="loverit_wrong2">
						<p>信息填写不正确，请重新输入。</p>
					</div>
					<!--错误end-->

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
						<div class="tw-foot">
							<div class="auto" id="Copyright">
								<p> Copyright &copy; 2017 winner winner,chicken dinner All Rights Reserved. 闽ICP备11012085号-2.ICP经营许可证闽B2-20140279 </p>
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
				<!--客服(2014年8月29日)-->
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
							<a href="javascript:void(0)"> <img width="75" height="37" src="<%=path%>/images/zx.jpg" /></a>
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
						<!--二维码-->
						<div class="floatsmall_erwei fr">
							<a href="#"></a>
						</div>
						<!--二维码end-->
					</div>
				</div>
				<!--右边漂浮悬挂小的end-->
				<!--返回顶部-->
				<div class="comeback"></div>
				<!--返回顶部end-->
				<!--新版右边客服end-->
				<div style="position: fixed; cursor: pointer; right: 6px; top: 289px; padding-bottom: 152px; z-index: 9999; width: 19px; height: 103px; display: none;" onClick="openserver();" id="openbnt">
					<img width="19" height="103" src="<%=path%>//images/server_03.jpg" />
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
