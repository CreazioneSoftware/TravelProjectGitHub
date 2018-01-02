<%-- 
    Document   : UpdateQuotation
    Created on : Dec 14, 2017, 1:56:53 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Quotation_details qd = new Quotation_details();
            ResultSet rs = qd.ViewQuotation();
            while (rs.next()) {
        %>
        <form action="" method="post">
            <table border="5" align="center">
                <tr>
                    <td>Quot details id:</td>
                    <td><input type="text" name="id" value="<%=rs.getInt(6)%>"></td>
                </tr>
                <tr>
                    <td>Quot details items:</td>
                    <td><input type="text" name="items" value="<%=rs.getString(7)%>"></td>
                </tr>
                <tr>
                    <td>Quot details quantity:</td>
                    <td><input type="text" name="quantity" value="<%=rs.getInt(8)%>"></td>
                </tr>
                <tr>
                    <td>Quot details rate:</td>
                    <td><input type="text" name="rate" value="<%=rs.getDouble(9)%>"></td>
                </tr>
                <tr>
                    <td>Quot details total:</td>
                    <td><input type="text" name="total" value="<%=rs.getDouble(10)%>"></td>
                </tr>
                <tr>
                    <td>Quot id:</td>
                    <td><input type="text" name="qid" value="<%=rs.getInt(1)%>"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="submit" value="SUBMIT"></td>
                </tr>
            </table>
            <form>

                <%
                    }
                    try {
                        Quotation_details_pojo qdp = new Quotation_details_pojo();

                        int id = Integer.parseInt(request.getParameter("id"));
                        String items = request.getParameter("items");
                        int quantity = Integer.parseInt(request.getParameter("quantity"));
                        double rate = Double.parseDouble(request.getParameter("rate"));
                        double total = Double.parseDouble(request.getParameter("total"));
                        // int qid=Integer.parseInt(request.getParameter("qid"));

                        qdp.setQuot_details_id(id);
                        qdp.setQuot_details_items(items);
                        qdp.setQuot_details_quantity(quantity);
                        qdp.setQuot_details_rate(rate);
                        qdp.setQuot_details_total(total);
                        // qdp.setQuot_id(qid);

                        boolean b = qd.updateQuotation(qdp);
                        if (b) {
                            System.out.println("Quotation Details Updated");
                %>
                <script>
                    alert("Quotation Details Updated");
                </script>
                <%
                        }
                    } catch (Exception e) {
                        System.out.println("Exception is " + e);
                    }
                %>
                </body>
                </html>
