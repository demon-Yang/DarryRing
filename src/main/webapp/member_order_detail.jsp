<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
<html>
  <head>
		<title>个人中心 - 订单详情</title>
		<meta charset="utf-8"/>
		<link href="<%=path%>/css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet"/>
    	<link href="<%=path%>/css/member.css?v=1.3.6.0" type="text/css" rel="stylesheet"/>
     	<script src="<%=path%>/js/jquery.js" type="text/javascript"></script> 
     	<script src="<%=path%>/js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
     	<script src="<%=path%>/js/member.js" type="text/javascript"></script>
     	</head>
<body>
<!--头部-->
<div class="cmain">
    <div class="headtop">
        <!--头部左边-->
        <div class="top-left fl">
            <a title="Darry Ring" href="index.jsp">
                <img width="187" height="42" alt="Darry Ring官网" src="<%=path%>/images/logo.png">
            </a><span style="font-weight: normal;">求婚钻戒领导品牌</span>
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
        <!--导航的右边-->
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
        
    <div class="cort">
    <div class="tobuy cmain">
    <div class="cmain mb_back">
        
        <div class="zbk_top spalid">
        <span>您当前的位置：</span>
        <span id="ctl00_content_website_SiteMapPath1"><span>
                <a href="javascript:void(0)">Darry Ring</a>
            </span><span>
            <em>></em>
            </span><span>
            <em>></em>
            </span><span>
            <span>订单详情</span>
            </span></span>
        </div>
        <div class="member_cort">
        
		<div class="member_cort-left fl">
		    <!--我的DR-->
		    <div class="member_cortleft-tittle">
		        <i class="mb_home"></i><a rel="nofollow" href="<%=path %>/member_index.jsp">我的DR</a>
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
         <!--右边的主要内容-->
            <div class="member_cort-right fr">
            	<!--我的订单详情-->
                <div class="member_myorder-xq">
                	<!--详情顶部-->
                    <ul class="member_myorder-xq-tittle">
                    	<li>
                        	<i>您的订单号：${orderView.order.oid }</i>
                        </li>
                        <li>
                        	<i>订单状态： </i>
                            <a href="javascript:void(0)">${orderView.order.ostatus }</a>
                        </li>
                        <li>
                            <i>下单时间：</i>
                            <span>${orderView.order.odate }</span>
                        </li>
                    </ul>
                    <!--详情顶部-->
                    <!--订单情况-->
                    <ul style="display:block;" class="member_myorder-xq-ul">
                        
                                <li>
                        	        <!--上-->
                                    <div class="myorder-xq-ul-top">
                                    	提交订单
                                    </div>
                                    <!--上end-->
                                    <!--中-->
                                    <div class="myorder-xq-ul-cort xqul-cort1 xqul-cort1-cilck"></div>
                                    <!--中end-->
                                    <!--下-->
                                    <div style="display:block" class="myorder-xq-ul-bottom">
                            	        <img width="21" height="18" src="<%=path%>/images/ok.png">
                                        <p></p>
                                        <p></p>
                                    </div>
                                    <!--下end-->
                                </li>
                                <!--提交订单end-->
                                <li style="display:block">
                        	        <div class="myorder-xq-ul-line myorder-xq-ul-line-click"></div>
                                </li>
                            
                                <li>
                        	        <!--上-->
                                    <div class="myorder-xq-ul-top">
                                    	审核完成
                                    </div>
                                    <!--上end-->
                                    <!--中-->
                                    <div class="myorder-xq-ul-cort xqul-cort2 "></div>
                                    <!--中end-->
                                    <!--下-->
                                    <div style="display:none" class="myorder-xq-ul-bottom">
                            	        <img width="21" height="18" src="<%=path%>/images/ok.png">
                                        <p></p>
                                        <p></p>
                                    </div>
                                    <!--下end-->
                                </li>
                                <!--提交订单end-->
                                <li style="display:block">
                        	        <div class="myorder-xq-ul-line "></div>
                                </li>
                            
                                <li>
                        	        <!--上-->
                                    <div class="myorder-xq-ul-top">
                                   		 商品定制
                                    </div>
                                    <!--上end-->
                                    <!--中-->
                                    <div class="myorder-xq-ul-cort xqul-cort3 "></div>
                                    <!--中end-->
                                    <!--下-->
                                    <div style="display:none" class="myorder-xq-ul-bottom">
                            	        <img width="21" height="18" src="<%=path%>/images/ok.png">
                                        <p></p>
                                        <p></p>
                                    </div>
                                    <!--下end-->
                                </li>
                                <!--提交订单end-->
                                <li style="display:block">
                        	        <div class="myorder-xq-ul-line "></div>
                                </li>
                            
                                <li>
                        	        <!--上-->
                                    <div class="myorder-xq-ul-top">
                                    	检测出库
                                    </div>
                                    <!--上end-->
                                    <!--中-->
                                    <div class="myorder-xq-ul-cort xqul-cort4 "></div>
                                    <!--中end-->
                                    <!--下-->
                                    <div style="display:none" class="myorder-xq-ul-bottom">
                            	        <img width="21" height="18" src="<%=path%>/images/ok.png">
                                        <p></p>
                                        <p></p>
                                    </div>
                                    <!--下end-->
                                </li>
                                <!--提交订单end-->
                                <li style="display:block">
                        	        <div class="myorder-xq-ul-line "></div>
                                </li>
                            
                                <li>
                        	        <!--上-->
                                    <div class="myorder-xq-ul-top">
                                    	等待收货
                                    </div>
                                    <!--上end-->
                                    <!--中-->
                                    <div class="myorder-xq-ul-cort xqul-cort5 "></div>
                                    <!--中end-->
                                    <!--下-->
                                    <div style="display:none" class="myorder-xq-ul-bottom">
                            	        <img width="21" height="18" src="<%=path%>/images/ok.png">
                                        <p></p>
                                        <p></p>
                                    </div>
                                    <!--下end-->
                                </li>
                                <!--提交订单end-->
                                <li style="display:block">
                        	        <div class="myorder-xq-ul-line "></div>
                                </li>
                            
                                <li>
                        	        <!--上-->
                                    <div class="myorder-xq-ul-top">
                                   		 完成
                                    </div>
                                    <!--上end-->
                                    <!--中-->
                                    <div class="myorder-xq-ul-cort xqul-cort6 "></div>
                                    <!--中end-->
                                    <!--下-->
                                    <div style="display:none" class="myorder-xq-ul-bottom">
                            	        <img width="21" height="18" src="<%=path%>/images/ok.png">
                                        <p></p>
                                        <p></p>
                                    </div>
                                    <!--下end-->
                                </li>
                                <!--提交订单end-->
                                <li style="display:none">
                        	        <div class="myorder-xq-ul-line "></div>
                                </li>
                            
                    	<!--提交订单-->
                    	
                    </ul>
                    <!--订单情况end-->
                    <!--订单信息-->
                    <div class="member_myorder-xq-news">
                    	<div class="myorder-xq-news_top">
                        	<p class="fl">订单信息</p>
                        </div>
                        <!--订单信息的table-->
                        <table cellspacing="0" cellpadding="0" border="0" class="myorder-xq-news_table" style="font-family:微软雅黑">
                        	<tbody><tr>
                            	<td class="news_table-td1">订单状态</td>
                                <td class="news_table-td2">${orderView.order.ostatus }</td>
                                <td class="news_table-td1">下单日期</td>
                                <td class="news_table-td3">${orderView.order.odate }</td>
                            </tr>
                            <tr>
                            	<td class="news_table-td1">订单总金额</td>
                                <td class="news_table-td2">￥${orderView.order.ototal }</td>
                                <td class="news_table-td1">物流方式</td>
                                <td class="news_table-td3">${orderView.order.ologistics }</td>
                            </tr>
                            <tr>
                            	<td class="news_table-td1">收货人</td>
                                <td class="news_table-td2">${orderView.address.aname }</td>
                                <td class="news_table-td1">邮政编码</td>
                                <td class="news_table-td3">${orderView.address.apcode }</td>
                            </tr>
                            <tr>
                            	<td class="news_table-td1">移动电话</td>
                                <td class="news_table-td2">${orderView.address.atel }</td>
                                <td class="news_table-td1">收货人地址</td>
                                <td class="news_table-td3">${orderView.address.addr }</td>
                            </tr>
                             <tr>
                            	<td class="news_table-td1">备注</td>
                                <td colspan="3" class="news_table-td4">${orderView.order.ocontent }</td>
                            </tr>
                        </tbody></table>
                        <!--订单信息的table end-->
                        <div class="myorder-xq-news_top">
                        	<p class="fl">商品明细</p>
                        </div>
                        <!--商品明细-->
                        <table cellspacing="0" cellpadding="0" border="0" class="myorder-xq-shop_table">
                        	<tbody><tr class="xq-shop_table-trfirst">
                            	<td class="xq-shop_table-td1">商 品</td>
                                <td class="xq-shop_table-td2">名称</td>
                                <td class="xq-shop_table-td3">材 质</td>
                                <td class="xq-shop_table-td4">钻石</td>
                                <td class="xq-shop_table-td5">手寸</td>
                                <td class="xq-shop_table-td6">价 格</td>
                            </tr>
                            	<c:forEach items="${orderView.gList }" var="list">
                                    <tr class="xq-shop_table-trsec">
                            	        <td class="xq-shop_table-td1">
                                	        <a href="/darry_ring/87.html">
                                            <img width="55" height="55" class="fl" src="<%=path%>/${list.gimg1 }">
                                            <span class="fl">
                                            	${list.gseries }
                                            </span></a>
                                        </td>
                                        <td class="xq-shop_table-td2">
                                	        <p>${list.gname }</p>
                              	        </td>
                                        <td class="xq-shop_table-td3">${list.gtype }</td>
                                        <td class="xq-shop_table-td4">
                                	        <p>${list.gweight }</p>
                                        </td>
                                        <td class="xq-shop_table-td5">${list.gsize }</td>
                                        <td style="font-family:微软雅黑" class="xq-shop_table-td6">￥${list.gprice }</td>
                                    </tr>
                                </c:forEach>
                        	</tbody>
                        </table>
                        <!--商品明细end-->

                    <!--订单信息end-->
                    <!--返回订单-->
                    <div class="member_myorder-xq-retrun">
                    	<a class="fr" href="<%=path %>/order/findByUid.do">> 返回订单列表</a>
                    </div>
                    <!--返回订单end-->
                </div>
            	<!--我的订单详情end-->
            </div>
            <!--右边的主要内容end-->
            </div>
            </div>
    </div>
    </div>
    </div>

        </div>
        

