<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - request</title>
</head>
<body>
	<ul>
		<li><%=request.getParameter("eng") %></li>
		<li><%=request.getParameter("han") %></li>
	</ul>
</body>
</html>