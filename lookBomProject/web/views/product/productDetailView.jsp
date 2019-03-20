<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="productError.jsp"%>
<%@ page import="product.model.vo.ProductFull, user.model.vo.LookBomUser, java.util.ArrayList" %>
<%
    ArrayList<ProductFull> list = (ArrayList<ProductFull>)request.getAttribute("list"); 

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lookbom</title> 
<script type="text/javascript" src="/lb/resources/js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
function shoppingbag() {
location.href ="/lb/pshoppingbag?pno="+$("#pno").val()+"&pdno="+$("#pdno").val()
		      +"&size="+$("#size").val()+"&quantity="+$("#quantity").val();
	}
function order() {
	location.href = "/lb/poder?pno="+$("#pno").val()+"&pdno="+$("#pdno").val()
    +"&size="+$("#size").val()+"&quantity="+$("#quantity").val();
	} 

</script>
</head>
<body>
<h2 align="center">상품상세페이지 입니다.</h2>

<table align="center" width="1000" border="1px solid #bcbcbc">
<form name="productoption" id="productoption" method="get" >
<input type="hidden"  name="pno"  id="pno"  value="<%=list.get(0).getProductNo()%>">
<input type="hidden"  name="pdno"  id="pdno" value="<%=list.get(0).getProductDetailNo()%>">
<tr height="520">
<th width="600">
<table width="600" border="1px solid #bcbcbc">
<tr height="40"><th colspan="2"><div name="brandimage" id="brandimgae"><img width="100%" height="100%" src="/lb/file/product/<%= list.get(0).getBrand_image() %>" ></div></th></tr>
<tr height="120"><th width="130"><div name="productimage2" id="productimage2"><img width="100%" height="100%" src="/lb/file/product/<%= list.get(0).getProductImage2() %>" ></div></th><th width="470" rowspan="4"><div name="productimage1" id="productimage1"><img width="100%" height="100%" src="/lb/file/product/<%= list.get(0).getProductImage1() %>" ></div></th></tr>
<tr height="120"><th><div name="productimage3" id="productimage3"><img width="100%" height="100%" src="/lb/file/product/<%= list.get(0).getProductImage3() %>" ></div></th></tr>
<tr height="120"><th><div name="productimage4" id="productimage4"><img width="100%" height="100%" src="/lb/file/product/<%= list.get(0).getProductImage4() %>" ></div></th></tr>
<tr height="120"><th><div name="productimage5" id="productimage5"><img width="100%" height="100%" src="/lb/file/product/<%= list.get(0).getProductImage5() %>" ></div></th></tr>
</table>
</th>
<th width="400">
<table width="400" border="1px solid #bcbcbc">
<tr height="45"><th colspan="4">상품정보</th></tr>
<tr height="30"><th >상품명</th><td colspan="3"><%=list.get(0).getProductName() %></td></tr>
<tr height="30"><th width="100">브랜드</th><td width="100"><%= list.get(0).getBrand() %></td><th width="100">품번</th><td width="100"><%= list.get(0).getProductNo() %></td></tr>
<tr height="30"><th>시즌</th><td><%= list.get(0).getSeason() %></td><th>성별</th><td><%= list.get(0).getSex() %></td></tr>
<tr height="30"><th>조회수</th><td><%= list.get(0).getViewCount() %></td><th>총판매량</th><td><%= list.get(0).getTotalSaleRate()%></td></tr>
<tr height="45"><th colspan="4">가격정보</th></tr>
<tr height="30"><th>판매가</th><td colspan="3"><%= list.get(0).getProductPrice()%></td></tr>
<tr height="30"><th>할인률</th><td colspan="3"><%= list.get(0).getDiscountRate() %></td></tr>
<tr height="30"><th>할인된 가격</th><td colspan="3"><%= (int)(list.get(0).getProductPrice()-(list.get(0).getProductPrice()*list.get(0).getDiscountRate())) %></td></tr>
<tr height="45"><th colspan="4">색상</th></tr>
<tr height="60">
<%  for(int i=0;i<list.size();i++){       
%>
<th><button name="productcolor"  id="productcolor" style="width:30px;height:30px;background-color:<%=list.get(i).getProductColor()%>;"></button></th>
<% } %>
</tr>
<tr height="50">
<th colspan="2">사이즈 :
<input type="text" name="size" id="size" list="sizelist" size="10" >
       <datalist id="sizelist">      
<%  String[] sizecategory = list.get(0).getSizeCategory().split(",");
       for(int i=0;i<sizecategory.length;i++){
 %>       
       <option value="<%= sizecategory[i]%>"></option>     
<% } %>       
</datalist>
</th>
<th colspan="2">수량 : 
<input type="number" name="quantity" id="quantity" min="1" max="100" step="1" value="1">
</th>
</tr>
</form>
<tr height="50"><th colspan="2"><button type="submit" onclick="shoppingbag();">장바구니</th>
<th colspan="2"><button onclick="order();">주문하기</th></tr>

</table>
</th>
</tr>
<tr height="230">
<th>
<table width="600" border="1px solid #bcbcbc">
<% String[] sizecontents = list.get(0).getSizeContents().split(",");	
 
%>
<tr height="40"><th width="150">SIZE</th><th width="150"><%= sizecontents[0]%></th><th width="150"><%=sizecontents[1]%></th><th width="150"><%=sizecontents[2]%></th></tr>
<tr height="40"><th><%=sizecontents[3]%></th><td><%=sizecontents[4]%></td><td><%=sizecontents[5]%></td><td><%=sizecontents[6]%></td></tr>
<tr height="40"><th><%=sizecontents[7]%></th><td><%=sizecontents[8]%></td><td><%=sizecontents[9]%></td><td><%=sizecontents[10]%></td></tr>
<tr height="40"><th><%=sizecontents[11]%></th><td><%=sizecontents[12]%></td><td><%=sizecontents[13]%></td><td><%=sizecontents[14]%></td></tr>
<tr height="40"><th><%=sizecontents[15]%></th><td><%=sizecontents[16]%></td><td><%=sizecontents[17]%></td><td><%=sizecontents[18]%></td></tr> 

</table>
</th>
<th>
<table width="400" border="1px solid #bcbcbc">
<tr height="45"><th>추가정보</th></tr>
<tr height="160"><td><%= list.get(0).getMoreInto()%></td></tr>
</table>
</th>
</tr>
</table>
</body>
</html>