<!--底部-->
<div class="footer">
        <!--错误-->
            <!--提示-->
	        <div class="loverit_word2">Darry Ring严格规定男士凭身份证一生仅能定制一枚，象征男人一生真爱的最高承诺。输入身份证号码即可查询购买记录。</div>
	        <!--提示end-->
	        <div class="loverit_wrong2"><p>信息填写不正确，请重新输入。</p></div>      
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
<script src="http://wpa.b.qq.com/cgi/wpa.php" charset="utf-8" type="text/javascript"></script>
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
        <a href="javascript:void(0)">
            <img width="75" height="37" src="<%=path%>/images/zx.jpg"></a></div>
            
    </div>
    <div class="fkf_bottom">
        <img width="92" height="82" alt="Darry Ring 官方微信" src="<%=path%>/images/to_erwei.jpg">
        <a href="#">
            <img width="92" height="26" src="<%=path%>/images/db.jpg"></a>
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
		<img src="<%=path%>/images/ew.jpg">
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
<div class="comeback"></div>
<!--返回顶部end-->

<!--新版右边客服end-->

<div style="position: fixed; cursor: pointer; right: 6px; top: 289px; padding-bottom: 152px; z-index: 9999; width: 19px; height: 103px; display: none;" onClick="openserver();" id="openbnt">
    <img width="19" height="103" src="<%=path%>/images/server_03.jpg"></div>
