<%-- 
    Document   : UpdateGuide1
    Created on : Dec 4, 2017, 3:55:20 PM
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
               //int guide_id = Integer.parseInt(request.getParameter("guide_id"));
         try{
     Guide_DAO guidedao= new Guide_DAO();
     Guide_Pojo guide= new Guide_Pojo();
     
      System.out.println("Hiii method");
    // int guid_id=Integer.parseInt(request.getParameter("id"));
      int guid_id=Integer.parseInt(request.getParameter("guid_id"));
     System.out.println(" guide id=="+guid_id);
      int travel_age_id=Integer.parseInt(request.getParameter("travel_age_id"));
 
      System.out.println("success method");
     String guide_name=request.getParameter("guide_name");
      System.out.println("Hiii method111");
     String guide_email=request.getParameter("guide_email");
     String guide_contact=request.getParameter("guide_contact");
     String guide_address=request.getParameter("guide_address");
      System.out.println("hiii2 method");
       int place_id=Integer.parseInt(request.getParameter("place_id"));
       System.out.println("place.... method");
     int state_id=Integer.parseInt(request.getParameter("state_id").trim());
 System.out.println("state method");
      int country_id=Integer.parseInt(request.getParameter("country_id").trim());
     
     
      System.out.println("Hiii method11");
     
      
      
      guide.setGuid_id(guid_id);
      guide.setCountry_id(country_id);
      guide.setGuide_address(guide_address);
      guide.setGuide_contact(guide_contact);
      guide.setGuide_email(guide_email);
      guide.setGuide_name(guide_name);
      guide.setPlace_id(place_id);
      guide.setState_id(state_id);
      guide.setTravel_age_id(travel_age_id);
     boolean b=guidedao.isUpdateGuide(guide);
      System.out.println("Hiii method2");
     if(b){
    
     System.out.println("guide updated Successfully");
     
     %>
     
     <script>
         alert("guide updated");
         window.location.href="ViewGuide.jsp";
         
     </script>
        
        
        <%
     
     }

         }catch(Exception e){
         
         System.out.println("Error is "+e);
         }    
     %> 
    </body>
</html>
