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
}
</script>
</head>
<body>

</body>
</html>