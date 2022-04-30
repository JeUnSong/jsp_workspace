<%@ page import="model1.board.BoardDAO" %>
<%@ page import="model1.board.BoardDTO" %>
<%@ page import="utils.CookieManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String num = request.getParameter("num"); // 일련번호 받기
BoardDAO dao = new BoardDAO(application); // DAO 생성
BoardDTO dto = dao.selectView(num);       // 게시물 가져오기



Cookie[] cookies = request.getCookies();
int visitor = 0;

for(Cookie cookie : cookies) {
	if(cookie.getName().equals("visit")){
		visitor = 1;
	}
}
if(visitor == 0){
	Cookie cookie1 = new Cookie("visit", "중복");
	cookie1.setPath("View.jsp?num="+dto.getNum());
	response.addCookie(cookie1);
	dao.updateVisitCount(num);				  // 조회수 증가
}else{
	System.out.println("중복조회");
}
dao.close();							  // DB 연결 해제
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 게시판</title>
<script>
function deletePost() {
	var confirmed = confirm("정말로 삭제 하시겠습니까?");
	if (confirmed) {
		var form = document.writeFrm;
		form.method = "post";
		form.action = "DeleteProcess.jsp";
		form.submit();
	}
}
</script>
</head>
<body>
<jsp:include page="/Common/Link.jsp" />
<h2>회원 게시판 - 상세보기 (View)</h2>
<form name="writeFrm">
	<input type="hidden" name="num" value="<%= num %>" />
	<table border="1" width="90%">
		<tr>
			<td>번호</td>
			<td><%= dto.getNum() %></td>
			<td>작성자</td>
			<td><%= dto.getName() %></td>
		</tr>
		<tr>
			<td>작성일</td>
			<td><%= dto.getPostdate() %></td>
			<td>조회수</td>
			<td><%= dto.getVisitcount() %></td>
		</tr>
		<tr>
			<td>제목</td>
			<td colspan="3"><%= dto.getTitle() %></td>
		</tr>
		<tr>
			<td>내용</td>
			<td colspan="3" height="100"><%= dto.getContent().replace("\r\n","<br/>") %></td>
		</tr>
		<tr>
			<td colspan="4" align="center">
				<%
				if (session.getAttribute("UserId") != null
				    && session.getAttribute("UserId").toString().equals(dto.getId())) {
				%>
				<button type="button"
				        onclick="location.href='Edit.jsp?num=<%= dto.getNum() %>';"> 수정하기</button>
				<button type="button" onclick="deletePost();">삭제하기</button>
				<%
				}
				%>
				<button type="button" onclick="location.href='List.jsp';">
				목록보기
				</button>
			</td>
		</tr>
	</table>
</form>
</body>
</html>