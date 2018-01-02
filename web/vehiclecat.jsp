<%@include file="conn.jsp" %>
<html>
<head>
<title> Vehicle Category Form</title>

</head>
<style>
	#did
	{
		border-radius:3%;
		width:33%;
		height:90%;
		align:center;
		margin-left:35%;
		margin-top:1%;
		background: rgba(0, 0, 0, 0.50);
		
	}
	input
	{	
		width:85%;
		height:35px;
		font-size:15px;
		margin-top:3%;	
	}

	#bid
	{
		color:white;
		background-color:green;
		width:85%;
		height:30px;
		border-radius:25px;
		border:none;
	}

	#htxt
	{	
		
		color:white;
		font-style:arial;
		margin-top:5%;
		
	}
body
	{
		background-repeat:no-repeat;
		background-size:1500px 900px;
	}

</style>
<body background="b.jpg">

<form name='frm' action='AddVehiclecat.jsp' method='GET'>
<div align="center" id="did">
<h1 id="htxt">Vehicle category Form</h1>
<div align="center" id="did1">
<input type="text" name="Vehicle_cat_name" value="" placeholder="Vehicle cat name"/><br><br>


<input type="submit" id="bid" name="button" value="Submit"/>
</div>
</div>
</form>
    


</body>
</html>