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
<c:set var="prev" value="${page == 1 ? 1 : page - 1 }" />
<c:set var="next" value="${page == lastpage ? lastpage : page + 1 }" />

<sql:query var="rs">
	SELECT * FROM food LIMIT ${start }, ${rpp }
</sql:query>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</head>
<body>

<h1>Brad Big Company</h1>
<hr />
<a href="?page=${prev }">
	<button type="button" class="btn btn-primary">上一頁</button>
</a>
<a href="?page=${next }">
	<button type="button" class="btn btn-primary">下一頁</button>
</a>

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