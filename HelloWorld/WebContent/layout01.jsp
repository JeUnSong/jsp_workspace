<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
        *{padding: 0; margin: 0;}
        #header{
            width: 100%;
            height: 200px;
            background-color: black;
            color: aliceblue;
        }
        #aside{
            width: 250px;
            height: 500px;
            background-color: #ddd;
            float:left;
        }
        #article{
            height: 500px;
        }
    </style>
</head>
<body>
    <div id="header">
        <h1>TIS.Edu</h1>
    </div>
       <%@ include file="nav.jsp" %>
    <div id="aside"></div>

    <div id="article">
        <h3>TIS.Edu</h3>
        <p>TIS.Edu는 정부지원 IT전문 교육기관 입니다.</p>
    </div>
    <%@ include file="footer.jsp" %>
</body>
</html>