<div class="news_tc">
    <div class="newtc_left">
    </div>
    <div class="newtc_right">
        <span style="cursor: pointer" class="sszs">稍后再说</span> <span class="xzzx"><a onClick="showxiaon()" style="cursor: pointer" id="chatnow">
            现在咨询</a></span>
        <div style="cursor: pointer" class="tocclose">
        </div>
    </div>
</div>

    <div class="mask" id="masks">
    </div>
<div style="display:none;" class="modelsever" id="modelsever">
<div class="cs_top">
<div class="cs_topcenter"><div style="width:300px; height:40px; line-height:40px; float:left; display:inline-block; ">顾客常见疑问</div> 
<div style="width:385px; height:20px; float:left; text-align:right; padding-top:20px;">
<img width="55" height="9" style="cursor: pointer;" onClick="CloseMaskser()" src="<%=path%>/images/popup_window_btn_close.gif">
</div>

</div>
</div>
<div class="cs_content clear">
<div id="box1" class="box1">
<div onClick="contenttxt(1,1)" id="content_title_11" class="content_title"><span style="margin-top:8px;">Q：Darry Ring 是否有实体店？</span></div>
<div id="content_title1_1" class="content_txt"><span style="margin-top:1px;">A：DR公司总部在香港，目前内地深圳市、北京市、重庆市、广州市、上海市、武汉市、南京市、长沙市设有实体店，支持到店订购，也支持全国在线官网订购。同时目前其他一线城市公司已在考察选址阶段，将陆续开设店面。</span></div>
<div onClick="contenttxt(1,2)" id="content_title_12" class="content_title"><span style="margin-top:8px;">Q：实体店具体位置？</span>
</div>
<div id="content_title1_2" class="content_txt"><span style="margin-top:1px;">A：深圳实体店地址：深圳南山区世界之窗旁欧陆小镇4号楼Darry Ring （地铁罗宝线世界之窗I出口）深圳店联系方式：0755-86621782。<p></p>
北京实体店地址：北京东二环朝阳门桥银河SOHO中心B座负一层2-109 （朝阳门地铁G出口） 北京店联系方式：010-59576758。<p></p>
上海实体店地址：上海长宁区淮海西路570号红坊创意园区G-108栋(近虹桥路) 上海店联系方式：021-60934520。<p></p>
广州实体店地址：广州市天河区天河北路233号中信广场商场136单元 广州店联系方式：020-38836315。<p></p>
重庆实体店地址：重庆市渝中区解放碑步行街民族路188号环球金融中心（WFC）LG-B02A 重庆店联系方式：023-63710835。<p></p>
武汉实体店地址：武汉市洪山区光谷意大利风情街5号楼一层51021号 武汉店联系方式：027-87688895。<p></p>
南京实体店地址：南京市长江路288号1912街区17号楼一层 南京店联系方式：025-83613520。<p></p>
长沙实体店地址：长沙市开福区中山路589号万达百货商场2楼 长沙店联系方式：0731-83878575。<p></p>
全国400客服热线：400 01 13520。</span></div>
<div onClick="contenttxt(1,3)" id="content_title_13" class="content_title"><span style="margin-top:8px;">Q：到店订购和官网订购的价格一致吗？</span></div>
<div id="content_title1_3" class="content_txt"><span style="margin-top:1px;">A：DR的所有商品，到店订购和官网订购的时间周期，价格，质量及售后服务均一致。</span>
</div>
<div onClick="contenttxt(1,4)" id="content_title_14" class="content_title"><span style="margin-top:8px;">Q：价格是否有折扣优惠？</span></div>
<div id="content_title1_4" class="content_txt"><span style="margin-top:1px;">A：DR的品牌寓意为一生唯一真爱，大多是用作见证彼此求婚或结婚这一神圣时刻，所以所有商品都是常年任何节假日没有折扣活动，就像彼此一生唯一真爱的承诺及永恒的爱情，永不打折。</span>
</div>
<div onClick="contenttxt(1,5)" id="content_title_15" class="content_title"><span style="margin-top:8px;">Q：为什么在官网上输入姓名身份证号后看不到款式？</span></div>
<div id="content_title1_5" class="content_txt"><span style="margin-top:1px;">A：www.darryring.com 官网首页点击&mdash;求婚钻戒，进入页面后不需要填写任何信息，移动鼠标到最下方，就可以看到Darry Ring女戒的所有款式。</span>
</div>
<div onClick="contenttxt(1,6)" id="content_title_16" class="content_title"><span style="margin-top:8px;">Q：到实体店是否可以立刻拿到戒指？</span></div>
<div id="content_title1_6" class="content_txt"><span style="margin-top:1px;">A：您好，DR的所有商品都是需要根据您选择的款式、手寸大小及刻字信息来定制。实体店仅提供款式体验及预订，与官网购买的定制时间是一致的，可于15-20个工作日内送到或自取。</span>
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
<div id="content_title3_1" class="content_txt"> </div>
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
<div id="content_title7_1" class="content_txt"> </div>
<div onClick="contenttxt(7,2)" id="content_title_72" class="content_title"></div>
<div id="content_title7_2" class="content_txt">
</div>
<div onClick="contenttxt(7,3)" id="content_title_73" class="content_title"></div>
<div id="content_title7_3" class="content_txt">
</div>
</div>
<script type="text/javascript">
    function showbox(id) {
        getQeestion(id);
        for (var i = 1; i <= 8; i++) {
            if (i == id) {
                showdiv(id);
            }
            else {
                hidediv(i);
            }
        } 
    }
    function contenttxt(id, sid) {
        for (var i = 1; i <= 7; i++) {
            if (i == id) {
                showtxt(id, sid);
            }
            else {
                hidetxt(i, sid);
            }
        }


    }
    function showtxt(id, sid) {
        var objtitle = $("#content_title" + id + "_" + sid);

        if (objtitle.css("display") == "none") {
            objtitle.show("fast");
        }
        else {

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

        $("#li" + id).css({ "font-size": "14px", "color": "#7d7d7d" });
    }

    function showdiv(id) {
        if ($("#box" + id).css("display") == "none") {
            $("#box" + id).show("fast");
            $("#li" + id).css({ "font-size": "18px", "color": "#000000" });
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
