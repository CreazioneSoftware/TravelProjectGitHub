<%-- 
    Document   : DeleteCustomer
    Created on : Dec 5, 2017, 2:47:29 PM
    Author     : RUSHIKESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Customer"%>
<%@page import="com.pojo.Customer_Pojo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Customer</title>
    </head>
    <body>
        <form name="deletecustomer" action="" method="post">
     <tr>
         <td> Enter Customer Id: </td>
         <td> <input type="text" name="id" value="" placeholder="Enter cust id...."> </td> <br>
      </tr>
      <tr>
          <td> Enter Customer Name: <td>
                  <td> <input type="text" name="name" value="" placeholder="Enter cust name...."> </td> <br>
      </tr>
      <tr>
       <td> <input type="submit" name="submit" value="DELETE"> </td>    
      </tr> 
      </form>
      <%
        try
        {

            Customer cd=new Customer();
            Customer_Pojo cp=new Customer_Pojo();
            
           int customerid=Integer.parseInt(request.getParameter("id"));
          // String name=request.getParameter("name");
         
           cp.setCust_id(customerid);
           
          // cp.setCust_name(name);
           boolean b=cd.deleteCustomer(cp);
           if(b)
           {
             System.out.println("Customer DELETED successfully"+cp.getCust_name());
             %>
             
             <script>
               alert("CUSTOMER DELETED");   
             </script>
             <%
           }
        }

        catch(Exception e){
        System.out.println("Exception is "+e);
       }
        
      %>
    </body>
</html>
