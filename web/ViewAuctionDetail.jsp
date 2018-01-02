
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
<title>Auction</title>
<jsp:useBean id="customerdao" class="com.dao.Customer_DAO"></jsp:useBean>
        <jsp:useBean id="customer" class="com.pojo.Customer_Pojo"></jsp:useBean>
<style>
div {
    background-color: rgba(0,0,0,0.57);
    width: 500px;
    height:500px;
    border: 25px black;
    padding: 25px;
     margin-top: 100px;
   
    margin-left: 400px;
    border-radius: 50px;
}
#auc{
    width:60%;
    height:8%;
    
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
   width:30%;
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
}

</style>

</head>
<body background="a.jpg"">
<form name="frm" action="ViewAuctionDetails.jsp" method="POST">

<div align="center" id=1>
<h1>Acution Details</h1><br><br>

<input type="text" name="auc_id" value="" placeholder="Enter Auction Id"><br><br>

<input type="submit" name="s" class="button" value="View">

</div>
</body>
</html>
