<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
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

장바구니 상품 수량 수정
<script type="text/javascript">
	//1
	$(function(){
 		$("#update1").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno1").val(),
						productquantity: $("#productquantity1").val() },
				success: function(resultValue){
					$("#productquantity1").val(resultValue);
					//location.href = "/lb/sblist";
				}
			});
		}); //click 
	}); //document.ready
	
	//2
	$(function(){
 		$("#update2").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno2").val(),
						productquantity: $("#productquantity2").val() },
				success: function(resultValue){
					$("#productquantity2").val(resultValue);
				}
			});
		}); //click 
	}); //document.ready
	
	//3
	$(function(){
 		$("#update3").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno3").val(),
						productquantity: $("#productquantity3").val() },
				success: function(resultValue){
					$("#productquantity3").val(resultValue);
				}
			});
		}); //click 
	}); //document.ready  
	
	//4
	$(function(){
 		$("#update4").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno4").val(),
						productquantity: $("#productquantity4").val() },
				success: function(resultValue){
					$("#productquantity4").val(resultValue);
				}
			});
		}); //click 
	}); //document.ready  
	
	//5
	$(function(){
 		$("#update5").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno5").val(),
						productquantity: $("#productquantity5").val() },
				success: function(resultValue){
					$("#productquantity5").val(resultValue);
				}
			});
		}); //click 
	}); //document.ready  
	
	//6
	$(function(){
 		$("#update6").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno6").val(),
						productquantity: $("#productquantity6").val() },
				success: function(resultValue){
					$("#productquantity6").val(resultValue);
				}
			});
		}); //click 
	}); //document.ready  
	
	//7
	$(function(){
 		$("#update7").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno7").val(),
						productquantity: $("#productquantity7").val() },
				success: function(resultValue){
					$("#productquantity7").val(resultValue);
				}
			});
		}); //click 
	}); //document.ready  
	
	//8
	$(function(){
 		$("#update8").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno8").val(),
						productquantity: $("#productquantity8").val() },
				success: function(resultValue){
					$("#productquantity8").val(resultValue);
				}
			});
		}); //click 
	}); //document.ready  
	
	//9
	$(function(){
 		$("#update9").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno9").val(),
						productquantity: $("#productquantity9").val() },
				success: function(resultValue){
					$("#productquantity9").val(resultValue);
				}
			});
		}); //click 
	}); //document.ready  
	
	//10
	$(function(){
 		$("#update10").click(function(){
			$.ajax({
				url: "/lb/sbpquantity",
				type: "get",
				data: { sbno: $("#sbno10").val(),
						productquantity: $("#productquantity10").val() },
				success: function(resultValue){
					$("#productquantity10").val(resultValue);
				}
			});
		}); //click 
	}); //document.ready  
</script>

장바구니 상품 체크 박스
<script type="text/javascript">
	//모두 체크
	function allChk(obj) {
		var chkObj = document.getElementsByName("RowCheck");
		var rowCnt = chkObj.length - 1;
		var check = obj.checked;
		if (check) {
			for (var i = 0; i <= rowCnt; i++) {
				if (chkObj[i].type == "checkbox")
					chkObj[i].checked = true;
			}
		} else {
			for (var i = 0; i <= rowCnt; i++) {
				if (chkObj[i].type == "checkbox") {
					chkObj[i].checked = false;
				}
			}
		}
	}	
</script>

체크 최소 한개 이상
<script type="text/javascript">
	$(function(){
		$("form").submit(function(){
			if($('input[name="RowCheck"]').filter(':checked').length < 1){
				alert("하나 이상의 삭제 상품을 선택해주세요.");
				return false;
			}
		});
	});
</script>

