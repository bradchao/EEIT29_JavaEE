<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>


<%
	// session, 自訂 taglib => 錄影 => 這兩天
	String account = request.getParameter("account");
	String passwd = request.getParameter("passwd");
	if (account.equals("brad") && passwd.equals("123")){
		session.setAttribute("account", account);
		session.setAttribute("passwd", passwd);
		response.sendRedirect("brad67.jsp");
	}else{
		session.invalidate();
		response.sendRedirect("brad65.jsp");
	}
%>

</body>
</html>