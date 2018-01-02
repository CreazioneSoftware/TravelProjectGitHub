

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Auction_DAO"%>
<%@page import="com.pojo.Auction_Pojo"%>
<%@include file="MasterAuction.jsp"%>
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
     Auction_DAO auctiondao= new Auction_DAO();
     Auction_Pojo auction= new Auction_Pojo();
     
    
    int auction_id=Integer.parseInt(request.getParameter("id"));
     
     auction.setAuction_id(auction_id);     
     boolean b=auctiondao.isDeleteAuction(auction);
     if(b){
     
     System.out.println("Auction deleted Successfully");
     
     %>
     
     <script>
         alert("Auction deleted");
         window.location.href="ViewAuction.jsp";
         
     </script>
        
        
        <%
     
     }

         }catch(Exception e){
         
         System.out.println(""+e);
         }    
     %> 
    </body>
</html>


