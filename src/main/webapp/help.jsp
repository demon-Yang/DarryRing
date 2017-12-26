<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">

	<head>
		<title>帮助中心</title>
		<meta charset="utf-8" />
		<link href="<%=path %>/css/same.css?v=1.3.7.2" type="text/css" rel="stylesheet" />
		<link href="<%=path %>/css/aboutUs.css?v=1.3.5.0" type="text/css" rel="stylesheet" />
		<script src="<%=path %>/js/jquery.js" type="text/javascript"></script>
		<script src="<%=path %>/js/index.js?virsion=1.3.7.2" type="text/javascript"></script>
		<script src="<%=path %>/js/aboutUs.js" type="text/javascript"></script>
		<style type="text/css">
			.abc_center {
				border: 1px solid #f1f1f1;
				padding: 24px;
			}
		</style>
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
						</div>
					</li>

					<li class="">
						<a href="<%=path %>/question.jsp">常见问题</a>
					</li>
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
			<!--中间-->
			<div class="cort">
				<!--内容-->
				<div class="cmain aboutUs">
					<div class="zbk_top spalid">
						<span>您当前的位置：</span>
						<a target="_blank" href="javascript:void(0)">Darry Ring</a>
						<em>&gt;</em>
						<span>帮助中心</span>
					</div>
					<!--主要内容-->
					<div class="about_center">

						<!--中间-->
						<div class="abc_center fr">
							<!--内容-->
							<div class="abcr_center">
								<h2 id="title"> 注册协议 </h2>
								<div id="content">
									<div>
										<span style="color: #333333;"><span style="line-height: 30px; font-size: 14px;"><strong>一、声明</strong><br /> Darry Ring网站的各项电子服务的所有权和运作权归戴瑞珠宝。用户须完全同意所有服务条款并完成注册程序，才能成为Darry Ring网站的正式用户。<br /> <br /> <strong>二、用户注册</strong><br /> 1、用户资格：Darry Ring网站用户必须是依据法律具有完全民事行为能力的自然人。在不限制前述规定的前提下，我们的服务不向18周岁以下或被临时或无限期中止的用户提供；如用户不符合前述要求的，请不要注册成Darry Ring网站的用户, Darry Ring网站也不提供相关服务。<br /> 2、资料填写：为确保交易的正常进行，用户必须向Darry Ring网站提供真实、有效的个人资料，如个人资料有任何变动，必须及时通知Darry Ring网站更新。<br /> 基于Darry Ring网站所提供的网站络服务的重要性，用户应同意：<br /> （1）提供详尽、准确的个人资料。<br /> （2）不断更新注册资料，符合及时、详尽、准确的要求。<br /> &nbsp;&nbsp; Darry Ring网站不公开用户的姓名、地址、电子邮箱和身份证号码，除以下情况外：<br /> （1）用户授权Darry Ring网站透露这些信息。<br /> （2）相应的法律及程序要求Darry Ring网站提供用户的个人资料。<br /> 3、用户可选择是否接受网站不定期的通过用户所注册的联络电子信箱发布服务信息及相关信息的服务。<br /> 4、如果用户提供的资料包含有不正确的信息，Darry Ring网站保留结束用户使用网站络服务资格的权利。<br /> &nbsp;<br /> <strong>三、通告传送</strong><br /> 所有发给用户的通告都可通过重要页面的公告或电子邮件或常规的信件传送。<br /> <br /> <strong>四、用户隐私制度</strong><br /> Darry Ring网站不会在未经合法用户授权时公开、编辑或透露其注册资料及保存在Darry Ring网站中的非公开内容,除非有法律许可要求或Darry Ring网站在诚信的基础上认为透露这些信息在以下四种情况是必要的：<br /> （1）遵守有关法律规定，遵从Darry Ring网站合法服务程序。<br /> （2）保持维护Darry Ring网站的商标所有权。<br /> （3）在紧急情况下竭力维护用户个人和社会大众的隐私安全。<br /> （4）符合其他相关的要求。<br /> <br /> <strong>五、用户的帐号，密码和安全性</strong><br /> 1、用户一旦注册成功，成为Darry Ring网站的合法用户，将得到一个密码和用户名。用户将对用户名和密码安全负全部责任。另外，每个用户都要对以其用户名进行的所有活动和事件负全责。用户可随时根据指示改变密码。<br /> 2、用户若发现任何非法使用用户帐号或存在安全漏洞的情况，请立即通知Darry Ring网站。<br /> <br /> <strong>六、服务条款的修改、删除和服务修订</strong><br /> Darry Ring网站的服务条款用于为用户提供的产品销售服务，这些条款将有可能不时被修正、删除。服务条款一旦发生变动，将会在重要页面上提示修改内容。如果不同意所改动的内容，用户可以主动取消获得的网站络服务。如果用户继续享用网站络服务，则视为接受服务条款的变动。Darry Ring网站保留随时修改或中断服务而不需事先通知用户的权利。Darry Ring网站行使修改或中断服务的权利，不需对用户或第三方负责。<br /> <br /> <strong>七、交易</strong><br /> 用户在Darry Ring网站上进行物品购买时必须遵守以下条款：<br /> （1）用户应就用户使用Darry Ring网站上的服务及对物品购买遵守所有适用的中国法律、法规、条例和地方性法律要求。用户还必须确保用户遵守本用户协议和隐私声明及纳入上述文件的所有其它条款和规则的所有规定。<br /> （2）产品的价格和可获性都在Darry Ring网站上指明。这类信息将随时更改且不发任何通知。商品的价格都包含了增值税。送货费将另外结算，费用根据用户选择的送货方式的不同而异。如果发生了意外情况，在确认了用户的订单后，由于供应商提价，税额变化引起的价格变化，或是由于网站上商城的错误等造成商品价格变化，用户有权取消用户的订单，并希望用户能及时通过电子邮件或电话通知Darry Ring客户服务部。用户所订购的商品，如果发生缺货，用户有权取消订单。<br /> （3）Darry Ring网站将尽最大努力保证用户所购商品与网站站上公布的价格一致，但价目表和声明并不构成要约。Darry Ring网站有权在发现了其网站站上显现的产品及订单的明显错误或缺货的情况下，单方面撤回任何订单。<br /> （4）Darry Ring网站保留对产品订购的数量的限制权。在下订单的同时，用户也同时承认了用户已经达到购买这些产品的法定年龄，并将对用户在订单中提供的所有信息的真实性负责。<br /> <br /> <strong>八、送货</strong><br /> Darry Ring网站将会把产品送到用户所指定的送货地址。所有在Darry Ring网站上列出的送货时间为参考时间，参考时间的计算是根据库存状况、正常的处理过程和送货时间、送货地点的基础上估计得出的。<br /> <br /> <strong>九、结束服务</strong><br /> 1、用户或Darry Ring网站可随时根据实际情况中断一项或多项网站络服务。Darry Ring网站不需对任何个人或第三方负责而随时中断服务。用户对后来的条款修改有异议，或对Darry Ring网站的服务不满，可以行使如下权利：<br /> （1）停止使用Darry Ring网站的网站络服务。<br /> （2）通告Darry Ring网站停止对该用户的服务。<br /> 2、结束用户服务后，用户使用网站络服务的权利立即中止。从那时起，用户没有权利，Darry Ring网站也没有义务传送任何未处理的信息或未完成的服务给用户或第三方。<br /> <br /> <strong>十、用户管理</strong><br /> 1、用户必须遵循：<br /> （1）从中国境内向外传输技术性资料时必须符合中国有关法规。<br /> （2）使用网站络服务不作非法用途。<br /> （3）不干扰或混乱网站络服务。<br /> （4）遵守所有使用网站络服务的网站络协议、规定、程序和惯例。<br /> 2、用户单独承担发布内容的责任。用户对服务的使用是根据所有适用于Darry Ring网站的国家法律、地方法律和国际法律标准的。<br /> 3、用户须承诺不传输任何非法的、骚扰性的、中伤他人的、辱骂性的、恐吓性的、伤害性的、庸俗的，淫秽等信息资料。另外，用户也不能传输任何教唆他人构成犯罪行为的资料；不能传输助长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法律的资料。<br /> 4、未经许可而非法进入其它电脑系统是禁止的。若用户的行为不符合以上提到的服务条款，Darry Ring网站将作出独立判断立即取消用户服务帐号。用户需对自己在网站上的行为承担法律责任。用户若在Darry Ring网站上散布和传播反动、色情或其他违反国家法律的信息，Darry Ring网站的系统记录有可能作为用户违反法律的证据。<br /> <br /> <strong>十一、有限责任</strong><br /> 1、Darry Ring网站有义务在技术上确保网站站的正常运行，尽力避免服务中断或将中断时间限制在最短时间内，保证用户网站上交易活动的顺利进行。但如因不可抗力或其他Darry Ring无法控制的原因使网站站崩溃或无法正常使用导致网站上交易无法完成或丢失有关的信息、记录等，Darry Ring网站不承担责任；任何用户向Darry Ring网站提供错误、不完整、不实信息等造成不能正常使用网站上服务或遭受任何其他损失，概与Darry Ring无关。<br /> 2、Darry Ring网站对任何直接、间接、偶然、特殊及继起的损害不负责任，这些损害可能来自：不正当使用网站络服务，非法使用网站络服务或用户传送的信息有所变动等。这些行为都有可能会导致Darry Ring网站的形象受损，所以Darry Ring网站事先提出这种损害的可能性。<br /> &nbsp;<br /> <strong>十二、知识产权声明</strong><br /> Darry Ring网站所提供的网站络服务的相关著作权、专利权、商标、商业秘密及其它任何所有权或权利，均属Darry Ring网站所有;非经Darry Ring网站的同意，任何人或用户均不得从事擅自下载、复制、传输、改编、编辑、泄露相关著作权、专利权、商标、商业秘密及其它任何所有权或权利等侵权行为，否则应负所有法律责任。网站上商城拥有向用户提供网站络服务过程中所产生并储存于网站上商城服务器中的任何数据信息的所有权。<br /> <br /> <strong>十三、适用的法律和管辖权</strong><br /> 用户和Darry Ring网站之间的契约将适用中华人民共和国的法律，所有的争端将诉诸于深圳市人民法院，该法院为管辖法院。如发生Darry Ring网站服务条款与中华人民共和国法律相抵触时，则这些条款将完全按法律规定重新解释，而其它条款则依旧保持对用户产生法律效力和影响。<br /> <br /> <strong>十四、其他</strong><br /> 1、如果因为用户给予的信息不真实，或用户利用Darry Ring网站从事违法行为的，一切法律责任由用户自己承担，Darry Ring网站同时也保留通过法律途径追究用户的法律责任权利。<br /> 2、用户在下订单之前已充分阅读理解上述条款，并愿意承担相关责任。<br /> 3、本规定最终解释权归深圳市戴瑞珠宝有限公司所有。</span></span>
									</div>
								</div>
							</div>
							<!--内容end-->
						</div>
						<!--中间end-->
					</div>
					<!--主要内容end-->
				</div>
				<!--内容end-->
			</div>
			<!--中间end-->
			<script>
				$(function() {
					$("#49").addClass("specl_other");
				});
			</script>
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
				<div onClick="javascript:NTKF.im_openInPageChat();" id="Bearonline" class="floatbig_center-kf"></div>
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
				<div onClick="javascript:NTKF.im_openInPageChat();" class="floatsmall_center-kf fr"></div>
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
				for(var i = 1; i <= 8; i++) {
					if(i == id) {
						showdiv(id);
					} else {
						hidediv(i);
					}
				}
			}

			function contenttxt(id, sid) {
				for(var i = 1; i <= 7; i++) {
					if(i == id) {
						showtxt(id, sid);
					} else {
						hidetxt(i, sid);
					}
				}

			}

			function showtxt(id, sid) {
				var objtitle = $("#content_title" + id + "_" + sid);

				if(objtitle.css("display") == "none") {
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
				if($("#box" + id).css("display") == "none") {
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