<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	int lottery = (int)(Math.random()*49+1);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<h1>Brad Big Company</h1>
<hr />
Hello, <%= name %><br />
Lottery = <%= lottery %>
<hr />
<%@ include file="brad40.jsp" %>

<hr />
Copyleft ....

</body>
</html>