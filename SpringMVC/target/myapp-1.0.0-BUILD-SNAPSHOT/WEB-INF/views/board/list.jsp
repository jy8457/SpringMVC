<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>BoardList Page</title>

<style>
button{
   border: none;
   color: white;
   font-size:16px;
   background-color:#db0759;
   font-weight: 200;
   }
#list {
   background-color: white;
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}
#list td, #list th {
  border: 1px solid #ddd;
  padding: 8px;
  text-align:center;
}
#list tr:nth-child(even){background-color: #f2f2f2;}
#list tr:hover {background-color: #ddd;}
#list th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: center;
  background-color: #db0759;
  border: 1px solid #db0759;
  color: white;
}</style>
<script>
   function delete_ok(id){
      var a = confirm("������ �����ϰڽ��ϱ�?");
      if(a) location.href='deleteok/' + id;
   }
</script>
</head>
<body bgcolor=#000000;>

<table id="list" width="90%" >
<tr>
   <th>seq</th>
   <th>Category</th>
   <th>Title</th>
   <th>writer</th>
   <th>Content</th>
   <th>Regdate</th>
   <th>Edit</th>
   <th>Delete</th>
</tr>
<c:forEach items="${list}" var="u">
	<tr>
		<td>${u.seq}</td>
		<td>${u.category}</td>
		<td>${u.title}</td>
		<td>${u.writer}</td>
		<td>${u.content}</td>
		<td>${u.regdate}</td>
		<td><a href="editform/${u.seq}">�ۼ���</a></td>
		<td><a href="javascript:delete_ok('${u.seq}')">�ۻ���</a></td>
	</tr>
</c:forEach>
</table>   
<br/><button type="button" onclick="location.href='add'">���۾���</button>
</body>
</html>