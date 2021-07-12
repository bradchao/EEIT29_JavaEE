<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/newiii"
	user="root"
	password="root"
	/>
<c:set var="rpp" value="10" />	

<c:set var="page" value="${param.page == null ? 1 : param.page }" />
<c:set var="start" value="${(page - 1) * rpp }" />

<sql:query var="rs">
	SELECT * FROM food LIMIT ${start }, ${rpp }
</sql:query>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<table border="1" width="100%">
	<tr>
		<th>編號</th>
		<th>名稱</th>
		<th>電話</th>
		<th>圖片</th>
	</tr>
	<c:forEach items="${rs.rows }" var="row">
		<tr>
			<td>${row.id }</td>
			<td>${row.name }</td>
			<td>${row.tel }</td>
			<td><img src="${row.picurl }" width="120px" /></td>
		</tr>
	</c:forEach>
</table>

</body>
</html>