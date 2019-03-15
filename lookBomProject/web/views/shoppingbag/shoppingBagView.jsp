<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, shoppingbag.model.vo.ShoppingBagList" %>
<%
	ArrayList<ShoppingBagList> list = (ArrayList<ShoppingBagList>)request.getAttribute("list");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lookBom</title>
<script type="text/javascript" src="/lb/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		//1
		$("#minus1").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno1").val(),
						productquantity: $("#sbpquantity1").val(), 
						cal: -1 },
				success: function(resultValue){
					$("#sbpquantity1").val(resultValue);
				}
			});
		}); //click
		
		$("#plus1").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno1").val(),
						productquantity: $("#sbpquantity1").val(), 
						cal: +1 },
				success: function(resultValue){
					$("#sbpquantity1").val(resultValue);
				}
			});
		}); //click
		
		
		//2
		$("#minus2").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno2").val(),
						productquantity: $("#sbpquantity2").val(), 
						cal: -1 },
				success: function(resultValue){
					$("#sbpquantity2").val(resultValue);
				}
			});
		}); //click
		
		$("#plus2").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno2").val(),
						productquantity: $("#sbpquantity2").val(), 
						cal: +1 },
				success: function(resultValue){
					$("#sbpquantity2").val(resultValue);
				}
			});
		}); //click
		
		
		//3
		$("#minus3").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno3").val(),
						productquantity: $("#sbpquantity3").val(), 
						cal: -1 },
				success: function(resultValue){
					$("#sbpquantity3").val(resultValue);
				}
			});
		}); //click
		
		$("#plus3").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno3").val(),
						productquantity: $("#sbpquantity3").val(), 
						cal: +1 },
				success: function(resultValue){
					$("#sbpquantity3").val(resultValue);
				}
			});
		}); //click
		
		
		//4
		$("#minus4").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno4").val(),
						productquantity: $("#sbpquantity4").val(), 
						cal: -1 },
				success: function(resultValue){
					$("#sbpquantity4").val(resultValue);
				}
			});
		}); //click
		
		$("#plus4").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno4").val(),
						productquantity: $("#sbpquantity4").val(), 
						cal: +1 },
				success: function(resultValue){
					$("#sbpquantity4").val(resultValue);
				}
			});
		}); //click
		
		
		//5
		$("#minus5").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno5").val(),
						productquantity: $("#sbpquantity5").val(), 
						cal: -1 },
				success: function(resultValue){
					$("#sbpquantity5").val(resultValue);
				}
			});
		}); //click
		
		$("#plus5").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno5").val(),
						productquantity: $("#sbpquantity5").val(), 
						cal: +1 },
				success: function(resultValue){
					$("#sbpquantity5").val(resultValue);
				}
			});
		}); //click
		
		
		//6
		$("#minus6").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno6").val(),
						productquantity: $("#sbpquantity6").val(), 
						cal: -1 },
				success: function(resultValue){
					$("#sbpquantity6").val(resultValue);
				}
			});
		}); //click
		
		$("#plus6").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno6").val(),
						productquantity: $("#sbpquantity6").val(), 
						cal: +1 },
				success: function(resultValue){
					$("#sbpquantity6").val(resultValue);
				}
			});
		}); //click
		
		
		//7
		$("#minus7").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno7").val(),
						productquantity: $("#sbpquantity7").val(), 
						cal: -1 },
				success: function(resultValue){
					$("#sbpquantity7").val(resultValue);
				}
			});
		}); //click
		
		$("#plus7").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno7").val(),
						productquantity: $("#sbpquantity7").val(), 
						cal: +1 },
				success: function(resultValue){
					$("#sbpquantity7").val(resultValue);
				}
			});
		}); //click
		
		
		//8
		$("#minus8").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno8").val(),
						productquantity: $("#sbpquantity8").val(), 
						cal: -1 },
				success: function(resultValue){
					$("#sbpquantity8").val(resultValue);
				}
			});
		}); //click
		
		$("#plus8").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno8").val(),
						productquantity: $("#sbpquantity8").val(), 
						cal: +1 },
				success: function(resultValue){
					$("#sbpquantity8").val(resultValue);
				}
			});
		}); //click
		
		
		//9
		$("#minus9").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno9").val(),
						productquantity: $("#sbpquantity9").val(), 
						cal: -1 },
				success: function(resultValue){
					$("#sbpquantity9").val(resultValue);
				}
			});
		}); //click
		
		$("#plus9").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno9").val(),
						productquantity: $("#sbpquantity9").val(), 
						cal: +1 },
				success: function(resultValue){
					$("#sbpquantity9").val(resultValue);
				}
			});
		}); //click
		
		
		//10
		$("#minus10").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno10").val(),
						productquantity: $("#sbpquantity10").val(), 
						cal: -1 },
				success: function(resultValue){
					$("#sbpquantity10").val(resultValue);
				}
			});
		}); //click
		
		$("#plus10").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno10").val(),
						productquantity: $("#sbpquantity10").val(), 
						cal: +1 },
				success: function(resultValue){
					$("#sbpquantity10").val(resultValue);
				}
			});
		}); //click
		
		
	}); //document.ready
