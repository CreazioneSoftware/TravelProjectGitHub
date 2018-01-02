<%-- 
    Document   : AddHotel
    Created on : Dec 1, 2017, 3:40:12 PM
    Author     : Samiksha
--%>

<%@page import="com.pojo.Place"%>
<%@page import="com.dao.Place_Dao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         try{
     Place_Dao citydao= new Place_Dao();
     Place p= new Place();
     
     int country_id=Integer.parseInt(request.getParameter("country_id"));
     int state_id=Integer.parseInt(request.getParameter("state_id"));
     int city_id=Integer.parseInt(request.getParameter("city_id"));
     String place_name=request.getParameter("place_name");
     
     p.setCountry_id(country_id);
     p.setState_id(state_id);
     p.setCity_id(city_id);

     p.setPlace_name(place_name);
     
     
     boolean b=citydao.isAddPlace(p);
     if(b){
     
     System.out.println("Place Added Successfully");
     
     %>
     
     <script>
         alert("Place Added");
         window.location.href="Place.jsp";
         
     </script>
        
        
        <%
     
     }
         }catch(Exception e){
         
         System.out.println(""+e);
         }
     
     %>   
    </body>
</html>
