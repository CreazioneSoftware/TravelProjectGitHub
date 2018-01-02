
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.AuctionDetails_DAO"%>
<%@page import="com.pojo.AuctionDetails_Pojo"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <jsp:useBean id="auctiondetailsdao" class="com.dao.AuctionDetails_DAO"></jsp:useBean>
        <jsp:useBean id="auctiondetails" class="com.pojo.AuctionDetails_Pojo"></jsp:useBean>


        
           </head>
    <style>
       #div1{
            border:2px solid black;
            width:40%;
            height:100%;
            margin-top:3%;
            margin-left:35%;
            padding-top:20px;

            background:rgba(0,0,0,0.30);
        }
        #div2{
            height:90%;

        } 
        input
        {
            width:95%;
            height:7%;
        }
        #sub{
            width:35%;
            border-radius:25px;
            height:10%;
            border:none;
            background-color:green;
            color:white;
        }
        label{color:white;}
        select{
            width:50%;
        }
    </style>
   
    <body background="img1.jpg">
        <form name="frm" action="UpdateAuctionDetails1.jsp" method="post">
           
        
        <%
           
        try{
    
    int auction_details_id=Integer.parseInt(request.getParameter("id"));
      //out.println("address id =="+address_id);
      
    java.util.ArrayList al=auctiondetailsdao.getAllAuctionDetails1(auction_details_id);
                   
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){ 
auctiondetails= (AuctionDetails_Pojo) ir.next();
    %>
    <div id="div1" align="center">
                <div id="div2" align="center"	>
                    <table>
                    <tr><td><label>Auction Id:</label></td><td> <input type="text" name="auc_id" value="<%=auctiondetails.getAuc_id()%>"><br><br></td></tr>
                    <tr><td><label>Auction Details Id:</label></td><td> <input type="text" name="auc_details_id" value="<%=auctiondetails.getAuc_details_id()%>"><br><br></td></tr>
                    <tr><td><label>Auction Details ServiceType:</label></td><td><input type="text" name="auc_details_servicetype" value="<%=auctiondetails.getAuc_details_servicetype()%>"><br><br></td></tr>
                    <tr><td><label>Auction Details fromplaceid:</label></td><td><input type="text" name="auc_details_fromplaceid" value="<%=auctiondetails.getAuc_details_fromplaceid()%>"><br><br></td></tr>
                    <tr><td><label>Auction Details toplaceid:</label></td><td><input type="text" name="auc_details_toplaceid" value="<%=auctiondetails.getAuc_details_toplaceid()%>"><br><br></td></tr>
                    <tr><td><label>Auction Details fromdate:</label></td><td><input type="text" name="auc_details_fromdate" value="<%=auctiondetails.getAuc_details_fromdate()%>"><br><br></td></tr>
                    <tr><td><label>Auction Details todate:</label></td><td><input type="text" name="auc_details_todate" value="<%=auctiondetails.getAuc_details_todate()%>"><br><br></td></tr>
                    <tr><td><label>Auction Details No Of Adults:</label></td><td><input type="text" name="auc_details_no_of_adult" value="<%=auctiondetails.getAuc_details_no_of_adult()%>"><br><br></td></tr>
                    <tr><td><label>Auction Details No Of Children:</label></td><td><input type="text" name="auc_details_no_of_children" value="<%=auctiondetails.getAuc_details_no_of_children()%>"><br><br></td></tr>
                    
                    </table>
                    <input type="submit" value="update" name="button" id="sub"><br><br>
                </div>
    </div>
    <%
        
     }
     
}catch(Exception e){
         
         System.out.println(""+e);
         }    
     %> 
        </form>
    </body>
</html>
