

<%@include file="conn.jsp" %>
<%@page import="com.pojo.Auction_Pojo"%>
<%@page import="com.pojo.Place" %>
<html>
    <head><meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<title>Auction Details</title>
<jsp:useBean id="placedao" class="com.dao.Place_Dao"></jsp:useBean>
<jsp:useBean id="p" class="com.pojo.Place"></jsp:useBean>
<jsp:useBean id="auctiondao" class="com.dao.Auction_DAO"></jsp:useBean>
<jsp:useBean id="auction" class="com.pojo.Auction_Pojo"></jsp:useBean>
<style>
div {
    background-color: rgba(0,0,0,0.57);
    width: 800px;
    height:500px;
    border: 25px black;
    padding: 25px;
     margin-top: 100px;
   
    margin-left: 280px;
    border-radius: 50px;
}
input{
    width:25%;
    height:8%;
    padding-left:4em 
    
}
.button {
    background-color: #4CAF50;
    border: none;
    width:30%;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 12px;
}
select{
   width:20%;
   height:8%;
}
body{
   background-repeat: no-repeat;
      background-size: 1500px 700px;
}
h1{
  color:white;
}
label{
  color:white;
  font-size: 20px;
   font-weight: bold;
}

</style>
</head>
<body>
<form name="frm" action="AddAuctionDetails.jsp" method="POST">

<div align="center" id="1">
<h1>Auction Details</h1><br><br>

<label for="Aucid">Auction Id</label>
<%
   try
   {
        
       java.util.ArrayList al=auctiondao.getAuctionid();
           System.out.println("hii111");          
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){
    System.out.println("hii1101"); 

auction=(Auction_Pojo)ir.next();


   %>
<input type="text" name="auc_id" readonly value="<%=auction.getAuc_id()%>"><br><br>

 <%
    }
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>

<label for="fromdate">From Date:</label>
<input type="date" id="bday" name="auc_details_fromdate">

<label for="todate">To Date:</label>
<input type="date" id="bday" name="auc_details_todate"><br><br><br><br>

<label for="fromplace">From Place</label>
<select name="auc_details_fromplaceid">
    <%
                   java.util.ArrayList al1=placedao.getAllPlaces();
                   
                    java.util.Iterator ir1=al1.iterator();
                    while(ir1.hasNext()){
                        p= (Place) ir1.next();
                    %>
                    <option value="<%=p.getPlace_id()%>"><%=p.getPlace_name()%></option>
                    <%
                        }
    %> 
  
</select>

<label for="toplace">To Place</label>
<select name="auc_details_toplaceid">
    <%
                   java.util.ArrayList al=placedao.getAllPlaces();
                   
                    java.util.Iterator ir=al.iterator();
                    while(ir.hasNext()){
                        p= (Place) ir.next();
                    %>
                    <option value="<%=p.getPlace_id()%>"><%=p.getPlace_name()%></option>
                    <%
                        }
    %> 
  
</select>
<br><br>

 <label for="Adults">Adults</label>
<input type="text" name="auc_details_no_of_adults" value="">
&nbsp;&nbsp;

 <label for="childrens">childrens</label>
 <input type="text" name="auc_details_no_of_children" value="">
<br><br>

<label for="Service Types">Service Types</label>
<select name="auc_details_servicetype">
  <option value="select">select Service Type</option>
  <option value="Hotel">Hotel</option>
  <option value="Airline">Airline</option>
  <option value="Vehivle">vechicle</option>
  <option value="Train">Train</option>
</select><br><br><br><br>
<input type="submit" name="s" class="button" value="Submit">

</div>

</form>
</body>
</html>