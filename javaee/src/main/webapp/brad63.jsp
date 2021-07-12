<%@page import="org.json.JSONObject"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedList"%>
<%@page import="org.json.JSONArray"%>
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

<c:import var="data" url="https://data.coa.gov.tw/Service/OpenData/TransService.aspx?UnitId=5KeOVLayyX5Y" />
<%
	String strData = (String)pageContext.getAttribute("data");
	//out.println(strData);
	JSONArray root = new JSONArray(strData);
	
	LinkedList<HashMap<String,String>> data = new LinkedList<>();
	for (int i=0; i<root.length(); i++){
		JSONObject row = root.getJSONObject(i);
		
		HashMap<String,String> map = new HashMap<>();
		map.put("name", row.getString("StationName_Zh_tw"));
		map.put("time", row.getString("ArrivalTime"));
		
		data.add(map);
	}
	
	pageContext.setAttribute("pdata", data);
%>

<table border="1" width="100%">
	<c:forEach items="${pdata }" var="row">
		<tr>
			<td>${row.name }</td>
			<td>${row.time }</td>
		</tr>
	</c:forEach>
</table>

</body>
</html>