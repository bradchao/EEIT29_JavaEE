<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int value1 = (int)(Math.random()*49+1);
	int value2 = (int)(Math.random()*49+1);
	
	//想問page寫41自己 sever就爆炸了 是為什麼
	// 老師， <jsp:param> 的用途就是用來覆蓋參數嗎
	// => 再多加一些參數
	// 1. 有其他方式 => 更好, 彈性更好
	// 2. 帶值傳遞 X => 帶物件

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

before
<hr />
<jsp:include page="brad42.jsp">
	<jsp:param value="<%= value1 %>" name="key1"/>
	<jsp:param value="<%= value2 %>" name="key2"/>
</jsp:include>
<hr />
after

</body>
</html>