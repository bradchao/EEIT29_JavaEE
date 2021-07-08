<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="brad37.jsp" %>
<%
	int intX, intY; intX = intY = 0;
	int intResult = 0;
	String x = request.getParameter("x");
	String y = request.getParameter("y");
	try{
		intX = Integer.parseInt(x);
		intY = Integer.parseInt(y);
		intResult = intX + intY;
		
	}catch(Exception e){
		
	}
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
<form action="brad36.jsp">
	<input type="number" name="x" value="<%= intX %>" />
	+
	<input type="number" name="y" value="<%= intY %>" />
	<input type="submit" value="=" />
	<span><%= intResult %></span>
</form>

</body>
</html>