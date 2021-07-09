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
	String num = request.getParameter("n");
	int n = Integer.parseInt(num);
	out.println(n);
%>
</c:catch>
<hr />
${error }

</body>
</html>