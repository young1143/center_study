<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%@include file="static/header.jsp" %>
	<%@include file="static/nav.jsp" %>
	
	<%
		String section = request.getParameter("section") != null ? request.getParameter
				
			switch(section){
			case "sale_registration":
				%> <%@include file="page/sale_registration.jsp" %><% 
				break;
			case "sale_lookup":
			%> <%@include file="page/sale_Lookup.jsp" %><% 
				break;
			case "sale_lookup":
			%> <%@include file="page/sale_Lookup_by_product.jsp" %><% 
				break;
			case "sale_lookup":
			%> <%@include file="page/sale_Lookup_by_category,jsp" %><% 
				break;
			default:
				%> <%@include file=static/index.jsp %><% 
			}
	%>
	
	<%@include file="static/footer.jsp" %>
</body> 
</html>