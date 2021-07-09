<%@ page import="tw.brad.myclasses.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 老師 import 最後面*是import什麼
	// 那 JSP 可以把之前寫的簽名板 import 進來用嗎
	// container 容器
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>
<h1>Brad Big Company</h1>
<hr />
${BradUtils.hello("Brad") } : ${BradUtils.createLottery() }

<form action="brad48.jsp">
	<input type="number" name="x" value="${param.x }"/>
	<select name="op">
		<option value="1" ${(param.op == "1")?"selected":"" }>+</option>
		<option value="2" ${(param.op == "2")?"selected":"" }>-</option>
		<option value="3" ${(param.op == "3")?"selected":"" }>x</option>
		<option value="4" ${(param.op == "4")?"selected":"" }>/</option>
	</select>
	<input type="number" name="y" value="${param.y }"/>
	<input type="submit" value="=" />
	<span>${BradUtils.calc(param.x, param.y, param.op) }</span>
</form>

</body>
</html>