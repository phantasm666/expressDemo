<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>修改个人信息</title>
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js "></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js "></script>
    <!-- 修改客户信息的css、js -->


</head>
<!-- AJAX 代码 -->
<script type="text/javascript">
//    $(document).ready(function(){
        check = function(){
//            var email = $("#email").val().trim(); // 邮箱
            var username = $("#username").val().trim(); // 用户名
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
                else if(password == ""){
                    alert("密码不能为空！")
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
                         url:"customer/editInfo.action",
                         type:"post",
                         async:false,
                         data:"&customer.name=" + username +"&customer.password=" + password
                         + "&customer.phone=" + phone + "&customer.address=" + address,
                         dataType:"xml",
//                         error:function(){
//                             alert("邮箱号已存在！");
//                         },
                         success:function(){
                             alert("修改成功！");
                         }
                     });
                 }

        }
//    });
</script>
<body>

<div class="container-fluid">
    <!--页头部分-->
    <div class="row">
        <jsp:include page="top.jsp"></jsp:include>
    </div>

    <!--中间部分-->
    <div class="row" >

        <div class="col-sm-1"></div>
        <!--  left部分 -->
        <jsp:include page="left.jsp"></jsp:include>
        <!--  修改个人信息部分 -->

        <div class="col-sm-8">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4" style="background-color: #EBEBEB" style="margin-top: 20px">
                    <div>
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
                            <input type="text" class="form-control" id="username" value="${theCustomer.name}" placeholder="Username">
                        </div>

                        <div class="form-group">
                            <label for="password">密码</label>
                            <input type="password" class="form-control" id="password" value="${theCustomer.password}" placeholder="Password">
                        </div>

                        <div class="form-group">
                            <label for="password">出生日期</label>
                            <<input type="date">>
                        </div>
                        <div class="form-group">
                            <label for="repassword">确认密码</label>
                            <input type="password" class="form-control" id="repassword" value="${theCustomer.password}" placeholder="Repassword">
                        </div>
                        <div class="form-group">
                            <label for="phone">电话</label>
                            <input type="text" class="form-control" id="phone"value="${theCustomer.phone}" placeholder="Phone">
                        </div>
                        <div class="form-group">
                            <label for="address">地址</label>
                            <input type="text" class="form-control" id="address" value="${theCustomer.address}" placeholder="Adress">
                        </div>
                        <%--<div class="form-group">--%>
                            <%--<label for="upload"><s:file name="upload" value="${theCustomer.photo}"/></label>--%>
                        <%--</div>--%>

                        <button type="submit" class="btn btn-primary" onclick="check()" style="align-content: center">确认修改</button>
                    </form>
                    </div>
                </div>
                <div class="col-sm-4"></div>
            </div>



        </div>

        <!-- row -->
        <div class="col-sm-1"></div>
    </div>

    <!--页脚部分-->
    <div class="container-fluid">
        <div class="row">
            <jsp:include page="foot.jsp"></jsp:include>
        </div>
    </div>
</div>
<script>
    $(document).ready(function ()
    {
        $('#reg-form').easyform();
    });
</script>
</body>
</html>