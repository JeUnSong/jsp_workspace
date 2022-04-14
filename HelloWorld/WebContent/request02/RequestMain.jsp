<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
// request객체에 attribute생성
request.setAttribute("id", "hkd");
request.setAttribute("person", new Person("안중근",31));

//RequestForwad.jsp로 전달
request.getRequestDispatcher("RequestForward.jsp?paramHan=한글&paramEng=English").forward(request, response);
%>
</body>
</html>