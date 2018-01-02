<%-- 
    Document   : DeleteVehicle
    Created on : Dec 5, 2017, 1:03:12 PM
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
        <%
               //int guide_id = Integer.parseInt(request.getParameter("guide_id"));
         try{
     Vehicle_Dao vehicledao= new Vehicle_Dao();
     Vehicle v= new Vehicle();
         System.out.println("helloo");

    // int guide_id=Integer.parseInt(request.getParameter("guide_id"));
    int vehicle_id=Integer.parseInt(request.getParameter("id"));
    System.out.println("hii");
      // out.println("guide id =="+guide_id);
     v.setVehicle_id(vehicle_id);     
     boolean b=vehicledao.isDelete(v);
         System.out.println("hii33");

     if(b){
     
     System.out.println("vehicle deleted Successfully");
     
     %>
     
     <script>
         alert("vehicle deleted");
         window.location.href="ViewVehicle.jsp";
         
     </script>
        
        
        <%
     
     }

         }catch(Exception e){
         
         System.out.println(""+e);
         }    
     %> 
    </body>
</html>
