<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="./IsLoggedIn.jsp" %> <!-- 로그인 확인 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원제 게시판</title>
<script type="text/javascript">
function validateForm(form) {  // 폼 내용 검증
    if (form.title.value == "") {
        alert("제목을 입력하세요.");
        form.title.focus();
        return false;
    }
    if (form.content.value == "") {
        alert("내용을 입력하세요.");
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
<title>�쉶�썝 寃뚯떆�뙋</title>
<script type="text/javascript">
function validateForm(from) {
	if (form.title.value == ""){
		alert("�젣紐⑹쓣 �엯�젰�븯�꽭�슂.");
		form.title.focus();
		return false;
	}
	if (form.content.value == "") {
		alert("�궡�슜�쓣 �엯�젰�븯�꽭�슂.");
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
<h2>�쉶�썝 寃뚯떆�뙋 - 湲��벐湲�(Write)</h2>
<form name="writeFrm" method="post" action="WriteProcess.jsp" onsubmit="return validateForm(this);">
	<table border="1" width="90%">
		<tr>
			<td>�젣紐�</td>
			<td>
				<input type="text" name="title" style="width: 90%;" />
			</td>
		</tr>
		<tr>
			<td>�궡�슜</td>
			<td>
				<textarea name="content" style="width: 90%; height: 100px;" >>
				</textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit">�옉�꽦 �셿猷�</button>
				<button type="reset">�떎�떆 �엯�젰</button>
				<button type="button" onclick="location.href='List.jsp';">紐⑸줉 蹂닿린</button>
			</td>
		</tr>
	</table>
</form>
>>>>>>> f3a720c83fd74f37e24da1d9319667c6cfd67a02
</body>
</html>