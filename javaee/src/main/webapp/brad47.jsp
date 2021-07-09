<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//String account = request.getParameter("account");
	// EL => ${param } param 隱含參數物件
	// 執行後也是  javax.el.ELException: Failed to parse the expression [${ }] 請問該怎麼解決呢
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
<hr />
<jsp:declaration>
	int a;
	String b;
</jsp:declaration>
<jsp:scriptlet>
	a = 10;
	b = "Brad";
</jsp:scriptlet>
a = <jsp:expression>a</jsp:expression>
b = <jsp:expression>b</jsp:expression>
<hr />
Member: ${member }<br>
Member: <%= member %><br>
Member: <% out.println(member); %>


</body>
</html>