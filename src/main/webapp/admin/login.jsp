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
		<title>后台登录</title>

		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="<%=path%>/admin/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="<%=path%>/admin/assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="<%=path%>/admin/assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="<%=path%>/admin/assets/css/ace.min.css" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="<%=path%>/admin/assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
	</head>

	<body class="login-layout" style="background: url('<%=path%>/admin/assets/images/bg.jpg') no-repeat center;">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="ace-icon fa fa-leaf green"></i>
									<span class="red">DarryRing</span>
									<span class="grey" id="id-text2">Application</span>
								</h1>
								<h4 class="blue" id="id-company-text">BackStage</h4>
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border" style="padding: 2px;">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="ace-icon fa fa-coffee green"></i>
												Please Enter Your Information
											</h4>

											<div class="space-6"></div>

											<form>
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" placeholder="Admin" name="mname" id="mname"/>
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>
													<label style="border:1px solid red;display: none;" class="error mname-error">
														&nbsp;
														<i class="ace-icon fa fa-exclamation-circle" style="color:red;"></i>
														<span style="color:red;font-size: 12px;letter-spacing: 2px;"></span>
													</label>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" placeholder="Password" name="mpwd" id="mpwd"/>
															<i class="ace-icon fa fa-lock"></i>
														</span>
													</label>
													<label style="border:1px solid red;display: none;" class="error mpwd-error">
														&nbsp;
														<i class="ace-icon fa fa-exclamation-circle" style="color:red;"></i>
														<span style="color:red;font-size: 12px;letter-spacing: 2px;"></span>
													</label>
													<div class="space"></div>

													<div class="clearfix">
														<label class="inline">
															<input type="checkbox" class="ace" />
															<span class="lbl"> Remember Me</span>
														</label>

														<button type="button" class="width-35 pull-right btn btn-sm btn-primary" id="manager-login">
															<i class="ace-icon fa fa-key"></i>
															<span class="bigger-110">Login</span>
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>

											<div class="social-or-login center">
												<span class="bigger-110">Or Login Using</span>
											</div>

											<div class="space-6"></div>

											<div class="social-login center">
												<a class="btn btn-primary">
													<i class="ace-icon fa fa-facebook"></i>
												</a>

												<a class="btn btn-info">
													<i class="ace-icon fa fa-twitter"></i>
												</a>

												<a class="btn btn-danger">
													<i class="ace-icon fa fa-google-plus"></i>
												</a>
											</div>
										</div><!-- /.widget-main -->
									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->
							</div><!-- /.position-relative -->
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="<%=path%>/admin/assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
	<script type="text/javascript">
		if('ontouchstart' in document.documentElement) document.write("<script src='<%=path%>/admin/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
			
		$(function(){
			//验证登录	
			$('#manager-login').click( function() {
				var mname = $('#mname').val();
					$('.error').hide();
					if (mname.trim() == '') {
						$('.mname-error span').text("请输入用户名！！");
						$(".mname-error").show();
						return false;
					}
				var mpwd = $('#mpwd').val();	
					if (mpwd.trim() == '') {
						$('.mpwd-error span').text("请输入密码！！");
						$(".mpwd-error").show();
						return false;
					}
					
					$.ajax({
						type:"POST",
						url:"<%=path%>/manager/login.do",
						data:{mname:mname,mpwd:mpwd},
						success:function(msg){
							if(msg == 0){
								$('.error').hide();
								$('.mname-error span').text("用户名或密码错误！！");
								$(".mname-error").show();
								return false;
							}else{
								location.href = "<%=path %>/goods/findAll.do";
							}
						}
					});
			   });
		  });
		</script>
	</body>
</html>