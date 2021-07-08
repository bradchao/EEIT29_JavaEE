<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 隱含物件
	String userName = request.getParameter("user");
	if (userName == null) userName = "Nobody";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
Welcome, <%= userName %>
</body>
</html>