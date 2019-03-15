<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, productOrder.model.vo.ProductOrderList" %>
<%
	ArrayList<ProductOrderList> list = (ArrayList<ProductOrderList>)request.getAttribute("list");
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
<script type="text/javascript" src="/lb/resources/js/jquery-3.3.1.min.js"></script>

<script type="text/javascript">
function ordercancel(){
	var message = confirm("정말로 취소하시겠습니까?");
	if(message == true){
		alert("취소되었습니다.");
	}
}

function exchangeReturn(){
	var message = confirm("교환/반품페이지로 이동합니다.");
	if(message == true){
		location.href='/lb/clist';
		$("#review").first().show();
	}else{
		alert("취소되었습니다.")
	}
}

function purchaseConfirm(){
	var message = confirm("정말로 구매를 확정하겠습니까?\n확정 시 취소가 불가능합니다.");
	if(message == true){
		alert("구매가 확정되었습니다 구매해주셔서 감사합니다.");
	/* 	$("#review").show(); */
	}
}

/* $(function(){
	$("[id^=review]").hide();
}); */
</script>


<style type="text/css">
	a:link     {color:#007cd0;text-decoration:none} 
	a:visited  {color:#007cd0;text-decoration:none} 
	a:active   {color:#007cd0;text-decoration:none} 
	a:hover    {color:#0099ff;text-decoration:none} 
</style>
</head>
<body>
<table align="center" width= 80% cellspacing="0" border="0"><tr><th align="left"><h1>주문 내역</h1></th></tr></table>
<hr><br>
<table align="center" width= 80% cellspacing="0" border="1">
	<tr height="70px">
		<th align="center" bgcolor="#f2f2f2"  width="">주문번호</th>
		<th align="center" bgcolor="#f2f2f2" width="">주문일</th>
		<th colspan="2" align="center" bgcolor="#f2f2f2" width="40%">주문내역</th>
		<th align="center" bgcolor="#f2f2f2"  width="">총 결제금액</th>
		<th align="center" bgcolor="#f2f2f2" width="">진행상태</th>
		<th align="center" bgcolor="#f2f2f2" width="">구매결정</th>
		<th align="center" bgcolor="#f2f2f2" width="">리뷰남기기</th>
	</tr>
<% if(list.size() == 0){ %>
	<tr>
	<th colspan="8">
		<hr>
		<br><br>
		<h1 align="center">주문 내역이 없습니다.</h1>
		<br><br>
		<hr>
	</th>
	</tr>
<% }else{ %>
	<% for(ProductOrderList polist : list){ %>
	<tr>
		<th>
			<%= polist.getOrderProductBundle() %> -
			<%= polist.getOrderNo() %>
		</th>
		<th><%= polist.getOrderDate() %></th>
		
		<th width="150px">
			<img src="<%= polist.getProductImage5() %>" style="width:150px;height:150px">
		</th>
		<th align="left">
			<a href="/lb/pdetail" style="cursor:pointer;">
			[상품명] : <%= polist.getProductName() %> <br>
			[옵션] : [color] <%= polist.getProductColor() %> 
				    [size] <%= polist.getOrderProductSize() %> 	<br>
			[가격] : [<%= polist.getDiscountRate() %> %]	
					 <%= polist.getProductPrice() %>원	/	
					 <%= polist.getOrderProductQuantity() %>개	<br>
			</a>
		</th>
		<th><%= polist.getOrderTotalPrice()  %>원</th>
		<th><%= polist.getOrderProgress()  %></th>
		<th width="100px" height="100px">
			<input type="button" value="구매취소" id="oc" onclick="ordercancel()" style="background-color:#666666; color:white; border:0; height:25px; width:80px; border-radius:5px;">
			<input type="button" value="교환/반품" id="er" onclick="exchangeReturn()" style="background-color:#666666; color:white; border:0; height:25px; width:80px; border-radius:5px;">	
			<% if( polist.getOrderProgress().equals("배송완료")) { %>
			<input type="button" value="구매확정" id="pc" onclick="purchaseConfirm()" style="background-color:#666666; color:white; border:0; height:25px; width:80px; border-radius:5px;">
			<% } %>
		</th>
		<th>
			<% if( polist.getOrderDecision().equals("구매확정")) { %>
			<input type="button" value="리뷰" id="review" onclick="location.href='/lb/rwrite'" style="background-color:#666666; color:white; border:0; height:25px; width:50px; border-radius:5px;">
			<% } %>
		</th>
	</tr>
	<% } %>
</table>
<br><br>

<%-- 페이징 처리 --%>
<div align="center">
<% if(currentPage <= 1){ %>
	<button style="background-color:#f2f2f2; color:black; border:0; width:80px; height:30px; border-radius:5px;"> 맨처음 </button>&nbsp;
<% }else{ %>
	<a href="/lb/olist?page=1" style="background-color:#f2f2f2; color:black; border:0; width:80px; height:30px; border-radius:5px;">맨처음</a>&nbsp;
<%} %>
<% if((currentPage - 10) < startPage && (currentPage - 10) > 1){ %>
	<a href="/lb/olist?page=<%= startPage - 10 %>">
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
	<a href="/lb/olist?page=<%= p %>" style="background-color:#f2f2f2; color:black; border:0; width:30px; height:30px; border-radius:5px;"><%= p %></a>				
<% }} %>	
<% if((currentPage + 10) > endPage && (currentPage + 10) < maxPage){ %>
	<a href="/lb/olist?page=<%= endPage + 10 %>" style="background-color:#f2f2f2; color:black; border:0; width:30px; height:30px; border-radius:5px;"> > </a>&nbsp;
<% }else{ %>
	<button style="background-color:#f2f2f2; color:black; border:0; width:30px; height:30px; border-radius:5px;"> > </button>&nbsp;
<% } %>
<% if(currentPage >= maxPage){ %>
	<button style="background-color:#f2f2f2; color:black; border:0; width:80px; height:30px; border-radius:5px;"> 맨끝 </button>
<%}else{ %>
	<a href="/lb/olist?page=<%= maxPage %>" style="background-color:#f2f2f2; color:black; border:0; width:80px; height:30px; border-radius:5px;">맨끝</a>
<% } %>
</div>
<br><br>

<br>
<hr>
<table align="center" width= 80% cellspacing="0" border="0"><tr><th align="left">
<tr>
<th align="right"><br>
	구매취소는 상품 준비단계 전까지 가능합니다.<br>
	구매확정을 할 시, 교환이나 반품은 불가합니다.<br>
	(발송완료 7일 후 자동 구매확정)<br>
	구매확정 이후, 리뷰 작성이 가능합니다.<br>
</th>
</tr>
</table>
<% } %>
</body>
</html>