<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">
 <head>
  <title>钻戒列表</title>
  <link href="<%=path %>/css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
  <link href="<%=path %>/css/dr.css?v=1.3.5.0" type="text/css" rel="stylesheet" /> 
  <script src="<%=path %>/js/jquery.js" type="text/javascript"></script> 
  <script src="<%=path %>/js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
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
       <div class="nav-div" style="display: none;"> 
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
       </div> </li> 
      <li><a href="<%=path %>/question.jsp">常见问题</a></li> 
     </ul> 
     <!--导航的右边--> 
    
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
 	<form action="<%=path %>/goods/findByCondition.do" id="form">
   <!--钻戒页面中间--> 
   <div class="cort"> 
    <div class="cmain sp_cort fix"> 
     <!--背景图--> 
     <div class="zj_bk"> 
      <div class="zbk_top spalid"> 
       <span>您当前的位置：</span> 
       <span id="website_SiteMapPath1"></span> <a  href="javascript:void(0)">Darry Ring</a><em>&gt;</em><span>求婚钻戒</span> 
      </div> 
      <!--banner中间内容--> 
      <div class="zbk_center"> 
       <!--banner左边--> 
       <div class="zbkc-left"> 
        <h3> 求婚钻戒领导品牌</h3> 
        <h2> 男士一生仅能定制一枚</h2> 
        <h4> 寓意：一生&middot;唯一&middot;真爱</h4> 
        <div class="button"> 
         <div id="dzck" class="bt1"> 
          <a target="_blank" href="javascript:void(0)">购买流程说明</a> 
         </div> 
        </div> 
       </div> 
       <!--banner右边的背景图--> 
       <div class="zbkc-right"> 
        <img width="458" height="260" alt="求婚钻戒" src="<%=path%>/images/True-Love-_ring.jpg" /> 
       </div> 
      </div> 
     </div> 
     <!--背景图end--> 
     <!--流程图--> 
     <div class="the_lct"> 
      <img src="<%=path%>/images/lct.png" /> 
     </div> 
     <!--流程图end--> 
     <!--小导航--> 
     <div class="allchose_nav"> 
      <!--购买选项--> 
      <div class="dr_choose"> 
       <!--选项nav--> 
       <div class="drcho_top"> 
        <ul class="drchoose_ul"> 
         <li id="all" class="choose_hover" onclick='changeGseries("所有")'><span>所有</span> </li> 
         <li id="forever" onclick='changeGseries("Forever系列")'><span>Forever系列</span> </li> 
         <li id="marryme" onclick='changeGseries("MarryMe系列")'><span>MarryMe系列</span> </li> 
         <li id="myheart" onclick='changeGseries("MyHeart系列")'><span>MyHeart系列</span> </li> 
         <li id="truelove" onclick='changeGseries("TrueLove系列")'><span>TrueLove系列</span> </li> 
         <li id="iswear" onclick='changeGseries("ISwear系列")'><span>ISwear系列</span> </li>
        </ul> 
       </div> 
       <div class="drcho_bto"></div> 
      </div> 
      <!--参数选项--> 
      <div class="select_choose"> 
       <div class="thefirst_it"> 
        <div class="search2 search_other fr"> 
         <input type="text" placeholder="产品名称/关键字" class="txt2" id="gname" name="gname" /> 
         <div id="prosearch" class="icon toser2"></div> 
        </div> 
        <div class="fl"> 
         <span>材质：</span> 
         <select id="gtype"> 
         	<option value="不限" selected="selected">不限</option> 
         	<option value="白18K金" onclick="findByCondition()">白18K金</option>
			<option value="黄18K金">黄18K金</option>
			<option value="红18K金">红18K金</option>
         </select> 
         <span>钻石：</span> 
         <select id="gweight"> 
	         	<option value="不限" selected="selected">不限</option> 
	         	<option value="10分以下">10分以下</option>
				<option value="10分-30分">10分-30分</option>
				<option value="30分-50分">30分-50分</option>
				<option value="50分-1克拉">50分-1克拉</option>
				<option value="1克拉以上">1克拉以上</option>
         </select>
         <span>手寸：</span>
         <select id="gsize">
         	<option value="不限" selected="selected">不限</option> 
			<option value="6">6</option>
			<option value="7">7</option>
			<option value="8">8</option>
			<option value="9">9</option>
			<option value="10">10</option>
			<option value="11">11</option>
			<option value="12">12</option>
			<option value="13">13</option>
			<option value="14">14</option>
			<option value="15">15</option>
			<option value="16">16</option>
			<option value="17">17</option>
			<option value="18">18</option>
			<option value="19">19</option>
			<option value="20">20</option>
			<option value="21">21</option>
			<option value="22">23</option>
			<option value="24">24</option>
			<option value="25">25</option>
		</select>
        </div> 
       </div> 
       <div class="thesec_it"> 
        <div class="thesec_word-left fl orderby"> 
         <span>排序：</span> 
         <b> <i id="orderby-none" class="choose_hover" onclick='changeOrderby("不限")'>不限</i>
         	<i id="orderby-sales" onclick='changeOrderby("按销量")'>按销量</i> 
         	<i id="orderby-price" onclick='changeOrderby("按价格")'>按价格</i> </b> 
        </div> 
       </div> 
      </div> 
      <!--参数选项end--> 
     </div> 
     <!--小导航end--> 
     <!--购买的款式--> 
     <div class="cmain"> 
      <ul class="buyit"> 
       <!--每一个款式--> 
       <c:forEach items="${pages.list }" var="list">
	       <li> 
		        <div class="by_top"> 
		         	<a href="<%=path %>/goods/findByGid.do?gid=${list.goods.gid}" target="_blank"></a> 
				    <div class="bything-one"> 
			          	<img width="236px" height="236" src="<%=path %>/${list.goods.gimg1 }" /> 
			         </div>
		        </div> 
		        <div class="by_center"> 
		        </div> 
		        <div class="by_bottom"> 
		         <p> DR钻戒&nbsp;${list.goods.gseries }&nbsp;${list.goods.gname }&nbsp;</p> 
		         <p> <span>￥${list.goods.gprice }</span><i>销量：${list.gsales }</i></p> 
		        </div>
	         </li>
        </c:forEach> 
      </ul> 
      <!--购买的款式end--> 
     </div> 
     <!--分页--> 
     <div class="paging_all" id="pageing_pagingDiv"> 
      <div class="paging_all-cort"> 
           <p class="pag_p fl" style="color: #eaa255;"> <span>共${pages.total }件 &nbsp;商品&nbsp;${pages.pageNum }/${pages.pages }&nbsp;&nbsp;</span></p>
	       <ul class="paging fl"> 
	       		<li id="pre">&lt;&lt;</li>
	        	<li id="next">&gt;&gt;</li>
	       </ul> 
      </div> 
     </div> 
     <!--分页end--> 
    </div> 
   </div> 
   </form>
   <!--底部--> 
   <div class="footer"> 
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
   <div class="comeback" style="display: none;"></div> 
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
 	<script type="text/javascript">
 		$(function(){
 			//选中的系列
 			var gseries = '${gseries}';
 			if(gseries == 'Forever系列'){
 				$('.drchoose_ul li').removeClass('choose_hover');
 				$('#forever').addClass('choose_hover');
 			}else if(gseries == 'MarryMe系列'){
 				$('.drchoose_ul li').removeClass('choose_hover');
 				$('#marryme').addClass('choose_hover');
 			}else if(gseries == 'MyHeart系列'){
 				$('.drchoose_ul li').removeClass('choose_hover');
 				$('#myheart').addClass('choose_hover');
 			}else if(gseries == 'TrueLove系列'){
 				$('.drchoose_ul li').removeClass('choose_hover');
 				$('#truelove').addClass('choose_hover');
 			}else if(gseries == 'ISwear系列'){
 				$('.drchoose_ul li').removeClass('choose_hover');
 				$('#iswear').addClass('choose_hover');
 			}else{
 				$('.drchoose_ul li').removeClass('choose_hover');
 				$('#all').addClass('choose_hover');
 			}
 			//选中的材质
 			var gtype = '${gtype}';
 			if(gtype == '白18K金'){
 				$('#gtype option').removeAttr('selected','selected');
 				$('#gtype option[value="白18K金"]').attr('selected','selected');
 			}else if(gtype == '黄18K金'){
 				$('#gtype option').removeAttr('selected','selected');
 				$('#gtype option[value="黄18K金"]').attr('selected','selected');
 			}else if(gtype == '红18K金'){
 				$('#gtype option').removeAttr('selected','selected');
 				$('#gtype option[value="红18K金"]').attr('selected','selected');
 			}else{
 				$('#gtype option').removeAttr('selected','selected');
 				$('#gtype option[value="不限"]').attr('selected','selected');
 			}
 			//选中的钻石大小
 			var gweight = '${gweight}';
 			if(gweight == '10分以下'){
 				$('#gweight option').removeAttr('selected','selected');
 				$('#gweight option[value="10分以下"]').attr('selected','selected');
 			}else if(gweight == '10分-30分'){
 				$('#gweight option').removeAttr('selected','selected');
 				$('#gweight option[value="10分-30分"]').attr('selected','selected');
 			}else if(gweight == '30分-50分'){
 				$('#gweight option').removeAttr('selected','selected');
 				$('#gweight option[value="30分-50分"]').attr('selected','selected');
 			}else if(gweight == '50分-1克拉'){
 				$('#gweight option').removeAttr('selected','selected');
 				$('#gweight option[value="50分-1克拉"]').attr('selected','selected');
 			}else if(gweight == '1克拉以上'){
 				$('#gweight option').removeAttr('selected','selected');
 				$('#gweight option[value="1克拉以上"]').attr('selected','selected');
 			}else{
 				$('#gweight option').removeAttr('selected','selected');
 				$('#gweight option[value="不限"]').attr('selected','selected');
 			}
 			//选中的手寸
 			var gsize = '${gsize}';
 			if(gsize == '6'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="6"]').attr('selected','selected');
 			}else if(gsize == '7'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="7"]').attr('selected','selected');
 			}else if(gsize == '8'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="8"]').attr('selected','selected');
 			}else if(gsize == '9'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="9"]').attr('selected','selected');
 			}else if(gsize == '10'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="10"]').attr('selected','selected');
 			}else if(gsize == '11'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="11"]').attr('selected','selected');
 			}else if(gsize == '12'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="12"]').attr('selected','selected');
 			}else if(gsize == '13'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="13"]').attr('selected','selected');
 			}else if(gsize == '14'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="14"]').attr('selected','selected');
 			}else if(gsize == '15'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="15"]').attr('selected','selected');
 			}else if(gsize == '16'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="16"]').attr('selected','selected');
 			}else if(gsize == '17'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="17"]').attr('selected','selected');
 			}else if(gsize == '18'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="18"]').attr('selected','selected');
 			}else if(gsize == '19'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="19"]').attr('selected','selected');
 			}else if(gsize == '20'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="20"]').attr('selected','selected');
 			}else if(gsize == '21'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="21"]').attr('selected','selected');
 			}else if(gsize == '22'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="22"]').attr('selected','selected');
 			}else if(gsize == '23'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="23"]').attr('selected','selected');
 			}else if(gsize == '24'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="24"]').attr('selected','selected');
 			}else if(gsize == '25'){
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="25"]').attr('selected','selected');
 			}else{
 				$('#gsize option').removeAttr('selected','selected');
 				$('#gsize option[value="不限"]').attr('selected','selected');
 			}
 			//产品名称/关键字查询
 			var gname = '${gname}';
 			if(gname == null || gname.trim() ==''){
 				$('#gname').val();
 			}else{
 				$('#gname').val(gname);
 			}
 			//选中的排序
 			var orderby = '${orderby}';
 			if(orderby == '按销量'){
 				$('.orderby i').removeClass('choose_hover');
 				$('#orderby-sales').addClass('choose_hover');
 			}else if(orderby == '按价格'){
 				$('.orderby i').removeClass('choose_hover');
 				$('#orderby-price').addClass('choose_hover');
 			}else{
 				$('.orderby i').removeClass('choose_hover');
 				$('#orderby-none').addClass('choose_hover');
 			}
 			//材质框选中后跳转页面
 			$('#gtype').change(function(){
 				findByCondition();
 			});
 			//钻石重量框选中后跳转页面
 			$('#gweight').change(function(){
 				findByCondition();
 			});
 			//手寸框选中后跳转页面
 			$('#gsize').change(function(){
 				findByCondition();
 			});
 			$('#prosearch').click(function(){
 				findByCondition();
 			});
 			$("#pre").click(function(){
 				var pageNum = '${pages.prePage}';
 				$('#form').append('<input type="hidden" name="pageNum" value="'+pageNum+'"/>');
 				findByCondition();
 			});
 			$("#next").click(function(){
 				var pageNum = '${pages.nextPage}';
 				$('#form').append('<input type="hidden" name="pageNum" value="'+pageNum+'"/>');
 				findByCondition();
 			});
 		});
 		//改变系列选中的框
 		function changeGseries(gseries){
 			if(gseries == 'Forever系列'){
 				$('.drchoose_ul li').removeClass('choose_hover');
 				$('#forever').addClass('choose_hover');
 			}else if(gseries == 'MarryMe系列'){
 				$('.drchoose_ul li').removeClass('choose_hover');
 				$('#marryme').addClass('choose_hover');
 			}else if(gseries == 'MyHeart系列'){
 				$('.drchoose_ul li').removeClass('choose_hover');
 				$('#myheart').addClass('choose_hover');
 			}else if(gseries == 'TrueLove系列'){
 				$('.drchoose_ul li').removeClass('choose_hover');
 				$('#truelove').addClass('choose_hover');
 			}else if(gseries == 'ISwear系列'){
 				$('.drchoose_ul li').removeClass('choose_hover');
 				$('#iswear').addClass('choose_hover');
 			}else{
 				$('.drchoose_ul li').removeClass('choose_hover');
 				$('#all').addClass('choose_hover');
 			}
 			findByCondition();
 		}
 		//改变排序选中的框
 		function changeOrderby(orderby){
 			if(orderby == '按销量'){
 				$('.orderby i').removeClass('choose_hover');
 				$('#orderby-sales').addClass('choose_hover');
 			}else if(orderby == '按价格'){
 				$('.orderby i').removeClass('choose_hover');
 				$('#orderby-price').addClass('choose_hover');
 			}else{
 				$('.orderby i').removeClass('choose_hover');
 				$('#orderby-none').addClass('choose_hover');
 			}
 			findByCondition();
 		}
 		//按多条件查询商品
 		function findByCondition(){
 			var gseries = $('.drchoose_ul .choose_hover span').text();
 			if(gseries == '所有')
 				gseries = '';
 			var gtype = $('#gtype option:selected').val();
 			if(gtype == '不限')
 				gtype = '';
 			var gweight = $('#gweight option:selected').val();
 			if(gweight == '不限')
 				gweight = '';
 			var gsize = $('#gsize option:selected').val();
 			if(gsize == '不限'){
 				gsize = '';
 			}else{
 				gsize = Number(gsize);
			}
 			var orderby = $('.orderby .choose_hover').text();
 			if(orderby == '不限')
 				orderby = '';
 			
 			$('#form').append('<input type="hidden" name="gseries" value="'+gseries+'"/>');
 			$('#form').append('<input type="hidden" name="gtype" value="'+gtype+'"/>');
 			$('#form').append('<input type="hidden" name="gweight" value="'+gweight+'"/>');
 			$('#form').append('<input type="hidden" name="gsize" value="'+gsize+'"/>');
 			$('#form').append('<input type="hidden" name="orderby" value="'+orderby+'"/>');
 			$('#form').submit();
 		}
</script>
</body>
</html>