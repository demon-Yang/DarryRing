<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>已处理订单</title>

		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="<%=path %>/admin/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<%=path %>/admin/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- page specific plugin styles -->

		<!-- text fonts -->
		<link rel="stylesheet" href="<%=path %>/admin/assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="<%=path %>/admin/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="<%=path %>/admin/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="<%=path %>/admin/assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- inline styles related to this page -->

		<!-- ace settings handler -->
		<script src="<%=path %>/admin/assets/js/ace-extra.min.js"></script>

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="no-skin">
		<div id="navbar" class="navbar navbar-default ace-save-state">
			<div class="navbar-container ace-save-state" id="navbar-container">
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<div class="navbar-header pull-left">
					<a href="javascript:void(0);" class="navbar-brand">
						<small>
							<i class="fa fa-leaf"></i>
							DarryRing Admin
						</small>
					</a>
				</div>

				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">

						<li class="green dropdown-modal">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-envelope icon-animated-vertical"></i>
								<!-- <span class="badge badge-success">5</span> -->
							</a>

							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-envelope-o"></i>
									最新订单
								</li>

								<li class="dropdown-footer">
									<a href="<%=path %>/order/findAllUn.do">
										未处理订单
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="light-blue dropdown-modal">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="<%=path %>/admin/assets/images/avatars/user.jpg" alt="Jason's Photo" />
								<span class="user-info">
									<small>Welcome</small>
									Admin
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-yellow dropdown-caret dropdown-close">
								<li>
									<a href="#" onclick="logout()">
										<i class="ace-icon fa fa-power-off"></i>
										Logout
									</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div><!-- /.navbar-container -->
		</div>

		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<div id="sidebar" class="sidebar responsive ace-save-state">
				<script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
				</script>

				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
					<div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
						<button class="btn btn-success">
							<i class="ace-icon fa fa-signal"></i>
						</button>

						<button class="btn btn-info">
							<i class="ace-icon fa fa-pencil"></i>
						</button>

						<button class="btn btn-warning">
							<i class="ace-icon fa fa-users"></i>
						</button>

						<button class="btn btn-danger">
							<i class="ace-icon fa fa-cogs"></i>
						</button>
					</div>

					<div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
						<span class="btn btn-success"></span>

						<span class="btn btn-info"></span>

						<span class="btn btn-warning"></span>

						<span class="btn btn-danger"></span>
					</div>
				</div><!-- /.sidebar-shortcuts -->

				<ul class="nav nav-list">
					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-diamond"></i>
							<span class="menu-text"> 商品 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
								<a href="<%=path %>/goods/findAll.do">
									<i class="menu-icon fa fa-caret-right"></i>
									查看商品
								</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="<%=path %>/admin/goods_add.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									添加商品
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

					<li class="active open">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-pencil-square-o"></i>
							<span class="menu-text"> 订单 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="active">
								<a href="<%=path %>/order/findAll.do">
									<i class="menu-icon fa fa-caret-right"></i>
									已处理订单
								</a>

								<b class="arrow"></b>
							</li>
							<li class="">
								<a href="<%=path %>/order/findAllUn.do">
									<i class="menu-icon fa fa-caret-right"></i>
									未处理订单
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

				</ul><!-- /.nav-list -->

				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>
			</div>

			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="javascript:void(0);">首页</a>
							</li>

							<li>
								<a href="javascript:void(0);">订单</a>
							</li>
							<li class="active"> &amp; order</li>
						</ul>

					</div>

					<div class="page-content" style="min-height: 740px;">
						<div class="ace-settings-container" id="ace-settings-container">
							<div class="btn btn-app btn-xs btn-warning ace-settings-btn" id="ace-settings-btn">
								<i class="ace-icon fa fa-cog bigger-130"></i>
							</div>

							<div class="ace-settings-box clearfix" id="ace-settings-box">
								<div class="pull-left width-50">
									<div class="ace-settings-item">
										<div class="pull-left">
											<select id="skin-colorpicker" class="hide">
												<option data-skin="no-skin" value="#438EB9">#438EB9</option>
												<option data-skin="skin-1" value="#222A2D">#222A2D</option>
												<option data-skin="skin-2" value="#C6487E">#C6487E</option>
												<option data-skin="skin-3" value="#D0D0D0">#D0D0D0</option>
											</select>
										</div>
										<span>&nbsp; Choose Skin</span>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2 ace-save-state" id="ace-settings-add-container" autocomplete="off" />
										<label class="lbl" for="ace-settings-add-container">
											Inside
											<b>.container</b>
										</label>
									</div>
								</div><!-- /.pull-left -->

								<div class="pull-left width-50">
									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-hover" autocomplete="off" />
										<label class="lbl" for="ace-settings-hover"> Submenu on Hover</label>
									</div>

									<div class="ace-settings-item">
										<input type="checkbox" class="ace ace-checkbox-2" id="ace-settings-compact" autocomplete="off" />
										<label class="lbl" for="ace-settings-compact"> Compact Sidebar</label>
									</div>

								</div><!-- /.pull-left -->
							</div><!-- /.ace-settings-box -->
						</div><!-- /.ace-settings-container -->

						<div class="page-header">
							<h1>
								订单表&nbsp;&nbsp;<span style="font-size: 14px;color: red;">&amp;已处理</span>
							</h1>
						</div><!-- /.page-header -->

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<div class="row">
									<div class="col-xs-12">
										<table id="simple-table" class="table  table-bordered table-hover">
											<thead>
												<tr>
													<th class="center col-md-1">订单号</th>
													<th class="detail-col center col-md-1">详情</th>
													<th class="center col-md-1">收货人</th>
													<th class="center col-md-1">联系号码</th>
													<th class="center col-md-2">收货地址</th>
													<th class="center col-md-2">备注</th>
													<th class="center col-md-1">时间</th>
													<th class="center col-md-1">物流</th>
													<th class="center col-md-1">金额</th>
													<th class="center col-md-1">状态</th>
												</tr>
											</thead>

											<tbody>
											
											<c:forEach items="${pages.list }" var="list">
												<tr>
													<td class="center">${list.order.oid }</td>
													<td class="center">
														<div class="action-buttons">
															<a href="#" class="green bigger-140 show-details-btn" title="Show Details">
																<i class="ace-icon fa fa-angle-double-down"></i>
															</a>
														</div>
													</td>
													<td class="center">${list.address.aname }</td>
													<td class="center">${list.address.atel }</td>
													<td class="hidden-480 center">${list.address.addr }</td>
													<td class="center">${list.order.ocontent }</td>
													<td class="hidden-480 center"> ${list.order.odate } </td>
													<td class="center">${list.order.ologistics }</td>
													<td class="center">${list.order.ototal }</td>
													<td class="center">${list.order.ostatus }</td>
												</tr>
											

												<tr class="detail-row">
													<td colspan="11">
														<div class="row">
															<div class="col-md-2"></div>
															<div class="col-xs-12 col-md-8">
																<table id="simple-table" class="table  table-bordered table-hover">
																	<thead>
																		<tr>
																			<th class="center col-md-1" style="background-color: #ecdfdf;">编号</th>
																			<th class="center col-md-1" style="background-color: #ecdfdf;">名称</th>
																			<th class="center col-md-1" style="background-color: #ecdfdf;">系列</th>
																			<th class="center col-md-1" style="background-color: #ecdfdf;">类型</th>
																			<th class="center col-md-1" style="background-color: #ecdfdf;">重量</th>
																			<th class="center col-md-1" style="background-color: #ecdfdf;">价格</th>
																		</tr>
																	</thead>
						
																	<tbody>
																	<c:forEach items="${list.gList }" var="good">
																		<tr>
																			<td class="center">${good.gid }</td>
																			<td class="center">${good.gname }</td>
																			<td class="center">${good.gseries }</td>
																			<td class="hidden-480 center">${good.gtype }</td>
																			<td class="center">${good.gweight }</td>
																			<td class="hidden-480 center">${good.gprice }</td>
																		</tr>
																	</c:forEach>
						
																	</tbody>
																</table>
															</div><!-- /.span -->
															<div class="col-md-2"></div>
														</div><!-- /.row -->
													</td>
												</tr>
												</c:forEach>
												
											</tbody>
										</table>
									</div><!-- /.span -->
								</div><!-- /.row -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
					<!--page-->
					<div class="page col-md-12">
						<ul class="pagination pull-right no-margin">
							<li>
								<a href="#" style="color: #eaa255;background-color: #ffffff;border: 0;padding-right: 2px;">共${allNum }件&nbsp;商品</a>
							</li>
							<li>
								<a href="#" style="color: #eaa255;background-color: #ffffff;border: 0;">${pages.pageNum}/${pages.pages }</a>
							</li>
							<li class="prev ">
								<a href="<%=path %>/order/findAll.do?pageNum=${pages.prePage }">
									<i class="ace-icon fa fa-angle-double-left"></i>
								</a>
							</li>
			
							<li class="next">
								<a href="<%=path %>/order/findAll.do?pageNum=${pages.nextPage }">
									<i class="ace-icon fa fa-angle-double-right"></i>
								</a>
							</li>
						</ul>
					</div>
					<!--page end-->
				</div>
			</div><!-- /.main-content -->

			<div class="footer">
				<div class="footer-inner">
					<div class="footer-content">
						<span class="bigger-120">
							<span class="blue bolder">DarryRing</span>
							winner winner,Chickdinner! &copy; 2017
						</span>
					</div>
				</div>
			</div>

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="<%=path %>/admin/assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='<%=path %>/admin/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="<%=path %>/admin/assets/js/bootstrap.min.js"></script>

		<!-- ace scripts -->
		<script src="<%=path %>/admin/assets/js/ace-elements.min.js"></script>
		<script src="<%=path %>/admin/assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			function logout() {
				if (window.confirm('确定退出吗？')) {
					$.ajax({
						type:"get",
						url:"<%=path %>/manager/loginout.do",
						success:function(msg){
							location.href = "<%=path %>/admin/login.jsp";
						}
					});
				}
			}
			jQuery(function($) {
				/***************/
				if('${manager}' == '')
						location.href = "<%=path %>/admin/login.jsp";
						
				$('.show-details-btn').on('click', function(e) {
					e.preventDefault();
					$(this).closest('tr').next().toggleClass('open');
					$(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
				});
				/***************/
			});
		</script>
	</body>
</html>
