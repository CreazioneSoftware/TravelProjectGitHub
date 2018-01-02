<%-- 
    Document   : ViewCustomer
    Created on : Dec 7, 2017, 2:03:40 PM
    Author     : RUSHIKESH
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Customer"%>
<%@page import="com.pojo.Customer_Pojo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Customer</title>
    </head>
    <body>

        <form name="viewcustomer" action="" method="post">
            <h1><center> Customer Details </center></h1>
            <table border="5" align="center">
                <tr><th>ID</th><th>NAME</th><th>CONTACT</th><th>EMAIL</th><th>HOME</th><th>LANDMARK</th>
                    <th>CITY</th><th>STATE</th><th>COUNTRY</th><th>PINCODE</th><th>ADDRESS</th> </tr>
                <%
                    Customer c=new Customer();
                  ResultSet rs=c.viewCustomer();
                  while(rs.next())
                  {
                     %>
                     
                     
                     <tr>
                     <td><%=rs.getInt(1)%></td> 
                     <td><%=rs.getString(2)%></td>
                     <td><%=rs.getInt(3)%></td>
                     <td><%=rs.getString(4)%></td>
                     <td><%=rs.getString(5)%></td>
                     <td><%=rs.getString(6)%></td>
                     <td><%=rs.getString(7)%></td>
                     <td><%=rs.getString(8)%></td>
                     <td><%=rs.getString(9)%></td>
                     <td><%=rs.getString(10)%></td>
                     <td><%=rs.getInt(11)%></td> 
                     </tr>
                     
                     <%
                  }
              
              %>
               </table>
            
        </form>
    </body>
</html>
