<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml" class="hb-loaded">

	<head>
		<meta charset="utf-8" />
		<title>404报错</title>
		<link href="<%=path%>/css/wrong.css?v=1.3.5" type="text/css" rel="stylesheet" />
		<script type="text/javascript">
			window.onload = function() {
				setTimeout("goUrl()", 5000);
				var i = 5;
				setInterval(function() {
					if (i > 0) {
						i = i - 1;
					}
					document.getElementById("time").innerHTML = i;
				}, 1000);
			};
			function goUrl() {
				window.location.href = "<%=path%>/index.jsp";
			}
		</script>
	</head>

	<body>
		<div class="wrong_wc">
			<div class="wrong_two cmain">
				<div class="wrong_word">
					<h3>404 Not Found</h3>
					<h4>这个页面一边凉快去了!</h4>
					<p> <i id="time">0</i> <span>秒之后页面自动跳转，你还可以：</span> </p>
					<p> <a href="index.jsp">直接返回首页</a> </p>
				</div>
			</div>
		</div>
	</body>

</html>
