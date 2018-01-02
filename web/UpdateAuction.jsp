
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
    <script>
    function myFunction() {
        date = new Date();
    var month = date.getMonth()+1;
    var day = date.getDate();
    var year = date.getFullYear();

if (document.getElementById('date').value ===''){
document.getElementById('date').value = year+'/'+ month + '/' +day;
}

    }
    </script>
    <body background="img1.jpg">
        <form name="frm" action="UpdateAuction1.jsp" method="post">
           
        
        <%
           
        try{
    
    int auction_id=Integer.parseInt(request.getParameter("id"));
      //out.println("address id =="+address_id);
      
    java.util.ArrayList al=auctiondao.getAllAuction1(auction_id);
                   
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){ 
auction= (Auction_Pojo) ir.next();
    %>
    <div id="div1" align="center">
                <div id="div2" align="center"	>
                    <table>
                    <tr><td><label>Auction Id:</label></td><td> <input type="text" name="auc_id" value="<%=auction.getAuc_id()%>"><br><br></td></tr>
                    <tr><td><label>Auction Created Date:</label></td><td><input type="text" name="auc_created_date" value="<%=auction.getAuc_created_date()%>"><br><br></td></tr>
                    <tr><td><label>Auction Status:</label></td><td><input type="text" name="auc_status" value="<%=auction.getAuc_status()%>"><br><br></td></tr>
                    <tr><td><label>Auction Description:</label></td><td><input type="text" name="auc_description" value="<%=auction.getAuc_description()%>"><br><br></td></tr>
                    <tr><td><label>Auction Budget:</label></td><td><input type="text" name="auc_budget" value="<%=auction.getAuc_budget()%>"><br><br></td></tr>
                    <tr><td><label>Customer Id:</label></td><td><input type="text" name="cust_id" value="<%=auction.getCust_id()%>"><br><br></td></tr>
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
