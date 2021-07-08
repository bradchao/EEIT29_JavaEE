<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="brad37.jsp" %>
<%
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	
	int intX = Integer.parseInt(x);
	int intY = Integer.parseInt(y);
	int intResult = intX + intY;
	
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
<form action="brad36.jsp">
	<input type="number" name="x" />
	+
	<input type="number" name="y" />
	<input type="submit" value="=" />
	<span><%= intResult %></span>
</form>

</body>
</html>