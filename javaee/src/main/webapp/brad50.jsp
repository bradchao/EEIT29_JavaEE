<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String method = request.getMethod();
	out.println(method + "<br />");
	
	// 隱含物件 : pageContext has-a request(ServletRequest)
	HttpServletRequest hsr = (HttpServletRequest)pageContext.getRequest();
	
	String ip = request.getRemoteAddr();
	out.println(ip + "<br />");
	
	String lang = response.getLocale().getDisplayLanguage();
	out.println(lang + "<br />");
	// 老師 paramValues.hobby[0] 這個可以再說一次嗎?
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

1. ${param.account }<br />
2. ${param.passwd }<br />
3. ${paramValues.hobby[0] }<br >
3. ${paramValues.hobby[1] }<br >
3. ${paramValues.hobby[2] }<br >
3. ${paramValues.hobby[3] }<br >
<hr />
${pageContext.request.method }<br />
${pageContext.request.remoteAddr }<br />
${pageContext.request.locale.displayLanguage }

</body>
</html>