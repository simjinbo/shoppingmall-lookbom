<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*,productOrder.model.vo.ProductOrder,user.model.vo.lookBomUser, product.model.vo.Product, product.model.vo.ProductDetail"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>lookBom</title>

</head>
<body>
<%-- <%@ include file="../common/header.jsp" %> --%>
<hr style="clear:both;">
<br><br>
<div align="center">
<h4 style="display:inline; color:#f2f2f2">01 SHOPPING BAG</h4>
<h4 style="display:inline; font-weight:bold"> > </h4>
<h4 style="display:inline">02 ORDER</h4>
<h4 style="display:inline; font-weight:bold"> > </h4>
<h4 style="display:inline; color:#cccccc">03 ORDER CONFIRMED</h4>
</div>
<br>
<hr>
<br>
<table align="center" width= 80% cellspacing="0" border="0"><tr><th align="left">주문자 정보</th></tr></table>
<table align="center" width= 80% cellspacing="0" border="1" bordercolor="#cccccc">
<tr>
	<th align="center" bgcolor="#f2f2f2" height="50px" width="120px">주문자</th>
	<td></td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="50px">연락처</th>
	<td></td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="50px">이메일</th>
	<td></td>
</tr>
</table>
<br><br>


<table align="center" width= 80% cellspacing="0" border="0"><tr><th align="left">배송지 정보</th></tr></table>
<table align="center" width= 80% cellspacing="0" border="0">
<tr>
	<th align="left"><button >기존배송지</button><button>신규배송지</button></th>
</tr>
</table>
<table table align="center" width= 80% cellspacing="0" border="1" bordercolor="#cccccc">
<tr>
	<th align="center" bgcolor="#f2f2f2" height="30px" width="120px">배송지명</th>
	<td><input type="text"></td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="30px" width="120px">수령인</th>
	<td></td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="30px" width="120px">배송지</th>
	<td></td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="30px" width="120px"></th>
	<td></td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="30px" width="120px"></th>
	<td></td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="30px" width="120px">연락처</th>
	<td></td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="30px" width="120px">배송시요청사항</th>
	<td>
		<select>
			<option value="default">배송시 요청 사항을 선택해주세요</option>
			<option value="directInput">직접입력</option>
			<option value="absent">부재시 문앞에 놓고 가주세요</option>
			<option value="callme">부재시 연락주세요</option>
		</select>
	</td>
</tr>
</table>
<table table align="center" width= 80% cellspacing="0" border="1" bordercolor="#cccccc">
<tr>
	<th align="center" bgcolor="#f2f2f2" height="30px" width="120px">배송지명</th>
	<td><input type="text"></td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="30px" width="120px">수령인</th>
	<td><input type="text"></td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="30px" width="120px">배송지</th>
	<td>주소지 api</td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="30px" width="120px"></th>
	<td></td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="30px" width="120px"></th>
	<td></td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="30px" width="120px">연락처</th>
	<td><input type="phone"></td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="30px" width="120px">배송시요청사항</th>
	<td>
		<select>
			<option value="default">배송시 요청 사항을 선택해주세요</option>
			<option value="directInput">직접입력</option>
			<option value="absent">부재시 문앞에 놓고 가주세요</option>
			<option value="callme">부재시 연락주세요</option>
		</select>
	</td>
</tr>
</table>
<br><br>


<table align="center" width= 80% cellspacing="0" border="0"><tr><th align="left">포인트사용</th></tr></table>
<table table align="center" width= 80% cellspacing="0" border="1" bordercolor="#cccccc">
<tr>
	<th align="center" bgcolor="#f2f2f2" height="30px" width="120px">사용가능한 포인트</th>
	<td></td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="30px" width="120px">사용할 포인트</th>
	<td><input type="number"></td>
</tr>
</table>
<br><br>


<table align="center" width= 80% cellspacing="0" cellpadding="0" border="0">
<tr>
	<td width = 15%><h4>주문상품 정보/n개</h4></td>
	<td width = 45%></td>
	<td width = 40%></td>
</tr>
<%-- <%
 	for(ProductOrder o : list) {
 %> --%>
<tr>
	 <td rowspan="5" align="left"><img src="/lb/resources/images/iu.jpg" height="150" width="150"></td>
	 <td>[]</td>
</tr>
<tr>
	<td>옵션 : [color]</td>
</tr>
<tr>
	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		[size]</td>
</tr>
<tr>
	<td>가격 : []</td>
</tr>
<tr>
	<td>수량 : </td>
</tr>
<%-- <% } %> --%>
</table>

<br><br><br>
<table align="center" width= 80% cellspacing="0" border="1" bordercolor="#cccccc">
<tr >
	<th align="center" bgcolor="#f2f2f2" height="50px" width="150px">총 주문 금액</th>
	<td align="center"></td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="50px" width="150px">배송비</th>
	<td align="center"></td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="50px" width="150px">포인트 사용</th>
	<td align="center"></td>
</tr>
<tr>
	<th align="center" bgcolor="#f2f2f2" height="50px" width="150px" style="color:red">총 결제금액</th>
	<td align="center" style="color:red"></td>
</tr>
</table>
<br><br>
<table align="center" width="80%" cellspacing="0" border="0">
<tr>
	<th align="left" height="50">결제 방법</th>
	<td></td>
</tr>
<tr>
	<th align="left"><button style="background-color:#4ddbff; color:white; border:0; width:120px; height:30px; border-radius:5px;">신용카드</button>&nbsp;
		<button style="background-color:#4ddbff; color:white; border:0; width:120px; height:30px; border-radius:5px;">무통장입금</button>&nbsp;
		<button style="background-color:#4ddbff; color:white; border:0; width:120px; height:30px; border-radius:5px;">카카오페이</button></th>
	<td></td>
</tr>
</table>
<br><br><br>
<div align="center">
<input type="checkbox">주문하실 상품 및 결제, 주문정보 확인하였으며 이에 동의합니다.(필수) <br><br>
<button style="background-color:#666666; color:white; border:0; height:40px; border-radius:5px;">결제하러 가기</button>
</div>
<br><br><br>
<hr>
<%-- <%@ include file="../common/footer.jsp" %> --%>
</body>
</html>