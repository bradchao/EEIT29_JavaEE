<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	// taglib
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

<c:set var="x" value="123" scope="request" />
<c:set var="y" value="456" scope="request" />
x = ${x }<br />
y = ${requestScope.y }<br />

<c:out value="Hello, World" /><br />
<c:out value="${z }" default="no value" /><br />

<jsp:useBean id="member" class="tw.brad.myclasses.Member"></jsp:useBean>
<c:set target="${member }" property="account">brad</c:set>
<c:set target="${member }" property="realname">趙令文</c:set>
<c:set target="${member }" property="age">18</c:set>

${member.account } : ${member.realname }:${member.age }<br />




</body>
</html>