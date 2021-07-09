<%@page import="tw.brad.myclasses.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Member member = new Member();

	request.setAttribute("k1", "v1");
	request.setAttribute("k2", "v2");
	request.setAttribute("member", member);
	
	member.setAccount("brad");
	member.setRealname("Brad");
	member.setAge(18);
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
Member : <%= member.getAccount() %>
before
<hr />
<%@ include file="brad44.jsp" %>
<hr />
after
</body>
</html>