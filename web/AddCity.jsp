<%-- 
    Document   : AddCity
    Created on : Dec 1, 2017, 1:48:03 PM
    Author     : Samiksha
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.City_DAO"%>
<%@page import="com.pojo.City_Pojo"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         try{
     City_DAO citydao= new City_DAO();
     City_Pojo city= new City_Pojo();
     
     int country_id=Integer.parseInt(request.getParameter("country_id"));
     int state_id=Integer.parseInt(request.getParameter("state_id"));
     String city_name=request.getParameter("city_name");
     
     city.setCountry_id(country_id);
     city.setState_id(state_id);

     city.setCity_name(city_name);
     
     
     boolean b=citydao.isCityAdd(city);
     if(b){
     
     System.out.println("City Added Successfully");
     
     %>
     
     <script>
         alert("City Added");
         window.location.href="City.jsp";
         
     </script>
        
        
        <%
     
     }
         }catch(Exception e){
         
         System.out.println(""+e);
         }
     
     %>
    </body>
</html>
