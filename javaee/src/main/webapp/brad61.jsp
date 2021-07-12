<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="tw.brad.myclasses.BCrypt"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>

<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/javaee"
	user="root"
	password="root"
	/>
	
<c:if test="${!empty param.realname }">
	<sql:update>
		UPDATE member SET realname = ? WHERE id = ?
		<sql:param>${param.realname }</sql:param>
		<sql:param>${param.id }</sql:param>
	</sql:update>
	<c:redirect url="brad59.jsp"></c:redirect>
</c:if>	
	
<sql:query var="result">
	SELECT * FROM member WHERE ID = ?
	<sql:param>${param.editid }</sql:param>
</sql:query>	

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
Edit
<form action="brad61.jsp" >
	<input type="hidden" name="id" value="${param.editid }" />
	Account: <input type="text" name="account" value="${result.rows[0].account }" disabled></input><br>
	Realname:<input type="text" name="realname" value="${result.rows[0].realname }" /><br>
	<input type="submit" value="Update" />
</form>

</body>
</html>