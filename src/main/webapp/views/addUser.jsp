<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8" />
    <script type="text/javascript" src = "../js/jquery-1.9.1.min.js"></script>
    <script type="text/javascript">
        function addUser() {
            var form = document.forms[0];
            form.action = "/user/addUser"
            form.method = "get";
            form.submit();
        }
    </script>
</head>
<body>
<h>添加用户</h>
    <form action = "">
        姓名 ：<input type="text" name = "userName" id = "userName">
        年龄 ：<input type="text" name="age" id="age">
        <input type="button" value="提交" onclick="addUser()">
    </form>
</body>
</html>