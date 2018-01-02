<%@include file="conn.jsp" %>
<%@include file="MasterVehicle.jsp" %>
<%@page import="com.pojo.Vehicle_Category"%>

<html>
<head>
<title> Vehicle Form</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="vehiclecatdao" class="com.dao.Vehicle_category_Dao"></jsp:useBean>
        <jsp:useBean id="vc" class="com.pojo.Vehicle_Category"></jsp:useBean>
        <script type="text/javascript">
            
              function vehiclenum()
            {
		var v=document.getElementById("vehid").value;
		if(v.length==0)
		{
			document.getElementById("vmsg").innerHTML="Enter Vehicle number";
			document.getElementById("vehid").focus(true);
		}
		else
		{
			document.getElementById("vmsg").innerHTML=" ";
                }
            }
             function vehicledriver()
            {
		var v=document.getElementById("vehdriverid").value;
		if(v.length==0)
		{
			document.getElementById("vdmsg").innerHTML="Enter Vehicle Driver";
			document.getElementById("vehdriverid").focus(true);
		}
		else
		{
			document.getElementById("vdmsg").innerHTML=" ";
                        var u=document.getElementById("vehdriverid").value;
                        var number=/^[a-z A-Z]+$/;
                    if(u.match(number))
                    {
                        return true;
                    }
                    else
                    {
                       document.getElementById("vdmsg").innerHTML="Enter valid driver name";
                       document.getElementById("vehdriverid").focus(true);
                       document.getElementById("vehdriverd").value=" ";
                       return false;
                    }
                }
                
            }
              function vehiclemodel()
            {
		var v=document.getElementById("vehmodelid").value;
		if(v.length==0)
		{
			document.getElementById("vmodelmsg").innerHTML="Enter Vehicle Model";
			document.getElementById("vehmodelid").focus(true);
		}
		else
		{
			document.getElementById("vmodelmsg").innerHTML=" ";
                }
            }
            
            function vehiclecompany()
            {
		var v=document.getElementById("compid").value;
		if(v.length==0)
		{
			document.getElementById("vcompanymsg").innerHTML="Enter Vehicle Company";
			document.getElementById("compid").focus(true);
		}
		else
		{
			document.getElementById("vcomapnymsg").innerHTML=" ";
                }
            }
            
            function vehiclestatus()
            {
		var v=document.getElementById("statusid").value;
		if(v.length==0)
		{
			document.getElementById("vstatusmsg").innerHTML="Enter Vehicle status";
			document.getElementById("statusid").focus(true);
		}
		else
		{
			document.getElementById("vstatusmsg").innerHTML=" ";
                }
            }
            
	function checkblank()
	{
		if(document.getElementById('vehid','vehdriverid','vehmodelid','compid','statusid').value=="")
		{
			alert('Please try again!!');
			return false;
		}
	}
            </script>
</head>
<style>
	#did
	{
		border-radius:3%;
		width:33%;
		height:98%;
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
        label{
            color: white;
            margin-right: 22%;
        }
        span
	{
		color:red;
		margin-left: 5%;
                height: 2%;
                
	}
</style>
<body background="b.jpg">

<form name='frm' action='AddVehicle.jsp' method='POST' onsubmit="return checkblank()">
<div align="center" id="did">
<h1 id="htxt">Vehicle Form</h1>
<div align="center" id="did1">
<!input type="text" name="vehicle_cat_name" value="" placeholder="Vehicle name"/><br><br>
<label>Vehicle Category</label><select name="vehicle_cat_id">
                    <%
                        try{
                   java.util.ArrayList al=vehiclecatdao.getVehicleCat();
                   
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){
vc= (Vehicle_Category) ir.next();
%>
<option value="<%=vc.getVehicle_cat_id()%>"><%=vc.getVehicle_cat_name()%></option>
                        <%



}          
}
catch(Exception e)
{
   System.out.println("Error is"+e);
}
                    %>     
                        
                    </select>
<input type="text" name="vehicle_no" value="" placeholder="Vehicle number" id="vehid" onblur="vehiclenum()"/><br><br>
<span id="vmsg" class="errormsg"></span><br>
<input type="text" name="vehicle_driver" placeholder="Vehicle Driver" value="" id="vehdriverid" onblur="vehicledriver()"/><br><br>
<span id="vdmsg" class="errormsg"></span><br>
<input type="text" name="vehicle_model" placeholder="Vehicle Model" value="" id="vehmodelid" onblur="vehiclemodel()"/><br><br>
<span id="vmodelmsg" class="errormsg"></span><br>
<input type="text" name="vehicle_company" placeholder="Vehicle Company"id="compid" value=""onblur="vehiclecompany()"/><br><br>
<span id="vcompanymsg" class="errormsg"></span><br>
<input type="text" name="vehicle_status" placeholder="Vehicle Status" value="" id="statusid" onblur="vehiclestatus()"/><br><br>
<span id="vstatusmsg" class="errormsg"></span><br>
<input type="submit" id="bid" name="button" value="Submit"/>
</div>
</div>
    
    
    
</form>
    


</body>
</html>