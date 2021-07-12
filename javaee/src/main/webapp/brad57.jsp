<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="tw.brad.myclasses.BCrypt"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<sql:setDataSource
	driver="com.mysql.cj.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/javaee"
	user="root"
	password="root"
	/>

<sql:update>
INSERT INTO member (account,passwd,realname) VALUES ('peter4','${BCrypt.hashpw("123456", BCrypt.gensalt()) }','Peter4')
</sql:update>

</body>
</html>