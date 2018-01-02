

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Address_DAO"%>
<%@page import="com.pojo.Address_Pojo"%>
<%@include file="MasterAddress.jsp"%>
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
     Address_DAO addressdao= new Address_DAO();
     Address_Pojo address= new Address_Pojo();
     
    
    int address_id=Integer.parseInt(request.getParameter("id"));
     
     address.setAddress_id(address_id);     
     boolean b=addressdao.isDeleteAddress(address);
     if(b){
     
     System.out.println("Address deleted Successfully");
     
     %>
     
     <script>
         alert("Address deleted");
         window.location.href="ViewAddress.jsp";
         
     </script>
        
        
        <%
     
     }

         }catch(Exception e){
         
         System.out.println(""+e);
         }    
     %> 
    </body>
</html>

