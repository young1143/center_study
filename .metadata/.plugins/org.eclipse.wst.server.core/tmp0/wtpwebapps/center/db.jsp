<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>

<%
try {
Class.forName("oracle.jdbc.OracleDriver");
Connection conn = DriverManager.getConnection
("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
Statement stmt = conn.createStatement();
String query = "select * from TBL_PIZZA_01, TBL_SALELIST_01 where TBL_PIZZA_01.PCODE = TBL_SALELIST_01.PCODE";
ResultSet rs = stmt.executeQuery(query);
while (rs.next()) {
%><table border = 1>
     <tr>
           <td><%= rs.getString("PCODE") %></td>
           <td><%= rs.getString("PNAME") %></td>
           <td><%= rs.getString("COST") %></td>
           <td><%= rs.getString("AMOUNT") %></td>
     </tr></table>
<%
}
stmt.close();
conn.close();
}
catch (Exception e) {
e.printStackTrace();
}
%>