<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>用户主页面</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="../others/main/assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="../others/main/assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="../others/main/assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="../others/main/assets/css/ie8.css" /><![endif]-->
	</head>
	<body>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<div id="main">
						<div class="inner">

							<!-- Header -->
								<header id="header">
									<a href="/user/main" class="logo"><strong>${user.name}</strong>   欢迎你</a>
									<%--<div style="float:right;">靠右显示</div>--%>
									<a href = "/user/logout" class="logo" style="text-align:right">退出</a>
									<ul class="icons">
										<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
										<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
										<li><a href="#" class="icon fa-snapchat-ghost"><span class="label">Snapchat</span></a></li>
										<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
										<li><a href="#" class="icon fa-medium"><span class="label">Medium</span></a></li>
									</ul>
								</header>

							<!-- Banner -->
								<section id="banner">
									<div class="content">
										<header>
											<h1>Hi, 这是一个<br />
												快递代领系统</h1>
										</header>
										<ul class="actions">
											<li><a href="#" class="button big">发布订单</a></li>
										</ul>
										<p>随着网络的普及，网络购物随之兴起，有了网购就有快递；大学生对网络购物非常热衷，大学的快递也非常多，但是由于许多方面的限制（例如上课、学习、社团活动等等）使得我们无法按照约定时间和地点接收快递，使得我们学生和快递公司非常为难：学生收不到快递，快递公司也因为学生无法按时拿快递使得快递堆积如山不好处理；因此，为了解决这个问题，需要我们建立一个校园快递服务平台。通过帮助学生代领快递，使得校园快递可以有效的合理整合校园内分散的快递资源，营造和谐校园创造良好的环境，为广大师生提供方便快捷的服务，从而在客观上使得校园快递秩序得到规范。</p>
									</div>
									<span class="image object">
										<img src="../image/快递小单车.jpg" alt="" />
									</span>
								</section>
						</div>
					</div>
				<jsp:include page="left.jsp"></jsp:include>
			</div>

		<!-- Scripts -->
			<script src="../others/main/assets/js/jquery.min.js"></script>
			<script src="../others/main/assets/js/skel.min.js"></script>
			<script src="../others/main/assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="../others/main/assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="../others/main/assets/js/main.js"></script>

	</body>
</html>