<%@ page import="tw.brad.myclasses.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<option value="1">+</option>
		<option value="2">-</option>
		<option value="3">x</option>
		<option value="4">/</option>
	</select>
	<input type="number" name="y" value="${param.y }"/>
	<input type="submit" value="=" />
	<span>${param.x + param.y }</span>
</form>

</body>
</html>