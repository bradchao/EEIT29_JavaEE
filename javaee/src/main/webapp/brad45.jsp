<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="member" class="tw.brad.myclasses.Member"></jsp:useBean>
<jsp:setProperty property="account" value="mark" name="member"/>
<jsp:setProperty property="realname" value="Mark Chen" name="member"/>
<jsp:setProperty property="age" value="28" name="member"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Brad Big Company</title>
</head>
<body>

Account: <jsp:getProperty property="account" name="member"/><br />
Realname: <jsp:getProperty property="realname" name="member"/><br />
Age: <jsp:getProperty property="age" name="member"/><br />

</body>
</html>