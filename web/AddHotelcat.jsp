<%-- 
    Document   : AddHotelcat
    Created on : Dec 1, 2017, 2:50:08 PM
    Author     : Samiksha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Hotel_Category_Dao"%>
<%@page import="com.pojo.Hotel_Category"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hotel_category Page</title>
    </head>
    <body>
       <%
         try{
     Hotel_Category_Dao hotelcatdao= new Hotel_Category_Dao();
     Hotel_Category hc= new Hotel_Category();
     
     
     String hotel_cat_name=request.getParameter("hotel_cat_name");
     
     
     hc.setHotel_cat_name(hotel_cat_name);
     
     boolean b=hotelcatdao.isAddHotelcat(hc);
     if(b){
     
     System.out.println("hotel category Added Successfully");
     
     %>
     
     <script>
         alert("HotelCatName Added");
         window.location.href="Hotel_Category.jsp";
         
     </script>
        
        
        <%
     
     }
         }catch(Exception e){
         
         System.out.println(""+e);
         }
     
     %> 
    </body>
</html>
