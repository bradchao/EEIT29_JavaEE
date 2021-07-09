<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] var1 = {"Brad","John","Mark","Tony"};
	pageContext.setAttribute("username", var1);

	String[] var2 = {"bb","jj","mm","tt"};
	request.setAttribute("username", var2);

	LinkedList<String> list = new LinkedList<>();
	list.add("aaa");list.add("bbb");list.add("ccc");list.add("ddd");
	pageContext.setAttribute("list", list);
	
	HashMap<String,String> map = new HashMap<>();
	map.put("name", "Brad");
	map.put("weight", "80");
	pageContext.setAttribute("map", map);
	
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

${username[1] }: ${requestScope.username[1] }<br />
${list[1] }<br/>
${list[param.i] }<br />
${map["name"] }:${map["weight"]}<br/>
${map.name } : ${map.weight }<br />

</body>
</html>