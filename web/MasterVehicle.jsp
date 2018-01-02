<%-- 
    Document   : MasterVehicle
    Created on : Dec 6, 2017, 3:31:41 PM
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
         <jsp:useBean id="vehicledao" class="com.dao.Vehicle_Dao"></jsp:useBean>
        <jsp:useBean id="v" class="com.pojo.Vehicle"></jsp:useBean>
    </head>
    <style>
         a{
            font-size:22px;
        }
        div{
           margin-left: 5%;
        }
    </style>
    <body>
        
        <h1 align="center">Vehicle Master Page</h1>
        <div align="center">
            <a href="vehicle.jsp">Insert</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="ViewVehicle.jsp">View</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="UpdateVehicle.jsp">Update</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <a href="DeleteVehicle.jsp">Delete</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
        </div>
    </body>
</html>
