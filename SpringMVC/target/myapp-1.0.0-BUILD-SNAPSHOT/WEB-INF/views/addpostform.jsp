<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>addpostForm</title>
</head>
<body>
<form action="addok" method="post">
	<table id="edit">
		<tr><td>ī�װ�</td><td><input type="text" name="category"/></td></tr>
		<tr><td>����</td><td><input type="text" name="title"/></td></tr>
		<tr><td>�۾���</td><td><input type="text" name="writer"/></td></tr>
		<tr><td>����</td><td><input type="text" name="content"/></td></tr>
	</table>
	<button type="button" onclick="location.href='list">��Ϻ���</button>
	<button type="submit">����ϱ�</button>
</form>


</body>
</html>