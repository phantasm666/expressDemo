<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<base href="<%=basePath%>">

<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
			<title>修改个人信息</title>
			<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
			<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
			<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js "></script>
			<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
			<script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js "></script>
			<!-- 修改客户信息的css、js -->

		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="../others/main/assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="../others/main/assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="../others/main/assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="../others/main/assets/css/ie8.css" /><![endif]-->

	</head>


	<script type="text/javascript">
        //    $(document).ready(function(){
        check = function(){
//            var email = $("#email").val().trim(); // 邮箱
            var username = $("#username").val().trim(); // 用户名
            var nickname = $("#nickname").val().trim(); // 昵称
            var sex = $("#sex").val().trim(); // 性别
            var password = $("#password").val().trim(); // 密码
            var repassword = $("#repassword").val().trim(); // 密码
            var phone = $("#phone").val().trim(); // 电话
            var address = $("#address").val().trim(); // 地址
            // 校验regsdg
//                if(email == ""){
//                    alert("邮箱号不能为空！")
//                }
            if(username == ""){
                alert("用户名不能为空！")
            }
            else if(sex!="男"&&sex!="女"){
                alert("性别为空或性别错误")
            }
            else if(repassword == ""){
                alert("密码不能为空！")
            }
            else if(password != repassword){
                alert("两次密码不一致！")
            }
            else if(phone == ""){
                alert("电话不能为空！")
            }
            else if(address == ""){
                alert("地址不能为空！")
            }
            else if(isNaN(phone)){
                alert("电话不是数字！")
            }
//                else{
//                    $.ajax({
//                        url:"customer/editInfo.action",
//                        type:"post",
//                        async:false,
//                        data: "customer.email=" + email +"&customer.name=" + username +"&customer.password=" + password
//                               + "&customer.phone=" + phone + "&customer.address=" + address,
//                        dataType:"xml",
//                        error:function(){
//                            alert("邮箱号已存在！");
//                        },
//                        success:function(){
//                            alert("修改成功！");
//                        }
//                    });
//                }

            else{
                $.ajax({
                    type : 'post',
                    url: 'user/editContent',
                    dataType:"json",
                    data: {
                        "username":username,"password":password,"phone":phone,"address":address,
						"nickname":nickname,"sex":sex
                    },
                    success: function (data) {
                        if(data.result=="success"){
                            alert("修改成功");
                        }else {
                            alert("修改失败");
                        }
                    }
                })
            }

        }
        //    });
	</script>

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
							<!-- 修改个人信息的表单 -->
							<form>
								<h3>修改个人信息</h3>
								<br>
								<%--<div class="form-group">--%>
								<%--<label for="email">邮箱</label>--%>
								<%--<input type="email" class="form-control" id="email" placeholder="Email">--%>
								<%--</div>--%>
								<div class="form-group">
									<label for="username">用户名</label>
									<input type="text" class="form-control" id="username" value="${user.name}" placeholder="Username">
								</div>
								<div class="form-group">
									<label for="nickname">昵称</label>
									<input type="text" class="form-control" id="nickname" value="${user.nickname}">
								</div>
								<div class="form-group">
									<label for="sex">性别</label>
									<input type="text" class="form-control" id="sex" value="${user.sex}" placeholder="sex">
								</div>
								<div class="form-group">
									<label for="password">密码</label>
									<input type="password" class="form-control" id="password" value="${user.password}" placeholder="Password">
								</div>
								<div class="form-group">
									<label for="repassword">确认密码</label>
									<input type="password" class="form-control" id="repassword" value="${user.password}" placeholder="Repassword">
								</div>
								<div class="form-group">
									<label for="phone">电话</label>
									<input type="text" class="form-control" id="phone"value="${user.phone}" placeholder="Phone">
								</div>
								<div class="form-group">
									<label for="address">地址</label>
									<input type="text" class="form-control" id="address" value="${user.address}" placeholder="Adress">
								</div>
								<%--<div class="form-group">--%>
								<%--<label for="upload"><s:file name="upload" value="${theCustomer.photo}"/></label>--%>
								<%--</div>--%>

								<button type="submit" class="btn btn-primary" onclick="check()" style="align-content: center">确认修改</button>
							</form>
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