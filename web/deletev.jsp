<%--
    Document   : deletev
    Created on : Dec 5, 2017, 1:49:32 PM
    Author     : Samiksha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Vehicle_Dao"%>
<%@page import="com.pojo.Vehicle"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <tr>
        <td> <td> vehicle id </td> <td><input type="text" name="id" value=""> </td>
        <td> <input type="submit" name="submit" value="Delete"></td> 
    </tr>
    <%
        try {
            Vehicle_Dao vd = new Vehicle_Dao();
            Vehicle v = new Vehicle();
            
            int id=Integer.parseInt(request.getParameter("id"));
           
            v.setVehicle_id(id);
           boolean b=vd.isDelete(v);
           if(b)          
           {
              System.out.println("vehicle deleted");
              %>
              
              <script>
              alert("deleted");
              </script>
         <%
           }
        } catch (Exception e) {
            System.out.println("Exception is" + e);
        }
    %>

</body>
</html>
