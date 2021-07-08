<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page errorPage="brad37.jsp" %>
<%
	String strX, strY, strResult;
	strX = strY = strResult = "";
	
	int intX, intY, intResult;
	strX = request.getParameter("x");
	strY = request.getParameter("y");
	String op = request.getParameter("op"); 
	if (op == null) op = "";
	
	try{
		intX = Integer.parseInt(strX);
		intY = Integer.parseInt(strY);
		
		
		switch (op){
			case "1": intResult = intX + intY; break; 
			case "2": intResult = intX - intY; break; 
			case "3": intResult = intX * intY; break; 
			case "4": intResult = intX / intY; break;
			default: intResult = 0;
		}
		strResult = intResult + "";
	}catch(Exception e){
		strX = strY = strResult = "";
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
	<input type="number" name="x" value="<%= strX %>" />
	<select name="op">
		<option value="1" <% out.println(op.equals("1")?"selected":""); %>>+</option>
		<option value="2" <% out.println(op.equals("2")?"selected":""); %>>-</option>
		<option value="3" <% out.println(op.equals("3")?"selected":""); %>>x</option>
		<option value="4" <% out.println(op.equals("4")?"selected":""); %>>/</option>
	</select>
	<input type="number" name="y" value="<%= strY %>" />
	<input type="submit" value="=" />
	<span><%= strResult %></span>
</form>

</body>
</html>