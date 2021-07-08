<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  標籤文件 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
<h1>Brad Big Company</h1>
<hr />
本期要出v1:
<%
	int lottery = (int)(Math.random()*49+1);
	System.out.println(lottery);
	// 隱含物件 out
	out.print(lottery);
%>
<hr />
本期要出v2: 
<% out.println(lottery); %>
<hr />
本期要出v3: 
<%= lottery  %>





</body>
</html>