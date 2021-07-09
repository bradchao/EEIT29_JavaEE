<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setAttribute("k1", "v1");
	request.setAttribute("k2", "v2");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
before
<hr />
<%@ include file="brad44.jsp" %>
<hr />
after
</body>
</html>