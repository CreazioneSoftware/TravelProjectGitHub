<%-- 
    Document   : ViewSubQuotation
    Created on : Dec 19, 2017, 2:06:22 PM
    Author     : RUSHIKESH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Quotation_details"%>
<%@page import="com.pojo.Quotation_details_pojo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Customer</title>
    </head>
    <body>

        <form name="viewcustomer" action="" method="post">
            <h1><center> Sub Quotation's  </center></h1>
            <table border="5" align="center">
                <tr><th>Sub Quotation ID</th><th>Quotation Items</th><th>Quotation Quantity</th><th>Quotation Rate</th><th>Quotation Total</th><th>Quotation Id</th></th><th>Update Links</th><th>Delete Links</th> </tr>
                        <%
                            Quotation_details qd = new Quotation_details();
                            ResultSet rs =qd.ViewSubQuotation();
                            while (rs.next()) {
                        %>


                <tr>
                    <td><%=rs.getInt(1)%></td> 
                    <td><%=rs.getString(2)%></td>
                    <td><%=rs.getInt(3)%></td>
                    <td><%=rs.getDouble(4)%></td>
                    <td><%=rs.getDouble(5)%></td>
                     <td><%=rs.getInt(6)%></td>
                    <td>  <a href="UpdateSubQuotation.jsp"> Update Sub Quotation</a> </td>
                    <td>  <a href="DeleteSubQuotation.jsp"> Delete Sub Quotation</a> </td>
                </tr>

                <%
                    }

                %>
            </table>

        </form>
    </body>
</html>
