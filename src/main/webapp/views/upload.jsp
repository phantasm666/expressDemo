<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <script type="text/javascript" src = "../js/jquery-1.9.1.min.js"></script>
    <meta charset="UTF-8" />
</head>
<body>
<h>上传文件</h>
<form name = "userForm" action = "/file/upload" method="post" enctype="multipart/form-data">
    选择文件：<input type="file" name = "file" id="file">
    <input type="submit" value="上传">
</form>
</body>
</html>