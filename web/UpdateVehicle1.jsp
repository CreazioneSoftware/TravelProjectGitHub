<%-- 
    Document   : UpdateVehicle1
    Created on : Dec 6, 2017, 12:18:24 PM
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
     
      System.out.println("Hiii method");
    // int guid_id=Integer.parseInt(request.getParameter("id"));
      //int guid_id=Integer.parseInt(request.getParameter("guid_id"));
      int vehicle_id=Integer.parseInt(request.getParameter("vehicle_id"));
     System.out.println(" vehicle id=="+vehicle_id);
     int vehicle_cat_id=Integer.parseInt(request.getParameter("vehicle_cat_id"));
     String vehicle_no=request.getParameter("vehicle_no");
      System.out.println("success method");
     String vehicle_driver=request.getParameter("vehicle_driver");
      System.out.println("Hiii method111");
     String vehicle_model=request.getParameter("vehicle_model");
     String vehicle_company=request.getParameter("vehicle_company");
     String vehicle_status=request.getParameter("vehicle_status");
     
     
      System.out.println("Hiii method11");
     
      
      v.setVehicle_id(vehicle_id);
      v.setVehicle_cat_id(vehicle_cat_id);
      v.setVehicle_no(vehicle_no);
      v.setVehicle_driver(vehicle_driver);
      v.setVehicle_model(vehicle_model);
      v.setVehicle_company(vehicle_company);
      v.setVehicle_status(vehicle_status);
      
     boolean b=vehicledao.isupdate(v);
      System.out.println("Hiii method2");
     if(b){
     
     System.out.println("vehicle updated Successfully");
     
     %>
     
     <script>
         alert("vehicle updated");
         window.location.href="ViewVehicle.jsp";
         
     </script>
        
        
        <%
     
     }
     else
{
     System.out.println(" not success");
}

         }catch(Exception e){
         
         System.out.println("Error is "+e);
         }    
     %> 
    </body>
</html>
