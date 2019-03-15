<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="cerlist.model.vo.CerList, java.util.*" %>
<%
	ArrayList<CerList> list = (ArrayList<CerList>)request.getAttribute("list");
%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lookBom</title>
<script type="text/javascript" src="/lb/resources/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
$(function(){
	$("#cerRequest").hide();
	$("input[type=button]").eq(0).click(function(){
		$("#cerRequest").first().toggle(1000);
	});
});	
</script>
</head>
<body>
<table align="center" width= 80% cellspacing="0" border="0"><tr><th align="left"><h1>취소/교환/반품 내역</h1></th></tr></table>
<hr>
<table align="center" width= 80% cellspacing="0" border="1">
	<tr height="70px">
		<th align="center" bgcolor="#f2f2f2"  width="">접수번호</th>
		<th align="center" bgcolor="#f2f2f2" width="">접수일</th>
		<th align="center" bgcolor="#f2f2f2" width="50%">주문내역</th>
		<th align="center" bgcolor="#f2f2f2"  width="">취소/교환/반품 종류</th>
		<th align="center" bgcolor="#f2f2f2" width="">접수상태</th>
	</tr>
<% if(list.size() == 0){ %>
	<tr>
	<th colspan="5">
		<hr>
		<br><br>
		<h1 align="center">취소/교환/반품 내역이 없습니다.</h1>
		<br><br>
		<hr>
	</th>
	</tr>
<% }else{ %>
	<tr align="center">
	<a>
		<td>1</td>
		<td>2</td>
		<td>3</td>
		<td>4</td>
		<td>5</td>
	</a>	
	</tr>
<% } %>
</table>
<br><br>
<table align="center" width= 80% cellspacing="0" border="0">
<tr>
	<th align="left"><h1>교환/반품 신청</h1></th>
	<td align="right">
		<input type="button" value="신청하기" style="background-color:#666666; color:white; border:0; width:200px; height:40px; border-radius:5px; cursor:pointer;">
	</td>
</tr>
</table>
<div id="cerRequest">
<form action="/lb/cerinsert" method="post">
<hr><br>
<table align="center" width= 80% cellspacing="0" border="1">
	<tr>
		<th align="center" bgcolor="#f2f2f2" width="120px">주문번호</th>
		<td></td>
	</tr>
	<tr height="100px">
		<th align="center" bgcolor="#f2f2f2">주문내역</th>
		<td></td>
	</tr>
	<tr>
		<th align="center" bgcolor="#f2f2f2">교환/반품 종류</th>
		<td>
			<select>
				<option value="default" selected>신청 종류를 선택해주세요</option>
				<option value="exchange">교환</option>
				<option value="return">반품</option>
			</select>
		</td>
	</tr>
	<tr>
		<th align="center" bgcolor="#f2f2f2">접수제목</th>
		<td><input type="text" placeholder="[교환/반품 종류]간략한 사유를 적어주세요 ex) [교환]사이즈 문제" style="width:450px;"></td>
	</tr>
	<tr>
		<th align="center" bgcolor="#f2f2f2">접수내용</th>
		<td><textarea rows="10" cols="70"></textarea></td>
	</tr>
</table>
<br>
<table align="center" border="0">	
	<tr>
		<td colspan="2">
			<input type="submit" value="신청하기" style="background-color:#666666; color:white; border:0; width:100px; height:40px; border-radius:5px;"> &nbsp;
			<input type="reset" value="입력 취소" style="background-color:#666666; color:white; border:0; width:100px; height:40px; border-radius:5px;"> &nbsp;
		</td>
	</tr>
</table>
</form>
</div>


</body>
</html>