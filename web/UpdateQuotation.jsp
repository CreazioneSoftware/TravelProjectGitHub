<%-- 
    Document   : UpdateQuotation
    Created on : Dec 19, 2017, 1:56:53 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Quotation qd = new Quotation();
            ResultSet rs = qd.ViewQuotation();
            while (rs.next()) {
        %>
        <form action="" method="post">
            <table border="5" align="center">
                <tr>
                    <td>Quot details id:</td>
                    <td><input type="text" name="qid" value="<%=rs.getInt(1)%>"></td>
                </tr>
                <tr>
                    <td>Quot total amount:</td>
                    <td><input type="text" name="amount" value="<%=rs.getDouble(2)%>"></td>
                </tr> 
                <tr>
                    <td>Auction id:</td>
                    <td><input type="text" name="aucid" value="<%=rs.getInt(3)%>"></td>
                </tr>
                <tr>
                    <td>Travel age id:</td>
                    <td><input type="text" name="travelid" value="<%=rs.getInt(4)%>"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="submit" value="SUBMIT"></td>
                </tr>
            </table>
            <form>

                <%
                    }
                    try {
                        Quotation_pojo qp = new Quotation_pojo();

                        int qid = Integer.parseInt(request.getParameter("qid"));
                        double amount = Double.parseDouble(request.getParameter("amount"));
                        int aucid = Integer.parseInt(request.getParameter("aucid"));
                        int travelid = Integer.parseInt(request.getParameter("travelid"));

                        qp.setQuot_id(qid);
                        qp.setQuot_total_amount(amount);
                        qp.setAuc_id(aucid);
                        qp.setTravel_age_id(travelid);

                        boolean b = qd.updateQuotation(qp);
                        if (b) {
                            System.out.println("Quotation Updated");
                %>
                <script>
                    alert("Quotation Updated");
                </script>
                <%
                        }
                    } catch (Exception e) {
                        System.out.println("Exception is " + e);
                    }
                %>
                </body>
                </html>
