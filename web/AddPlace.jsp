<%-- 
    Document   : AddPlace
    Created on : Dec 1, 2017, 2:20:10 PM
    Author     : Samiksha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Place_Dao"%>
<%@page import="com.pojo.Place"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
         try{
     Place_Dao placedao= new Place_Dao();
     Place p1= new Place();
     
     int country_id=Integer.parseInt(request.getParameter("country_id"));
     int state_id=Integer.parseInt(request.getParameter("state_id"));
     int city_id=Integer.parseInt(request.getParameter("city_id"));
     String place_name=request.getParameter("place_name");
     
     p1.setCountry_id(country_id);
     p1.setState_id(state_id);
     p1.setCity_id(city_id);

     p1.setPlace_name(place_name);
     
     
     boolean b=placedao.isAddPlace(p1);
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
