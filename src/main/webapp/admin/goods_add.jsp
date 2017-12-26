<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>添加商品</title>

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
								<img class="nav-user-photo" src="assets/images/avatars/user.jpg" alt="Jason's Photo" />
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
					<li class="active open">
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

							<li class="active">
								<a href="<%=path %>/admin/goods_add.jsp">
									<i class="menu-icon fa fa-caret-right"></i>
									添加商品
								</a>

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

					<li class="">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-pencil-square-o"></i>
							<span class="menu-text"> 订单 </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="">
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
								<a href="javascript:void(0);">商品</a>
							</li>
							<li class="active"> &amp; goods</li>
						</ul>

					</div>

					<div class="page-content">
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
								商品表&nbsp;&nbsp;<span style="font-size: 14px;color: red;">&amp;添加</span>
							</h1>
						</div>

						<div class="row">
							<div class="col-xs-12">
								<form action="<%=path %>/goods/add.do" class="form-horizontal" enctype="multipart/form-data" id="form" method="post">
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right">商品名称</label>

										<div class="col-sm-9">
											<input type="text" placeholder="   Gname" class="col-xs-10 col-sm-5" style="max-width: 360px;" name="gname"/>&nbsp;
											<label style="border:1px solid red;display: none;" class="error gname-error">
												&nbsp;
												<i class="ace-icon fa fa-exclamation-circle" style="color:red;"></i>
												<span style="color:red;font-size: 12px;letter-spacing: 2px;"></span>
											</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right">商品系列</label>
										<div class="col-sm-9">
											<select class="form-control" style="max-width: 200px;" name="gseries">
												<option value="Forever系列">Forever系列</option>
												<option value="MarryMe系列">MarryMe系列</option>
												<option value="MyHeart系列">MyHeart系列</option>
												<option value="TrueLove系列">TrueLove系列</option>
												<option value="ISwear系列">ISwear系列</option>
												<option value="JustYou系列">JustYou系列</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right">商品类型</label>
										<div class="col-sm-9">
											<select class="form-control" style="max-width: 200px;" name="gtype">
												<option value="白18K金">白18K金</option>
												<option value="黄18K金">黄18K金</option>
												<option value="红18K金">红18K金</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right">商品重量</label>
										<div class="col-sm-9">
											<select class="form-control" style="max-width: 200px;" name="gweight">
												<option value="10分以下">10分以下</option>
												<option value="10分-30分">10分-30分</option>
												<option value="30分-50分">30分-50分</option>
												<option value="50分-1克拉">50分-1克拉</option>
												<option value="1克拉以上">1克拉以上</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" >商品手寸</label>
										<div class="col-sm-9">
											<select class="form-control" style="max-width: 200px;" name="gsize">
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
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" >商品数量</label>

										<div class="col-sm-9">
											<input type="number" placeholder="   Gnum" class="col-xs-10 col-sm-5" min="1" value="1" style="max-width: 200px;" name="gnum"/>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" >商品价格</label>

										<div class="col-sm-9">
											<input type="number" placeholder="   Gnum" class="col-xs-10 col-sm-5" min="0.00" step="0.01" style="max-width: 200px;" name="gprice"/>&nbsp;
											<label style="border:1px solid red;display: none;" class="error gprice-error">
												&nbsp;
												<i class="ace-icon fa fa-exclamation-circle" style="color:red;"></i>
												<span style="color:red;font-size: 12px;letter-spacing: 2px;"></span>
											</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right">商品图片1</label>

										<div class="col-sm-9" style="max-width: 360px;">
											<input type="file" id="img-1" name="gimg1" accept="image/gif,image/jpeg,image/jpg,image/png,image/svg"/>
											<label style="border:1px solid red;display: none;" class="error gimg1-error">
												&nbsp;
												<i class="ace-icon fa fa-exclamation-circle" style="color:red;"></i>
												<span style="color:red;font-size: 12px;letter-spacing: 2px;"></span>
											</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" >商品图片2</label>

										<div class="col-sm-9" style="max-width: 360px;">
											<input type="file" id="img-2" name="gimg2" accept="image/gif,image/jpeg,image/jpg,image/png,image/svg"/>
											<label style="border:1px solid red;display: none;" class="error gimg2-error">
												&nbsp;
												<i class="ace-icon fa fa-exclamation-circle" style="color:red;"></i>
												<span style="color:red;font-size: 12px;letter-spacing: 2px;"></span>
											</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" >商品图片3</label>

										<div class="col-sm-9" style="max-width: 360px;">
											<input type="file" id="img-3" name="gimg3" accept="image/gif,image/jpeg,image/jpg,image/png,image/svg"/>
											<label style="border:1px solid red;display: none;" class="error gimg3-error">
												&nbsp;
												<i class="ace-icon fa fa-exclamation-circle" style="color:red;"></i>
												<span style="color:red;font-size: 12px;letter-spacing: 2px;"></span>
											</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" >商品图片4</label>

										<div class="col-sm-9" style="max-width: 360px;">
											<input type="file" id="img-4" name="gimg4" accept="image/gif,image/jpeg,image/jpg,image/png,image/svg"/>
											<label style="border:1px solid red;display: none;" class="error gimg4-error">
												&nbsp;
												<i class="ace-icon fa fa-exclamation-circle" style="color:red;"></i>
												<span style="color:red;font-size: 12px;letter-spacing: 2px;"></span>
											</label>
										</div>
									</div>
									<div class="form-group">
										<label class="col-sm-3 control-label no-padding-right" >商品简介</label>

										<div class="col-sm-9">
											<textarea class="form-control limited"  maxlength="50" style="width: 360px;height: 80px;" name="gbrief"></textarea>
											<label style="border:1px solid red;display: none;" class="error gbrief-error">
												&nbsp;
												<i class="ace-icon fa fa-exclamation-circle" style="color:red;"></i>
												<span style="color:red;font-size: 12px;letter-spacing: 2px;"></span> 
											</label>
										</div>
									</div>
									<div class="form-group">

										<div class="col-sm-9 col-md-offset-2" >
											<div class="center">
												<button type="submit" class="btn btn-sm btn-success" id="submit">
													提交
													<i class="ace-icon fa fa-arrow-right icon-on-right bigger-110"></i>
												</button>
											</div>
										</div>
									</div>
								</form>
							</div>
						</div>
					</div>
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
				
				$('#img-1 ,#img-2,#img-3,#img-4').ace_file_input({
					no_file:'No File ...',
					btn_choose:'Choose',
					btn_change:'Change',
					droppable:false,
					onchange:null,
					thumbnail:false //| true | large
					//whitelist:'gif|png|jpg|jpeg'
					//blacklist:'exe|php'
					//onchange:''
					//
				});
				//验证添加
				$('#submit').click(function(){
					var gname = $('input[name="gname"]').val();
					$('.error').hide();
					if (gname.trim() == '') {
						$('.gname-error span').text("请输入商品名称！！");
						$(".gname-error").show();
						return false;
					}
					var gprice = $('input[name="gprice"]').val();
					$('.error').hide();
					if (gprice.trim() == '') {
						$('.gprice-error span').text("请输入商品价格！！");
						$(".gprice-error").show();
						return false;
					}
					var gimg1 = $('#img-1').val();
					$('.error').hide();
					if (gimg1.trim() == '') {
						$('.gimg1-error span').text("请选择图片1！！");
						$(".gimg1-error").show();
						return false;
					}
					var gimg2 = $('#img-2').val();
					$('.error').hide();
					if (gimg2.trim() == '') {
						$('.gimg2-error span').text("请选择图片2！！");
						$(".gimg2-error").show();
						return false;
					}
					var gimg3 = $('#img-3').val();
					$('.error').hide();
					if (gimg3.trim() == '') {
						$('.gimg3-error span').text("请选择图片3！！");
						$(".gimg3-error").show();
						return false;
					}
					var gimg4 = $('#img-4').val();
					$('.error').hide();
					if (gimg4.trim() == '') {
						$('.gimg4-error span').text("请选择图片4！！");
						$(".gimg4-error").show();
						return false;
					}
					var gbrief = $('textarea').val();
					$('.error').hide();
					if (gbrief.trim() == '') {
						$('.gbrief-error span').text("请输入商品简介！！");
						$(".gbrief-error").show();
						return false;
					}
					return true;
				});
				/***************/
			});
		</script>
	</body>
</html>
