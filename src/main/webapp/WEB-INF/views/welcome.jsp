<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8" />
</head>
<body>
welcome
<h>传递数据</h><br>
我的名字是 ：${result}
map:
<c:forEach items="${map}" var="m">
    <br>
    ${m.key}--------->${m.value}
</c:forEach>
</body>
</html>