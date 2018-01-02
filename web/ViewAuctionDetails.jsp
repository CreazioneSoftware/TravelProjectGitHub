
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Place_Dao"%>
<%@page import="com.pojo.Place"%>
<%@page import="com.dao.Customer_DAO"%>
<%@page import="com.pojo.Customer_Pojo"%>
<%@page import="com.dao.Auction_DAO"%>
<%@page import="com.pojo.Auction_Pojo"%>
<%@page import="com.dao.AuctionDetails_DAO"%>
<%@page import="com.pojo.AuctionDetails_Pojo"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="placedao" class="com.dao.Place_Dao"></jsp:useBean>
        <jsp:useBean id="place" class="com.pojo.Place"></jsp:useBean>
        <jsp:useBean id="customerdao" class="com.dao.Customer_DAO"></jsp:useBean>
        <jsp:useBean id="customer" class="com.pojo.Customer_Pojo"></jsp:useBean>
        <jsp:useBean id="auctiondao" class="com.dao.Auction_DAO"></jsp:useBean>
        <jsp:useBean id="auction" class="com.pojo.Auction_Pojo"></jsp:useBean>
         <jsp:useBean id="auctiondetailsdao" class="com.dao.AuctionDetails_DAO"></jsp:useBean>
        <jsp:useBean id="auctiondetails" class="com.pojo.AuctionDetails_Pojo"></jsp:useBean>
    </head>
    <style>
        
        #table1{
            align:center;
            width:95%;
          margin-left:2%;
            margin-top:3%;
            background:rgba(0,0,0,0.30);
        }
        #tbl{
            align:left;
            width:90%;
        }
        #div1{
            margin-left:30%; 
        }
        body{
           background-size: 100%;
        }
        td,th{
            color:white;
        }
        </style>
    <body background="3.jpg">
        <div>
       <%
   try
   {
        int id=Integer.parseInt(request.getParameter("auc_id"));
       System.out.println("hii");
       java.util.ArrayList al=auctiondetailsdao.getAllAuction(id);
           System.out.println("hii111");          
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){
    System.out.println("hii1101"); 

auction=(Auction_Pojo)ir.next();
customer=(Customer_Pojo)ir.next();

   %>
           <!--tr><td><!--%ir.getInt("traveage_id");%></td></tr-->
           <h1 align="center">Auction Details</h1>
               <div id="div1">
                   <table id="tbl">
                       <br>
                       <tr><td><label>Customer Name:</label>&nbsp;&nbsp;<%=customer.getCust_name()%></td>
                           <td><label>Auction Id:</label>&nbsp;&nbsp;<%=auction.getAuc_id()%></td></tr>
                       <tr><td><label>Auction Description:</label>&nbsp;&nbsp;<%=auction.getAuc_description()%></td>
                           <td><label>Auction Created Date:</label>&nbsp;&nbsp;<%=auction.getAuc_created_date()%></td></tr><br>
                       <tr><td><label>Customer Id:</label>&nbsp;&nbsp;<%=auction.getCust_id()%></td>
                           <td><label>Auction Budget:</label>&nbsp;&nbsp;<%=auction.getAuc_budget()%></td></tr>
                  
               </div>
   <%
       }
   %>
   </table>

   <%
    
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
        </div>
        <div> 
         <table border="2" id="table1"> <tr>
        
        <th>Auction Details Id</th>
        <th>Service Type</th>
        <th>From Place</th>
        <th>To Place</th>
        <th>From Date</th>
        <th>To Date</th>
        <th>No of Adults</th>
        <th>No of Children</th>
        
         </tr>
            
   <%
   try
   {
        int id=Integer.parseInt(request.getParameter("auc_id"));
       System.out.println("hii");
       java.util.ArrayList al=auctiondetailsdao.getAllAuctionDetails(id);
           System.out.println("hii111");          
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){
    System.out.println("hii1101"); 


auctiondetails= (AuctionDetails_Pojo) ir.next();


   %>
           
    <tr>
    <td><%=auctiondetails.getAuc_details_id()%></td>
    <td><%=auctiondetails.getAuc_details_servicetype()%></td> 
   
    <%
        try
        {
    int id1=auctiondetails.getAuc_details_fromplaceid();
    java.util.ArrayList al1=placedao.getFromPlace(id1);
           System.out.println("hii111");          
java.util.Iterator ir1=al1.iterator();
while(ir1.hasNext()){
    System.out.println("hii1101"); 


place= (Place) ir1.next();

    %>
    <td><%=place.getPlace_name()%></td>
    <%
    }
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
   <%
        try
        {
    int id1=auctiondetails.getAuc_details_toplaceid();
    java.util.ArrayList al1=placedao.getFromPlace(id1);
           System.out.println("hii111");          
java.util.Iterator ir1=al1.iterator();
while(ir1.hasNext()){
    System.out.println("hii1101"); 


place= (Place) ir1.next();

    %>
    <td><%=place.getPlace_name()%></td>
    <%
    }
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
    
    <td><%=auctiondetails.getAuc_details_fromdate()%></td>
    <td><%=auctiondetails.getAuc_details_todate()%></td>
    <td><%=auctiondetails.getAuc_details_no_of_adult()%></td>
    <td><%=auctiondetails.getAuc_details_no_of_children()%></td>
    <td><a href="UpdateAuctionDetails.jsp?id=<%=auctiondetails.getAuc_details_id()%>">Update</a></td> 
    <td><a href="DeleteAuctionDetails.jsp?id=<%=auctiondetails.getAuc_details_id()%>">Delete</a></td>
    </tr>                        
   <%
       }
   %>
   </table>

   <%
    
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
        </div>
    </body>
</html>



