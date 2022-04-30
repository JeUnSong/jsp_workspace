<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="./IsLoggedIn.jsp" %> <!-- ·Î±×ÀÎ È®ÀÎ -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>È¸¿øÁ¦ °Ô½ÃÆÇ</title>
<script type="text/javascript">
function validateForm(form) {  // Æû ³»¿ë °ËÁõ
    if (form.title.value == "") {
        alert("Á¦¸ñÀ» ÀÔ·ÂÇÏ¼¼¿ä.");
        form.title.focus();
        return false;
    }
    if (form.content.value == "") {
        alert("³»¿ëÀ» ÀÔ·ÂÇÏ¼¼¿ä.");
        form.content.focus();
        return false;
    }
=======
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/IsLoggedIn.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>íšŒì› ê²Œì‹œíŒ</title>
<script type="text/javascript">
function validateForm(from) {
	if (form.title.value == ""){
		alert("ì œëª©ì„ ì…ë ¥í•˜ì„¸ìš”.");
		form.title.focus();
		return false;
	}
	if (form.content.value == "") {
		alert("ë‚´ìš©ì„ ì…ë ¥í•˜ì„¸ìš”.");
		form.content.focus();
		return false;
	}
>>>>>>> f3a720c83fd74f37e24da1d9319667c6cfd67a02
}
</script>
</head>
<body>
<<<<<<< HEAD

=======
<jsp:include page="/Common/Link.jsp" />
<h2>íšŒì› ê²Œì‹œíŒ - ê¸€ì“°ê¸°(Write)</h2>
<form name="writeFrm" method="post" action="WriteProcess.jsp" onsubmit="return validateForm(this);">
	<table border="1" width="90%">
		<tr>
			<td>ì œëª©</td>
			<td>
				<input type="text" name="title" style="width: 90%;" />
			</td>
		</tr>
		<tr>
			<td>ë‚´ìš©</td>
			<td>
				<textarea name="content" style="width: 90%; height: 100px;" >>
				</textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit">ì‘ì„± ì™„ë£Œ</button>
				<button type="reset">ë‹¤ì‹œ ì…ë ¥</button>
				<button type="button" onclick="location.href='List.jsp';">ëª©ë¡ ë³´ê¸°</button>
			</td>
		</tr>
	</table>
</form>
>>>>>>> f3a720c83fd74f37e24da1d9319667c6cfd67a02
</body>
</html>