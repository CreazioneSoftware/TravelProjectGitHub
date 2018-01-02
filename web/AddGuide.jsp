<%-- 
    Document   : AddGuide
    Created on : Dec 1, 2017, 4:35:47 PM
    Author     : Samiksha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Guide_DAO"%>
<%@page import="com.pojo.Guide_Pojo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         try{
     Guide_DAO guidedao= new Guide_DAO();
     Guide_Pojo guide= new Guide_Pojo();
     
     int travel_age_id=Integer.parseInt(request.getParameter("travel_age_id"));
     int country_id=Integer.parseInt(request.getParameter("country_id"));
     int state_id=Integer.parseInt(request.getParameter("state_id"));
     int place_id=Integer.parseInt(request.getParameter("place_id"));
     String guide_name=request.getParameter("guide_name");
     String guide_email=request.getParameter("guide_email");
     String guide_contact=request.getParameter("guide_contact");
     String guide_address=request.getParameter("guide_address");
     
     guide.setTravel_age_id(travel_age_id);
     guide.setCountry_id(country_id);
     guide.setState_id(state_id);
     guide.setPlace_id(place_id);
  
      
     guide.setGuide_name(guide_name);
     guide.setGuide_email(guide_email);
     guide.setGuide_contact(guide_contact);
     guide.setGuide_address(guide_address);
     
     
     boolean b=guidedao.isGuideAdd(guide);
     if(b){
     
     System.out.println("guide Added Successfully");
     
     %>
     
     <script>
         alert("guide Added");
         window.location.href="guide.jsp";
         
     </script>
        
        
        <%
     
     }
         }catch(Exception e){
         
         System.out.println(""+e);
         }
     
     %>  
  
    </body>
</html>
