

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Auction_DAO"%>
<%@page import="com.pojo.Auction_Pojo"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         try{
     Auction_DAO auctiondao= new Auction_DAO();
    Auction_Pojo auction= new Auction_Pojo();
     
      String auc_created_date=request.getParameter("auc_created_date");
      String auc_status=request.getParameter("auc_status");
      String auc_description=request.getParameter("auc_description");
     double auc_budget=Integer.parseInt(request.getParameter("auc_budget"));
     int cust_id=Integer.parseInt(request.getParameter("cust_id"));
      
     
     auction.setAuc_created_date(auc_created_date);
     auction.setAuc_status(auc_status);
     auction.setAuc_description(auc_description);
     auction.setAuc_budget(auc_budget);
     auction.setCust_id(cust_id);
     
     
     boolean b=auctiondao.isAuctionAdd(auction);
     if(b){
     
     System.out.println("Auction Added Successfully");
     
     %>
     
     <script>
         alert("Auction Added");
         
         window.location.href="AuctionDetails.jsp";
         
     </script>
        
        
        <%
     
     }
         }catch(Exception e){
         
         System.out.println(""+e);
         }
     
     %>  
  
    </body>
</html>

