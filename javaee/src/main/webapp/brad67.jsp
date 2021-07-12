<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
Main Page<hr />
<%
	String account =  (String)session.getAttribute("account");
	out.println(account);
%>
<hr />
<a href="logout.jsp">Logout</a>
</body>
</html>