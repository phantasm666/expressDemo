<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>


<%--<link rel="stylesheet" type="text/css" href="../css/styles.css" media="all">--%>

<html>
<head>
    <title>添加訂單</title>
    <%--<script type="text/javascript" src = "../js/jquery-1.9.1.min.js"></script>--%>

        <meta charset="utf-8">
        <%--<meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0,user-scalable=0">--%>

        <link rel="stylesheet" type="text/css" href="../others/time/css/styles.css" media="all">
        <script src="../others/time/js/jquery.js"></script>
        <script type="text/javascript" src="../others/time/js/moment.js"></script>
        <script type="text/javascript" src="../others/time/js/bootstrap-datetimepicker.js"></script>
    <script type="text/javascript">
        window.onload = function() {
            var show = document.getElementById("show");
            setInterval(function() {
                var time = new Date();
                // 程序计时的月从0开始取值后+1
                var m = time.getMonth() + 1;
                var t = time.getFullYear() + "-" + m + "-"
                    + time.getDate() + " " + time.getHours() + ":"
                    + time.getMinutes() + ":" + time.getSeconds();
                show.innerHTML = t;
            }, 1000);
        };
    </script>

        <script type="text/javascript">

            $(document).ready(function(){
                // date time picker
                if($(".iDate.full").length>0){
                    $(".iDate.full").datetimepicker({
                        locale: "zh-cn",
                        format: "YYYY-MM-DD a hh:mm",
                        dayViewHeaderFormat: "YYYY年 MMMM"
                    });
                }
                if($(".iDate.date").length>0){
                    $(".iDate.date").datetimepicker({
                        locale:"zh-cn",
                        format:"YYYY-MM-DD",
                        dayViewHeaderFormat:"YYYY年 MMMM"
                    });
                }
            })
        </script>

    <script type="text/javascript">
         function addcheck(){
            alert("！")
            var receiver = $("#receiver").val().trim(); // 收件人姓名
            var num4 = $("#num4").val().trim(); //四个尾号
            var getTime = $("#getTime").val().trim(); // 代领时间
            var getPlace = $("#getPlace").val().trim(); // 代领位置
            var address = $("#address").val().trim(); // 送达地址（宿舍栋数）
            var arriveTime = $("#arriveTime").val().trim(); // 要求到达时间
            var phone = $("#phone").val().trim(); // 联系人电话
            var remark = $("#remark").val().trim(); // 备注
            var money = $("#money").val().trim(); // 悬赏金额
            if(receiver == ""){
                alert("收件人姓名不能为空！")
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
            else if(isNaN(phone)) {
                alert("电话不是数字！")
            else
                {
                    windows.location.href('');
                }
            }
        }
        //    });
    </script>

</head>
<body>


<div id="wrapper">
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

            <table border="1" align="center">
                <form name = "form1" id="form1" method="post" action="/user/submitOrder">
                <tr>
                    <td><div align="right">快递 收件人姓名：</div></td>
                    <td><label>
                        <input type="text" name="receiver">
                    </label></td>
                </tr>
                <tr>
                    <td><div align="right">手机尾号（四位）：</div></td>
                    <td><label>
                        <input type="text" name="num4">
                    </label></td>
                </tr>
                    <tr>
                        <td><div align="right">当前时间：</div></td>
                        <td><label>
                            <div id="show" name="show"></div>
                        </label></td>
                    </tr>
                <tr>
                <td><div align="right">代领时间(月日年)：</div></td>
                    <td><label>
                        <input type="text" name="getTime">
                    </label></td>
                </tr>
                <tr>
                    <td><div align="right">代领位置：</div></td>
                    <td><label>
                        <select name="getPlace" size="1">
                            <option value="北理33栋快递中心" selected>北理33栋快递中心</option>
                            <option value="10栋EMS">10栋EMS</option>
                        </select>
                    </label></td>
                </tr>
                <tr>
                    <td><div align="right">送达地址（宿舍栋数）：</div></td>
                    <td><label>
                        <input type="text" name="address">
                    </label></td>
                </tr>
                    <tr>
                        <td><div align="right">要求到达时间：</div></td>
                        <td><label>
                            <input type="text" name="arriveTime">
                        </label></td>
                    </tr>
                <tr>
                    <td><div align="right">联系人电话：</div></td>
                    <td><label>
                        <input type="text" name="phone">
                    </label></td>
                </tr>
                <tr>
                    <td><div align="right">备注（建议是短信信息）：</div></td>
                    <td><label>
                        <div class="12u$">
                            <textarea name="remark" id="remark" placeholder="Enter your message" rows="6"></textarea>
                        </div>
                    </label></td>
                </tr>
                <tr>
                    <td><div align="right">悬赏金额：</div></td>
                    <td><label>
                        <input type="text" name="money">
                    </label></td>
                </tr>
                <tr>
                    <td colspan="2"><label>
                        <div align="center">
                            <input type="submit" class="btn btn-primary" onclick="addcheck()" style="align-content: center" value="发布" />
                        </div>
                    </label></td>
                </tr>
                    </form>
            </table>
        </div>
    </div>

    <jsp:include page="left.jsp"></jsp:include>
</div>
</body>
</html>