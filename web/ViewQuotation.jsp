<%-- 
    Document   : ViewCustomer
    Created on : Dec 7, 2017, 2:03:40 PM
    Author     : RUSHIKESH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Quotation"%>
<%@page import="com.pojo.Quotation_pojo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Customer</title>
    </head>
    <body>

        <form name="viewcustomer" action="" method="post">
            <h1><center> Quotation's  </center></h1>
            <table border="5" align="center">
                <tr><th>ID</th><th>Quot Total Amount</th><th>Auction id</th><th>Travel Age NAme</th></th><th>Update Links</th><th>Delete Links</th> </tr>
                        <%
                            Quotation q = new Quotation();
                            ResultSet rs = q.ViewQuotation();
                            while (rs.next()) {
                        %>


                <tr>
                    <td><%=rs.getInt(1)%></td> 
                    <td><%=rs.getDouble(2)%></td>
                    <td><%=rs.getInt(3)%></td>
                    <td><%=rs.getInt(4)%></td>
  
                    <td>  <a href="UpdateQuotation.jsp"> Update Quotation </a> </td>
                    <td>  <a href="DeleteQuotation.jsp"> Delete Quotation </a> </td>
                </tr>

                <%
                    }

                %>
            </table>

        </form>
    </body>
</html>
