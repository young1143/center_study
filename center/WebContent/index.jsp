<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li><a href = "?section=A">a</a></li>
		<li><a href = "?section=B">b</a></li>
		<li><a href = "?section=C">c</a></li>
	</ul>
	
	<%String section = request.getParameter("section") != null ? request.getParameter("section") : "";
	
			switch(section) {
			case "A" :
			%><%@include file="pages/A.jsp" %><%
			break;
			case "B" : 
			%><%@include file="pages/B.jsp" %><%
			break;
			case "C" :
			%><%@include file="pages/C.jsp" %><%
			break;
		default:
				out.println("메인 페이지입니다");
				
			}
	%>
</body>
</html>











