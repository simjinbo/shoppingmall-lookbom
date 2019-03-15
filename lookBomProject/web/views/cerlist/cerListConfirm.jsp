<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 교환/반품확정 --%>
<table align="center" width= 80% cellspacing="0" border="0">
	<tr>
		<th align="left">
			<h1>교환/반품확정</h1>
		</th>
		<td align="right">
			<input type="button" value="전체선택" style="background-color:#666666; color:white; border:0; width:100px; height:40px; border-radius:5px;"> &nbsp;
			<input type="button" value="확정" style="background-color:#666666; color:white; border:0; width:100px; height:40px; border-radius:5px;">
		</td>
	</tr>
<hr>
<table align="center" width= 80% cellspacing="0" border="1">
	<tr>
		<th align="center" bgcolor="#f2f2f2" width="50px"><input type="checkbox" style="width:25px; height:25px"></th>
		<th align="center" bgcolor="#f2f2f2" width="150px">접수번호</th>
		<th align="left" bgcolor="#f2f2f2" width="150px">
			<select style="width:150px">
				<option value="exchange">교환</option>
				<option value="return">반품</option>
			</select>
		</th>
		<th align="center" bgcolor="#f2f2f2">교환/반품 사유</th>
	</tr>
	<tr>
		<td align="center"><input type="checkbox" style="width:25px; height:25px"></td>
		<td>1</td>
		<td>2</td>
		<td>3</td>
	</tr>
</table>
</body>
</html>