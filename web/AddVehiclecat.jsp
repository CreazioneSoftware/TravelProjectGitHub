
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Vehicle_category_Dao"%>
<%@page import="com.pojo.Vehicle_Category"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         try{
     Vehicle_category_Dao vehiclecatdao= new Vehicle_category_Dao();
     Vehicle_Category vc= new Vehicle_Category();
     
     
     String Vehicle_cat_name=request.getParameter("Vehicle_cat_name");
     
     
     vc.setVehicle_cat_name(Vehicle_cat_name);
     
     boolean b=vehiclecatdao.isRegister(vc);
     if(b){
     
     System.out.println("vehicle Added Successfully");
     
     %>
     
     <script>
         alert("VehicleCatName Added");
         window.location.href="vehiclecat.jsp";
         
     </script>
        
        
        <%
     
     }
         }catch(Exception e){
         
         System.out.println(""+e);
         }
     
     %>
    </body>
</html>
