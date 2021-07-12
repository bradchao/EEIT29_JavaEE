<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
<%
	String[] names = {"Brad", "Eric", "Tony", "Mary", "Andy", "Kevin"};
	pageContext.setAttribute("names", names);
	
%>
<table border="1" width="100%">
	<tr>
		<th>index</th>
		<th>Name</th>
		<th>count</th>
		<th>First</th>
		<th>Last</th>
	</tr>
	<c:forEach items="${names }" var="name" varStatus="status">
		<tr bgcolor='${status.index % 2 == 0 ? "yellow" : "pink" }'>
			<td>${status.index }</td>
			<td>${name }</td>
			<td>${status.count }</td>
			<td>${status.first }</td>
			<td>${status.last }</td>
		</tr>
	</c:forEach>
</table>



</body>
</html>