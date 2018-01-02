<%-- 
    Document   : DeleteGuide
    Created on : Dec 4, 2017, 11:37:26 AM
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
     System.out.println("HHii");
    // int guide_id=Integer.parseInt(request.getParameter("guide_id"));
    //int guid_id=Integer.parseInt(request.getParameter("guid_id".trim()));
      //System.out.println("guide id =="+guid_id);
      // <input type="text" name="id" value="">
      // int guid_id=Integer.parseInt(request.getParameter("guid_id"));
     // System.out.println(" guide id=="+guid_id);
     int guid_id=Integer.parseInt(request.getParameter("id"));
      out.println("guide id =="+guid_id);
      
    guide.setGuid_id(guid_id);     
     boolean b=guidedao.isDeleteGuide(guide);
     if(b){
     
     System.out.println("guide deleted Successfully");
     
     %>
     
     <script>
         alert("guide deleted");
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
