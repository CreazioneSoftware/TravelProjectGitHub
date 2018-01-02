<%-- 
    Document   : ViewQuotation
    Created on : Dec 13, 2017, 12:05:38 PM
    Author     : RUSHIKESH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Quotation_details"%>
<%@page import="com.pojo.Quotation_details_pojo"%>
<%@page import="com.dao.connectionInitializer"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-color:buttonface;
                 
            }
            h1{
                color: orange; 
                background-color:black;
            }
           hr{color: lime;}
            table{
                background-color: dimgrey;
                color: aqua;
                border-color: orange;
            }
            input[type="text"],[type="email"],[type="date"]{
                margin:1px;
                padding:1px;
                color:white; 
                background-color:dimgray;
                height:15px;
                width:95%;
            }

        </style>
    </head>
    <body>
        <form action="" method="">
            <H1><center> Quotation Details Form:</center></H1>
            <br><hr>
            <%
                Quotation_details qd = new Quotation_details();
                ResultSet rs = qd.ViewQuotation();
                int srno = 0;
                while (rs.next()) {
            %>
            <table border="5" align="center"> 
                <tr>
                    <td><center>Quot id:</center></td> <td><input type="text" name="quotid" value="<%=rs.getInt(1)%>"></td>
                    <td><center>Auction id:</center></td> <td><input type="text" name="aucid" value="<%=rs.getInt(2)%>"></td>
                    <td><center>Travel Age id:</center></td> <td><input type="text" name="travelageid" value="<%=rs.getInt(3)%>"></td>

                </tr>
                <tr>
                    <td><center>Travel Age Name:</center></td> <td><input type="text" name="travelagename" value="<%=rs.getInt(4)%>"></td>
                    <td><center>Quot Total Amount:</center></td> <td><input type="text" name="quottotalamount" value="<%=rs.getDouble(5)%>"></td>   
                </tr>
                <th>Sr No</th> <th>Q Details Id</th> <th> Items</th> <th> Quantity</th> <th> Rate</th> <th>Total Amount</th>

                <tr>
                    <td><%=srno = srno + 1%></td>   
                    <td><%=rs.getInt(6)%></td>
                    <td><%=rs.getString(7)%></td>
                    <td><%=rs.getInt(8)%></td>
                    <td><%=rs.getDouble(9)%></td>
                    <td><%=rs.getDouble(10)%></td>
                </tr>     
            </table> 
            <br><br>
            <%
                }
            %>  
        </form>
    </body>
</html>
