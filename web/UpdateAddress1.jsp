<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Address_DAO"%>
<%@page import="com.pojo.Address_Pojo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
              
         try{
     Address_DAO addressdao= new Address_DAO();
     Address_Pojo address= new Address_Pojo();
     
     
      int address_id=Integer.parseInt(request.getParameter("address_id"));
     //System.out.println(" guide id=="+guid_id);
     String address_home=request.getParameter("address_home");
     String address_landmark=request.getParameter("address_landmark");
      int address_city=Integer.parseInt(request.getParameter("address_city"));
      int address_state=Integer.parseInt(request.getParameter("address_state"));
      int address_country=Integer.parseInt(request.getParameter("address_country"));
     String address_pincode=request.getParameter("address_pincode");
      
     
      address.setAddress_id(address_id);
      address.setAddress_home(address_home);
      address.setAddress_landmark(address_landmark);
      address.setAddress_city(address_city);
      address.setAddress_state(address_state);
      address.setAddress_country(address_country);
      address.setAddress_pincode(address_pincode);
      
      
     boolean b=addressdao.isUpdateAddress(address);
      
     if(b){
    
     System.out.println("Address updated Successfully");
     
     %>
     
     <script>
         alert("Address updated");
         window.location.href="ViewAddress.jsp";
         
     </script>
        
        
        <%
     
     }

         }catch(Exception e){
         
         System.out.println("Error is "+e);
         }    
     %> 
    </body>
</html>
