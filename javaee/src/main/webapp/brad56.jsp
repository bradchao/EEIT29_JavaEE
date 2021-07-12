<%@page import="tw.brad.myclasses.BCrypt"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Properties"%>
<%@page import="java.sql.DriverManager"%>
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

<c:catch var="error">
<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	Properties prop = new Properties();
	prop.put("user", "root");
	prop.put("password", "root");
	Connection conn = DriverManager.getConnection(
			"jdbc:mysql://localhost:3306/javaee", prop);
	//--------------------
	String sql = "INSERT INTO member (account,passwd,realname) VALUES (?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	pstmt.setString(1, "amy");
	pstmt.setString(2, BCrypt.hashpw("123456", BCrypt.gensalt()));
	pstmt.setString(3, "Amy");
	pstmt.executeUpdate();
	
%>
</c:catch>
<c:if test="${error != null }">${error }</c:if>


</body>
</html>