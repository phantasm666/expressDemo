<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8" />
</head>
<body>
<h>annonation</h><br>

<form action="/user/toUser" method="post">
    <div>
        ${result}
    </div>
    <input type="submit" value = "post请求">
</form>

</body>
</html>