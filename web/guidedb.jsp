
<%@include file="conn.jsp" %>
<html>
<head>
<title> Guide Form</title>

</head>
<style>
	#did
	{
		border-radius:3%;
		width:33%;
		height:96%;
		align:center;
		margin-left:35%;
		margin-top:0%;
		
		 background: rgba(0, 0, 0, 0.57);
		
	}
	#did1
	{
		
	}
	input
	{	
		width:85%;
		height:30px;
		font-size:15px;
		margin-top:4%;	
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
	select
	{
		width:60%;
		height:25px;
	}
	label
	{
		color:white;
	}
	body
	{
		background-repeat:no-repeat;
		background-size:1500px 900px;
	}
</style>
<body background="a.jpg">

<form name='frm' action='' method='GET'>
<div align="center" id="did">
<h1 id="htxt">Guide Form</h1>

<div id="did1">
   
<input type="text" name="guide_name" value="" placeholder="Guide Name"/><br><br>
<input type="text" name="guide_email" placeholder="Guide Email" value=""/><br><br>
<input type="text" name="guide_contact" placeholder="Guide Contact" value=""/><br><br>
<input type="text" name="guide_address" placeholder="Guide Address" value=""/><br><br>
<input type="text" name="place_name" placeholder="Place Name" value=""/><br><br>

    <label for="travelagent">Travel Agent</label>  <select name="travel_age_name">
			<option value="Select">Select</option>
                        <option value="John">John</option>
			<option value="Barbal">Barbal</option>
			<option value="Steve">Steve</option>
			<option value="Benten">Benten</option>
			<option value="Roby">Roby</option>
</select><br><br>

<label for="state">State</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="state_name">
			<option value="Select">Select</option>
                        <option value="Maharastra">Maharastra</option>
			<option value="Goa">Goa</option>
			<option value="JammuKashmir">Jammu and Kashmir</option>
			<option value="Karnataka">Karnataka</option>
			<option value="Keral">Keral</option>
</select><br><br>
<label for="country">Country</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="country_name">
			<option value="Select">Select</option>
                        <option value="India">India</option>
			<option value="Japan">Japan</option>
			<option value="Austrelia">Austrelia</option>
			<option value="America">America</option>
			<option value="Africa">Africa</option>

</select><br><br>

<input type="submit" id="bid" name="button" value="Submit"/>


</div>
</div>

</form>
<%
String button1=request.getParameter("button"); 
if(button1!=null)
{
    String travel_age_name=request.getParameter("travel_age_name"); 
String guide_name=request.getParameter("guide_name"); 
String guide_email=request.getParameter("guide_email"); 
String guide_contact=request.getParameter("guide_contact"); 
String guide_address=request.getParameter("guide_address");
String place_name=request.getParameter("place_name"); 

String state_name=request.getParameter("state_name");
String country_name=request.getParameter("country_name"); 
	try
	{
		stmt=conn.prepareStatement("insert into guide1 values (0,?,?,?,?,?,?,?,?)"); 
                stmt.setString(1,travel_age_name);
		stmt.setString(2,guide_name);
		stmt.setString(3,guide_email);
		stmt.setString(4,guide_contact);
		stmt.setString(5,guide_address);
		stmt.setString(6,place_name);
		
		stmt.setString(7,state_name);
		stmt.setString(8,country_name);
		int value=stmt.executeUpdate();
		
		if(value>0)
		{
%>
		<script>
		alert("Save.......");
		</script>
<%
		}
		else
		{
			out.println("some problem is here.....");
		}
	}
	catch(Exception e)
	{
		out.println("Error is"+e);
	}
}
%>
</body>
</html>