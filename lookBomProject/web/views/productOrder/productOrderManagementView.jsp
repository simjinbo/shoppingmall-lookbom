<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, productOrder.model.vo.ProductOrder" %>
<%
	ArrayList<ProductOrder> list = (ArrayList<ProductOrder>)request.getAttribute("list");
	int listCount = ((Integer)request.getAttribute("listCount")).intValue();
	int startPage = ((Integer)request.getAttribute("startPage")).intValue();
	int endPage = ((Integer)request.getAttribute("endPage")).intValue();
	int maxPage = ((Integer)request.getAttribute("maxPage")).intValue();
	int currentPage = ((Integer)request.getAttribute("currentPage")).intValue();
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lookBom</title>
</head>
<body>
<%-- 주문정보관리게시판 --%>
<table align="center" width= 80% cellspacing="0" border="0">
	<tr>
		<th align="left">
			<h1>주문정보관리게시판</h1>
		</th>
<%-- 검색기능 --%>
		<td>
			<div align="right">
				<select style="width:150px;height:50px; font-size:15pt; border-radius:5px;">
					<option name="item" value="orderNo" selected>주문번호</option>
					<option name="item" value="orderDate">주문일</option>
					<option name="item" value="userNo">고객번호</option>
					<option name="item" value="orderType">결제방식</option>
					<option name="item" value="orderProgress">진행상태</option>
				</select>
			</div>		
		</td>
	</tr>
<hr>



<table align="center" width= 80% cellspacing="0" border="1">
	<tr>
		<th align="center" bgcolor="#f2f2f2">주문번호</th>
		<th align="center" bgcolor="#f2f2f2">주문일</th>
		<th align="center" bgcolor="#f2f2f2">고객번호</th>
		<th align="center" bgcolor="#f2f2f2" width="30%">주문내역</th>
		<th align="center" bgcolor="#f2f2f2">결제방식</th>
		<th align="center" bgcolor="#f2f2f2">총결제금액</th>
		<th align="center" bgcolor="#f2f2f2">배송비</th>
		<th align="center" bgcolor="#f2f2f2">진행상태</th>
		<th align="center" bgcolor="#f2f2f2">취소/교환/반품</th>
	</tr>
<% for(ProductOrder po : list) {%>		
	<tr>
		<td align="center"><%= po.getOrderNo() %></td>
		<td align="center"><%= po.getOrderDate()  %></td>
		<td align="center"><%= po.getUserNo() %></td>
		<td align="center"><%= po.getProductDetailNo() %></td>
		<td align="center"><%= po.getPaymentType() %></td>
		<td align="center"><%= po.getOrderTotalPrice() %></td>
		<td align="center"><%= po.getShippingCharge()  %></td>
		<td align="center"><%= po.getOrderDecision() %></td>
		<td align="center"></td>
	</tr>
<% } %>	
</table><br>
<br>

<%-- 페이징 처리 --%>
<div align="center">
<% if(currentPage <= 1){ %>
	<button style="background-color:#f2f2f2; color:black; border:0; width:80px; height:30px; border-radius:5px;"> 맨처음 </button>&nbsp;
<% }else{ %>
	<a href="/lb/omlist?page=1" style="background-color:#f2f2f2; color:black; border:0; width:80px; height:30px; border-radius:5px;">맨처음</a>&nbsp;
<%} %>
<% if((currentPage - 10) < startPage && (currentPage - 10) > 1){ %>
	<a href="/lb/omlist?page=<%= startPage - 10 %>">
		<button style="background-color:#f2f2f2; color:black; border:0; width:30px; height:30px; border-radius:5px;"> < </button>
	</a>
<% }else{ %>
	<button style="background-color:#f2f2f2; color:black; border:0; width:30px; height:30px; border-radius:5px;"> < </button>
<% } %>
<%-- 현재 페이지가 포함된 페이지 그룹 숫자 출력처리 --%>
<% for(int p = startPage; p <= endPage; p++){ 
	if(p == currentPage){ %>
		<button style="background-color:#4ddbff; color:white; border:0; width:30px; height:30px; border-radius:5px;"><%= p  %></button>
<% }else{ %>
	<a href="/lb/omlist?page=<%= p %>" style="background-color:#f2f2f2; color:black; border:0; width:30px; height:30px; border-radius:5px;"><%= p %></a>				
<% }} %>	
<% if((currentPage + 10) > endPage && (currentPage + 10) < maxPage){ %>
	<a href="/lb/omlist?page=<%= endPage + 10 %>" style="background-color:#f2f2f2; color:black; border:0; width:30px; height:30px; border-radius:5px;"> > </a>&nbsp;
<% }else{ %>
	<button style="background-color:#f2f2f2; color:black; border:0; width:30px; height:30px; border-radius:5px;"> > </button>&nbsp;
<% } %>
<% if(currentPage >= maxPage){ %>
	<button style="background-color:#f2f2f2; color:black; border:0; width:80px; height:30px; border-radius:5px;"> 맨끝 </button>
<%}else{ %>
	<a href="/lb/omlist?page=<%= maxPage %>" style="background-color:#f2f2f2; color:black; border:0; width:80px; height:30px; border-radius:5px;">맨끝</a>
<% } %>
</div>
</body>
</html>