<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie</title>
</head>
<body>
	<h2>1. 쿠키(Cookie) 설정</h2>
	<%
	Cookie cookie = new Cookie("myCookie", "맛있어요"); // 쿠키생성
	cookie.setPath(request.getContextPath()); // 경로로 컨텍스트 루트로 설정
	cookie.setMaxAge(3600);
	response.addCookie(cookie);
	
	// memory cookie. 잠시 메모리에 생성되었다가 접속이 끊어지면 자동소멸됨
	Cookie cookie2 = new Cookie("myCookie2", "맛있어요2"); // 쿠키생성
	response.addCookie(cookie2);
	
	%>
	
	<h2>2. 쿠키 설정 직후 쿠키값 확인하기</h2>
	<%
	Cookie[] cookies = request.getCookies(); // 요청 헤더의 모든 쿠키 얻기
	if (cookies != null) {
		for (Cookie c : cookies) {
			String cookieName = c.getName();
			String cookieValue = c.getValue();
		}
	}
	%>
	
	<h2>3. 페이지 이동 후 쿠키값 확인하기</h2>
	<a href="CookieResult.jsp">
		다음 페이지에서 쿠키값 확인하기
	</a>

</body>
</html>