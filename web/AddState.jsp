<%-- 
    Document   : AddState
    Created on : Dec 1, 2017, 11:01:30 AM
    Author     : Samiksha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.State_DAO"%>
<%@page import="com.pojo.State_Pojo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
         try{
     State_DAO statedao= new State_DAO();
     State_Pojo state= new State_Pojo();
     
     int country_id=Integer.parseInt(request.getParameter("country_id"));
     String state_name=request.getParameter("state_name");
     
     state.setCountry_id(country_id);
     state.setState_name(state_name);
     
     
     boolean b=statedao.isStateAdd(state);
     if(b){
     
     System.out.println("State Added Successfully");
     
     %>
     
     <script>
         alert("State Added");
         window.location.href="State.jsp";
         
     </script>
        
        
        <%
     
     }
         }catch(Exception e){
         
         System.out.println(""+e);
         }
     
     %>
    </body>
</html>
