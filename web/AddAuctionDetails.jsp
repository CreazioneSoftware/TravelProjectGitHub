

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
         try{
     AuctionDetails_DAO auctiondetailsdao= new AuctionDetails_DAO();
    AuctionDetails_Pojo auctiondetails= new AuctionDetails_Pojo();
   
    int auc_details_fromplaceid=Integer.parseInt(request.getParameter("auc_details_fromplaceid"));
    int auc_details_toplaceid=Integer.parseInt(request.getParameter("auc_details_toplaceid"));
    String auc_details_fromdate=request.getParameter("auc_details_fromdate");
    String auc_details_todate=request.getParameter("auc_details_todate");
    int auc_details_no_of_adult=Integer.parseInt(request.getParameter("auc_details_no_of_adults"));
    int auc_details_no_of_children=Integer.parseInt(request.getParameter("auc_details_no_of_children"));
    String auc_details_servicetype=request.getParameter("auc_details_servicetype");
    int auc_id=Integer.parseInt(request.getParameter("auc_id"));
     
     auctiondetails.setAuc_details_fromplaceid(auc_details_fromplaceid);
     auctiondetails.setAuc_details_toplaceid(auc_details_toplaceid);
     auctiondetails.setAuc_details_fromdate(auc_details_fromdate);
     auctiondetails.setAuc_details_todate(auc_details_todate);
     auctiondetails.setAuc_details_no_of_adult(auc_details_no_of_adult);
     auctiondetails.setAuc_details_no_of_children(auc_details_no_of_children);
     auctiondetails.setAuc_details_servicetype(auc_details_servicetype);
     auctiondetails.setAuc_id(auc_id);
     
     boolean b=auctiondetailsdao.isAuctionDetailsAdd(auctiondetails);
     if(b){
     
     System.out.println("AuctionDetails Added Successfully");
     
     %>
     
     <script>
         alert("AuctionDetails Added");
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


