<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// EL => ${ } param 隱含參數物件
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
<jsp:useBean id="member" class="tw.brad.myclasses.Member"></jsp:useBean>
<jsp:setProperty property="account" value="${param.account }" name="member"/>
<jsp:setProperty property="realname" value="${param.realname }" name="member"/>
<jsp:setProperty property="age" value="${param.age }" name="member"/>

Account: ${member.account }<br />
Realname: ${member.realname }<br />
Age: ${member.age }<br />

</body>
</html>