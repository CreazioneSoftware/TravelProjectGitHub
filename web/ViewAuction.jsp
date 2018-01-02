

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Auction_DAO"%>
<%@page import="com.pojo.Auction_Pojo"%>
<%@include file="MasterAuction.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <jsp:useBean id="auctiondao" class="com.dao.Auction_DAO"></jsp:useBean>
        <jsp:useBean id="auction" class="com.pojo.Auction_Pojo"></jsp:useBean>
    </head>
    <style>
        
        #table1{
            align:center;
            width:70%;
            margin-left:15%;
            margin-top:3%;
            background:rgba(0,0,0,0.30);
        }
        </style>
    <body background="img3.jpg">
       
        <table border="2" id="table1"> <tr>
        <td>Auction Id</td>
        <td>Auction Created Date</td>
        <td>Auction Status</td>
        <td>Auction Description</td>
        <td>Budget</td>
        <td>Customer Id</td>
        <td>Update</td>
        <td>Delete</td>
        
       
   </tr>
   <%
   try
   {
       java.util.ArrayList al=auctiondao.getAllAuction();
                   
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){
auction= (Auction_Pojo) ir.next();

   %>
           <!--tr><td><!--%ir.getInt("traveage_id");%></td></tr-->
           
           <tr><th><%=auction.getAuc_id()%></th>
             <th> <%=auction.getAuc_created_date()%></th>
             <th> <%=auction.getAuc_status()%></th>
                   <th> <%=auction.getAuc_description()%></th>
                       <th><%=auction.getAuc_budget()%></th>
                         <th> <%=auction.getCust_id()%></th>
                         
                              <th><a href="UpdateAuction.jsp?id=<%=auction.getAuc_id()%>">Update</a></th> 
                              <th><a href="DeleteAuction.jsp?id=<%=auction.getAuc_id()%>">Delete</a></th></tr>
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
    </body>
</html>