장바구니에 담은 상품 최대 10개까지 가능
<script type="text/javascript">
 	$(function(){
		if($('input[name="RowCheck"]').filter(':checked').length > 10){
			alert("최대 열개의 상품을 담을 수 있습니다.");
			return false;
		}
	});
	 
	$(function(){
		$("#toorder").click(function(){
			if($('input[name="RowCheck"]').filter(':checked').length > 10){
				alert("최대 열개의 상품을 담을 수 있습니다.");
				return false;
			}else{
				location.href = "/lb/index.jsp";
			}
		});
	});
</script>

</script>
</head>
<body>
<%@ include file="../common/header.jsp" %>
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

<table align="center" width= 80% cellspacing="0" border="1" bordercolor="#cccccc">
담긴 상품이 없을 경우
<% if(list.size() == 0){ %>
<tr>
	<td colspan="6" align="center"><br><br><br>
		<h2>장바구니에 담긴 상품이 없습니다.</h2><br><br><br>
	</td>
</tr>
<% }else{ %>
<thead>	
<tr align="center" bgcolor="#f2f2f2" height="50px">
	<th><input type="checkbox" id="allCheck" onclick="allChk(this);" checked></th>
	<th colspan="2">상품 정보</th>
	<th width="90px">수량</th>
	<th>주문금액</th>
	<th>배송비</th>
</tr>
</thead>
장바구니 상품 리스트 출력
<form action="/lb/sbdelete" method="get">
<tbody>
<% int count = 1; %>
<% for(ShoppingBagList sb : list){ %>
<%! int sum = 0; %>
<tr>
	<td align="center"><input type="checkbox" value="<%= sb.getSbNo() %>" name="RowCheck" style="cursor:pointer;" checked></td>
	<td style="width:20vh;height:20vh;"><a href="/lb/pdetail"><img src="<%= sb.getProductImage5() %>" style="width:20vh;height:20vh;"></a></td>
	<td>
		<%= sb.getProductName() %><br>
		옵션 : [color] <%= sb.getProductColor() %>
			 [size] <%= sb.getSbProductSize() %><br>
		가격 : [<%= sb.getDiscountRate() %> %] 
			  <a id="price<%=count %>"><%= sb.getProductPrice() %></a> 원 
	</td>
	<td align="center">
		<input type="hidden" id="sbno<%=count %>" value="<%= sb.getSbNo() %>">
		<input type="number" id="productquantity<%=count %>" value="<%= sb.getSbProductQuantity() %>" style="width:35px; border:1;" min="1" max="10">	
		<input type="button" id="update<%=count %>" value="수정" style="background-color:#666666; color:white; border:0; height:20px; border-radius:5px; cursor:pointer;">
	</td>
	<td align="center"><%= sb.getSbProductQuantity() * sb.getProductPrice() %>원
	<td align="center">3000원</td>
</tr>
<% sum += (sb.getSbProductQuantity() * sb.getProductPrice()); %>
<% count++; %>
<% } %>
</tbody>

장바구니 삭제버튼
<tr height="30px">
	<td colspan="5"  style="border:none"> &nbsp;
	<input type="submit" value="선택상품삭제" style="background-color:#666666; color:white; border:0; border-radius:5px; cursor:pointer;">
	</td>
</tr>
</form>
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
	<td align="center" style="height:100px; font-size:20pt"><%= sum %>원</td>
	<td align="center" style="height:100px; font-size:20pt">3000원</td>
	<td align="center" style="height:100px; font-size:20pt; color:red;"><%= sum+3000 %>원</td>
</tr>
<% sum = 0; %>
</table>
<br>
<div align="center">
<input type="button" value="계속쇼핑하기" onclick="location.href='/lb/index.jsp'" style="background-color:#666666; color:white; border:0; height:40px; border-radius:5px; cursor:pointer;">&nbsp; &nbsp; &nbsp;
<input type="button" id="toorder" value="주문하러가기" onclick="location.href='/lb/sblist'" style="background-color:#666666; color:white; border:0; height:40px; border-radius:5px; cursor:pointer;">
</div>
<br><br><br>
<hr>
<%@ include file="../common/footer.jsp" %>
</body>
</html> --%>