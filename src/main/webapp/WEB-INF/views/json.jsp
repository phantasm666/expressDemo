<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8" />
    <script type="text/javascript" src = "../js/jquery-1.9.1.min.js"></script>


    <script type="text/javascript">
        //等价于$(function()
        $(document).ready(function () {


            //绑定add的单击事件
            $("#add").click(function() {
                var userName = $("#userName").val();
                var age = $("#age").val();

//                var age = $("#age").attr("value");
//                var userName = document.getElementsByName("userName");


                var user = {userName:userName,age:age};
                $.ajax({
                    url:"/user/addUserJson",
                    type:"get",
                    data:user,
                    success:function (data) {
                        alert("userName-->" + userName + "       age--->" + age)
                    }
                    })

            })


        })
    </script>
</head>
<body>
<h>json添加用户</h>

姓名 ：<input type="text" name = "userName" id = "userName">
年龄 ：<input type="text" id="age" name="age">
<input type="button" name="add" id ="add" value="添加">


</body>
</html>