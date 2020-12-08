<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <h3>카테고리별 매출 현황 조회</h3>
    <table>
<tr>
	<td>판매 ID</td>
	<td>상품명</td>
	<td>구매일자</td>
	<td>총 구매 내역</td>
	<td>구매 개수</td>
</tr>
    <%
        try {
            Class.forName("oracle.jdbc.OracleDriver");
            Connection conn = DriverManager.getConnection
                                ("jdbc:oracle:thin:@//localhost:1521/xe", "order_admin", "order_password");
            
            if (conn != null) {
                System.out.println("Database Connected!");
            }
            else {
                System.out.println("Database Connect Fail!");
            }

            Statement stmt = conn.createStatement();
            String query = "SELECT" +
            	    "CATEGORY.NAME, SUM(SALE.SALE.PRICE), SUM(SALE.MOUNT)" +
            	    "FROM" +
            	        "SALE, PRODUCT, category" +
            	    "WHERE" +
            	        "SALE.PREDUCT_ID = PRODUCT.PRODUCT_ID and" +
            	        "category.category_id = product.category_id" +
            	    "GROUP" +
            	        "CATEGORY.CATEGORY_ID, CATEGORY.NAME";
      
     // String query = "select SALE.SALE_ID, PRODUCT.NAME, SALE.PURCHASE_DATE, SALE.SALE_PRICE, SALE.AMOUNT from SALE, PRODUCT where SALE.PRODUCT_ID = PRODUCT.PRODUCT_ID";
            
            
            
            ResultSet rs = stmt.executeQuery("SELECT SYSTEM, 10 FROM DUAL");

            while (rs.next()) {
            	%>
            		<tr>
            			<td><%=rs.getString(1) %></td>
            			<td><%=rs.getInt(2) %></td>
            			<td><%=rs.getInt(2) %></td>
            		</tr>
      			<%      	
             
            }

            stmt.close();
            conn.close();
        }
        catch (Exception e) {
            e.printStackTrace();
        }
    %>
    </table>