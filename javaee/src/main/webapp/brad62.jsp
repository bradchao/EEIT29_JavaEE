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
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<c:catch>
	<sql:transaction>
		<sql:update>
			INSERT INTO member (account,passwd,realname) VALUES (?,?,?)
			<sql:param>test7</sql:param>
			<sql:param>no passwd</sql:param>
			<sql:param>Test7</sql:param>
		</sql:update>
		
		<sql:query var="lastid">
			SELECT last_insert_id() as newid
		</sql:query>
		
		=> ${lastid.rows[0].newid }
		<sql:update>
			UPDATE member SET passwd = ? WHERE id = ?
			<sql:param>777</sql:param>
			<sql:param>${lastid.rows[0].newid }</sql:param>
		</sql:update>
	</sql:transaction>
</c:catch>


</body>
</html>