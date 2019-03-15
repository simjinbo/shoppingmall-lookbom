<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, productOrder.model.vo.ProductOrder, cerlist.model.vo.CerList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lookBom</title>
<style type="text/css">
	a:link     {color:#007cd0;text-decoration:none} 
	a:visited  {color:#007cd0;text-decoration:none} 
	a:active   {color:#007cd0;text-decoration:none} 
	a:hover    {color:#0099ff;text-decoration:none} 
</style>
</head>
<body>
<%@ include file="productOrderManagementView.jsp" %>

<%@ include file="../cerlist/cerListRequestView.jsp" %>

<%@ include file="../cerlist/cerListConfirm.jsp" %>

</body>
</html>