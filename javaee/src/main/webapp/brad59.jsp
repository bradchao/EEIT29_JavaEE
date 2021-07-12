<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/javaee"
	user="root"
	password="root"
	/>

<c:if test="${! empty param.delid }">
	<sql:update>
		DELETE FROM member WHERE id = ?
		<sql:param>${param.delid }</sql:param>
	</sql:update>
</c:if>

<sql:query var="result">
	SELECT * FROM member ORDER BY id DESC
</sql:query>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<a href="brad60.jsp">Add</a>
<hr />
<table border="1" width="100%">
	<tr>
		<th>id</th>
		<th>account</th>
		<th>realname</th>
		<th>Del</th>
		<th>Edit</th>
	</tr>
	<script>
		function delConfirm(account){
			var isDel = confirm("Delete " + account + "?");
			return isDel;
		}
	</script>
	<c:forEach items="${result.rows }" var="row">
		<tr>
			<td>${row.id }</td>
			<td>${row.account }</td>
			<td>${row.realname }</td>
			<td><a href="?delid=${row.id }" onclick="return delConfirm('${row.account }');">Del</a></td>
			<td><a href="brad61.jsp?editid=${row.id }">Edit</a></td>
		</tr>
	</c:forEach>
</table>

</body>
</html>