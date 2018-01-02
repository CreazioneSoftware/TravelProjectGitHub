

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Customer_DAO"%>
<%@page import="com.pojo.Customer_Pojo"%>

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
</head>
<body background="a.jpg" onload="myFunction()">
<form name="frm" action="AddAuction.jsp" method="POST">

<div align="center" id=1>
<h1>Acution</h1><br><br>
<label>Customer Id:</label>
<input type="text" name="cust_id" value=""><br><br>
<label for="bday">Auction created Date:</label>
<input type="text" id="date" name="auc_created_date"><br><br>
<input type="text" id="auc" name="auc_description" width="60%" value="" placeholder=Auction_Description  ><br><br>
<input type="text" id="auc" name="auc_budget" value="" placeholder=Auction_Budget><br><br>

 <label for="Auction Status">Auction Status</label>
<select name="auc_status">
  <option value="open">open</option>
  <option value="close">close</option>
  
</select><br><br>


<input type="submit" name="s" class="button" value="Submit">

</div>
</body>
</html>