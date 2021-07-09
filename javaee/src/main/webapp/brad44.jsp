<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	String k1 = (String)request.getAttribute("k1");
	String k2 = (String)request.getAttribute("k2");
%>
Name = <%= name %><br>
K1 = <%= k1 %><br>
K2 = <%= k2 %><br>