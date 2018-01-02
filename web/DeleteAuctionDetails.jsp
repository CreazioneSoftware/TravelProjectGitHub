

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.AuctionDetails_DAO"%>
<%@page import="com.pojo.AuctionDetails_Pojo"%>

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
     AuctionDetails_DAO auctiondetailsdao= new AuctionDetails_DAO();
     AuctionDetails_Pojo auctiondetails= new AuctionDetails_Pojo();
     
    
    int auctiondetails_id=Integer.parseInt(request.getParameter("id"));
     
     auctiondetails.setAuc_details_id(auctiondetails_id);     
     boolean b=auctiondetailsdao.isDeleteAuctionDetails(auctiondetails);
     if(b){
     
     System.out.println("Auction Details deleted Successfully");
     
     %>
     
     <script>
         alert("Auction Details deleted");
         window.location.href="ViewAuctionDetail.jsp";
         
     </script>
        
        
        <%
     
     }

         }catch(Exception e){
         
         System.out.println(""+e);
         }    
     %> 
    </body>
</html>



