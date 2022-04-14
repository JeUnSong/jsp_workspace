
<%@ page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - request</title>
</head>
<body>
	<h2>3. 요청 헤더 출력하기</h2>
	<%
	Enumeration headers = request.getHeaderNames();
	while (headers.hasMoreElements()) {
		String headerName = (String)headers.nextElement();
		String headerValue = request.getHeader(headerName);
		out.print("헤더명 : " + headerName + ", 헤더값 : " + headerValue + "<br/>");
	}
	%>
	<h3><%=request.getHeader("user-agent") %></h3>
	<h3><%=request.getHeader("referer") %></h3>
	<h3><%=request.getHeader("cookie") %></h3>
	<p>이 파일을 직접 실행하면 referer 정보는 출력되지 않습니다.</p>
</body>
</html>