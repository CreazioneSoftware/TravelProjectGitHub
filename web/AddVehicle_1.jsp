<%-- 
    Document   : AddVehicle
    Created on : Nov 29, 2017, 2:10:07 AM
    Author     : Samiksha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Vehicle_Dao"%>
<%@page import="com.pojo.Vehicle"%>
<%@page import="com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
    try
    {
        Vehicle_Dao vehicledao=new Vehicle_Dao(); 
        Vehicle v = new Vehicle();
        // System.out.println("hiii");
         int vehicle_cat_id=Integer.parseInt(request.getParameter("vehicle_cat_id"));

       // private List<vehicle_cat_id> memberList = new ArrayList<vehicle_category>();
        String vehicle_no=request.getParameter("vehicle_no");
        String vehicle_driver=request.getParameter("vehicle_driver");
        String vehicle_model=request.getParameter("vehicle_model");
        String vehicle_company=request.getParameter("vehicle_company");
        String vehicle_status=request.getParameter("vehicle_status");
          // System.out.println("hii1");
        v.setVehicle_cat_id(vehicle_cat_id);
        v.setVehicle_no(vehicle_no);
        v.setVehicle_driver(vehicle_driver);
        v.setVehicle_model(vehicle_model);
        v.setVehicle_company(vehicle_company);
        v.setVehicle_status(vehicle_status);
          // System.out.println("hiii2");
        boolean b=vehicledao.isRegister(v);
    System.out.println("hiii3");
        if(b)
        {
            System.out.println("Vehicle Added successfully");
            
            %>
            
            <script>
                alert("save...");
                 window.location.href="MasterVehicle.jsp";
                </script>
              <%
                        }

        
        
    }
    catch(Exception e)
    
    {
        System.out.println("Error is"+e);
    }
    %>  
        
    </body>
</html>
