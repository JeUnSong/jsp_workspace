<<<<<<< HEAD
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="./IsLoggedIn.jsp" %> <!-- �α��� Ȯ�� -->
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ���� �Խ���</title>
<script type="text/javascript">
function validateForm(form) {  // �� ���� ����
    if (form.title.value == "") {
        alert("������ �Է��ϼ���.");
        form.title.focus();
        return false;
    }
    if (form.content.value == "") {
        alert("������ �Է��ϼ���.");
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
<title>회원 게시판</title>
<script type="text/javascript">
function validateForm(from) {
	if (form.title.value == ""){
		alert("제목을 입력하세요.");
		form.title.focus();
		return false;
	}
	if (form.content.value == "") {
		alert("내용을 입력하세요.");
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
<h2>회원 게시판 - 글쓰기(Write)</h2>
<form name="writeFrm" method="post" action="WriteProcess.jsp" onsubmit="return validateForm(this);">
	<table border="1" width="90%">
		<tr>
			<td>제목</td>
			<td>
				<input type="text" name="title" style="width: 90%;" />
			</td>
		</tr>
		<tr>
			<td>내용</td>
			<td>
				<textarea name="content" style="width: 90%; height: 100px;" >>
				</textarea>
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<button type="submit">작성 완료</button>
				<button type="reset">다시 입력</button>
				<button type="button" onclick="location.href='List.jsp';">목록 보기</button>
			</td>
		</tr>
	</table>
</form>
>>>>>>> f3a720c83fd74f37e24da1d9319667c6cfd67a02
</body>
</html>