</script>

</head>
<body>
<%-- <%@ include file="../common/header.jsp" %> --%>
<hr style="clear:both;">
<br><br>
<div align="center">
<h4 style="display:inline">01 SHOPPING BAG</h4>
<h4 style="display:inline; font-weight:bold"> > </h4>
<h4 style="display:inline; color:#cccccc">02 ORDER</h4>
<h4 style="display:inline; font-weight:bold"> > </h4>
<h4 style="display:inline; color:#f2f2f2">03 ORDER CONFIRMED</h4>
</div>
<br>
<hr>
<br>
<form action="/lb/sbtopo" method="post">
<table align="center" width= 80% cellspacing="0" border="1" bordercolor="#cccccc">
<% if(list.size() == 0){ %>
<tr>
	<td colspan="6" align="center"><br><br><br>
		<h2>장바구니에 담긴 상품이 없습니다.</h2><br><br><br>
	</td>
</tr>
<% }else{ %>	
<tr align="center" bgcolor="#f2f2f2" height="50px">
	<th><input type="checkbox" checked></th>
	<th colspan="2">상품 정보</th>
	<th width="90px">수량</th>
	<th>주문금액</th>
	<th>배송비</th>
</tr>
<% int count = 1; %>
<% for(ShoppingBagList sb : list){ %>
<tr>
	<td align="center"><input type="checkbox" checked></td>
	<td style="width:20vh;height:20vh;"><img src="<%= sb.getProductImage5() %>" style="width:20vh;height:20vh;"></td>
	<td>
		<%= sb.getProductName() %><br>
		옵션 : [color] <%= sb.getProductColor() %>
			 [size] <%= sb.getSbProductSize() %><br>
		가격 : [<%= sb.getDiscountRate() %> %] <%= sb.getProductPrice() %> 원 
	</td>
	<td align="center">
		<input type="hidden" id="sbno<%=count %>" value="<%= sb.getSbNo() %>">
		<input type="button" id="minus<%=count %>" value="-">
		<input type="text"  id="sbpquantity<%=count %>" value="<%= sb.getSbProductQuantity() %>" style="width:30px; border:0;">
		<input type="button" id="plus<%=count %>" value="+">

	</td>
	<td align="center"><input type="text" id="orderprice<%=count %>" value="<%= sb.getSbProductQuantity() * sb.getProductPrice() %>" style="width:30px; border:0;">원</td>
	<td align="center">3000</td>
</tr>
<% count++; %>
<% } %>
<tr height="30px">
	<td colspan="5"  style="border:none">
	&nbsp;<input type="button" value="선택상품삭제" style="background-color:#666666; color:white; border:0; border-radius:5px;">
	<input type="button" value="전체상품삭제" style="background-color:#666666; color:white; border:0; border-radius:5px;">
	</td>
</tr>
<% } %>
</table> 
<br><br><br>
<table align="center" width= 80% cellspacing="0" border="1" bordercolor="#cccccc">
<tr align="center" bgcolor="#f2f2f2" height="50px">
	<th>총 주문 금액</th>
	<th>배송비</th>
	<th>총 결제금액</th>
</tr>
<tr>
	<td></td>
	<td align="center">3000</td>
	<td></td>
</tr>
</table>
<br>
<div align="center">
<input type="button" value="계속쇼핑하기" style="background-color:#666666; color:white; border:0; height:40px; border-radius:5px;">&nbsp; &nbsp; &nbsp;
<input type="submit" value="주문하러가기" style="background-color:#666666; color:white; border:0; height:40px; border-radius:5px;">
</div>
</form>
<br><br><br>
<hr>
<%-- <%@ include file="../common/footer.jsp" %> --%>
</body>
</html>