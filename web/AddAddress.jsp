

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
     
    
      String address_home=request.getParameter("address_home");
      String address_landmark=request.getParameter("address_landmark");
     int address_city=Integer.parseInt(request.getParameter("address_city"));
     int address_state=Integer.parseInt(request.getParameter("address_state"));
      int address_country=Integer.parseInt(request.getParameter("address_country"));
      System.out.println(address_country);
     String address_pincode=request.getParameter("address_pincode");
     System.out.println("hii");
     
     address.setAddress_home(address_home);
     address.setAddress_landmark(address_landmark);
     address.setAddress_city(address_city);
     address.setAddress_state(address_state);
     address.setAddress_country(address_country);
     address.setAddress_pincode(address_pincode);
     
     boolean b=addressdao.isAddressAdd(address);
     if(b){
     
     System.out.println("Address Added Successfully");
     
     %>
     
     <script>
         alert("Address Added");
         window.location.href="Address.jsp";
         
     </script>
        
        
        <%
     
     }
         }catch(Exception e){
         
         System.out.println(""+e);
         }
     
     %>  
  
    </body>
</html>
