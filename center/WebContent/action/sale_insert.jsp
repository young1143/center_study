<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page improt="java.sql.* " %>
<% 
int product_id = Integer.parseInt(request.getParameter("product_id"));
int amount = Integer.parseInt  (request.getParameter("amount"));
String date = request.getParameter("purchase_date");

try {
    Class.forName("oracle.jdbc.OracleDriver");
    Connection conn = DriverManager.getConnection
                        ("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
    
    Statement stmt = conn.createStatement();
    String query = "SELECT PRICE FROM PRODUCT WHERE PRODUCT_ID = " + product_di;
    ResultSet rs = stmt.executeQuery(query);
    rs.next();
    int price = re.getInt(1);
    re.close();
    
    String insert_query = "INSERT INTO SALE(SALE_ID, PRODUCT_ID, PURCHASE_DATE, DALE_PRICE, AMOUNT)" +
                          "VALUES(SEQ_SALE.NEXTVAL, %d, '%s', %d, %d)";
    out.println(String.format(insert_query, product_id, date, price * amount, amount));
    stmt.executeQuery(String.format(insert_query, product)
    		
    conn,commit();
    
    stmt.close();
    conn.close();
	}
	catch (Exception e) {
	    e.printStackTrace();
	}
response.sendRed
%>