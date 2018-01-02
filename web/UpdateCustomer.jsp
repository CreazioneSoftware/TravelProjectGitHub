<%-- 
    Document   : UpdateCustomer
    Created on : Dec 5, 2017, 1:04:11 PM
    Author     : RUSHIKESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Customer"%>
<%@page import="com.pojo.Customer_Pojo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Customer</title>
    </head>
    <body>
        <form name="updatecustomer" action="" method="post">
            <h1><center> Customer Update Form </center></h1>
            <table border="5" align="center">
                <tr>
                    <td> Customer Id: </td>
                    <td><input type="text" name="cid" value="" placeholder="Enter cust Id"></td>
                </tr>
                <tr>
                    <td> Customer Name: </td>
                    <td><input type="text" name="cname" value="" placeholder="Enter cust name"></td>
                </tr>
                <tr>
                    <td> Customer Contact: </td>
                    <td><input type="text" name="ccontact" value="" placeholder="Enter cust contact"></td>
                </tr>
                <tr>
                    <td> Customer Email: </td>
                    <td><input type="text" name="cemail" value="" placeholder="Enter cust name"></td>
                </tr>
                <tr>
                    <td> Customer Address Id: </td>
                    <td><input type="number" name="caddress" value="" placeholder="Enter cust Address Id"></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"> <input type="submit" name="submit" value="UPDATE CUSTOMER"> </td>     
                </tr>
            </table>
        </form>
        <%
            try {
                Customer c=new Customer();
                Customer_Pojo cp = new Customer_Pojo();
                
                int id=Integer.parseInt(request.getParameter("cid"));
                String name=request.getParameter("cname");
                int contact=Integer.parseInt(request.getParameter("ccontact").trim());
                String email=request.getParameter("cemail");
                int addressid =Integer.parseInt(request.getParameter("caddress"));
                
                cp.setCust_id(id);
                cp.setCust_name(name);
                cp.setCust_contact(contact);
                cp.setCust_email(email);
              //  cp.setAddress_id(addressid);
              
              boolean b=c.updateCustomer(cp);
              {
                System.out.println("Customer updated "+name);
                %>
                <script>
                   alert("Customer Updated Successfully");                
                </script>
                <%
              }
            } catch (Exception e) {
                System.out.println("Exception is" + e);
            }


        %>
    </body>
</html>
