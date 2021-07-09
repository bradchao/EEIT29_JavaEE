<%
	String name = request.getParameter("name");
	if (name == null) name = "nobody";
	String v1 = request.getParameter("key1");
	String v2 = request.getParameter("key2");
%>
Name = <%= name %><br />
Key1 = <%= v1 %><br />
Key2 = <%= v2 %><br />