<%@page import="com.pojo.Guide_Pojo"%>
<%@page import="com.dao.Guide_DAO"%>
<%@include file="conn.jsp" %>
<%@include file="MasterGuide.jsp" %>
<%@page import="com.pojo.Country_Pojo"%>
<%@page import="com.pojo.State_Pojo"%>
<%@page import="com.pojo.Place"%>
<%@page import="com.pojo.Travel_Agents"%>
<!--%@page import="com.dao.Place_Dao" %-->
<html>
<head>
<title> Guide Form</title>
 <jsp:useBean id="countrydao" class="com.dao.Country_DAO"></jsp:useBean>
        <jsp:useBean id="c" class="com.pojo.Country_Pojo"></jsp:useBean>
        <jsp:useBean id="statedao" class="com.dao.State_DAO"></jsp:useBean>
        <jsp:useBean id="state" class="com.pojo.State_Pojo"></jsp:useBean>
          <jsp:useBean id="placedao" class="com.dao.Place_Dao"></jsp:useBean>
        <jsp:useBean id="p1" class="com.pojo.Place"></jsp:useBean>
        <jsp:useBean id="travelagedao" class="com.dao.Travel_Agents_Dao"></jsp:useBean>
        <jsp:useBean id="t" class="com.pojo.Travel_Agents"></jsp:useBean>
        <script type="text/javascript">
            
            function guidename()
	{
		var v=document.getElementById("guideid").value;
 		if(v.length==0)
		{
			document.getElementById("gmsg").innerHTML="Enter Guide name";
			document.getElementById("guideid").focus(true);
		}
		else
		{
			document.getElementById("gmsg").innerHTML=" ";
        var u=document.getElementById("guideid").value;
	var number=/^[a-z A-Z]+$/;
	if(u.match(number))
	{
		return true;
	}
	else
	{
		document.getElementById("gmsg").innerHTML="Enter only Alphabet";
 		document.getElementById("guideid").focus(true);
 		document.getElementById("guideid").value=" ";
 		return false;
 	}
 	}
 		}
            function contact()
{ 	
  		
 		var c=document.getElementById("cname").value;
 		if(c.length==0)
 		{
 			document.getElementById("ucmsg").innerHTML="Enter Contact";
 			document.getElementById("cname").focus(true);
		}
 		else
  		{
 			document.getElementById("ucmsg").innerHTML=" ";
		
		
	var c1=document.getElementById("cname").value;
	var number=/^[0-9]+$/;
	if(c1.match(number)&& c1.length==10)
 	{
 		return true;
 	}
 	else
 	{
 		document.getElementById("ucmsg").innerHTML="Enter only 10 digit";
 		document.getElementById("cname").focus(true);
 		document.getElementById("cname").value=" ";
 		return false;
 	}
 	}
} 
function efun()
 	{
 		var e=document.getElementById("uemail").value;
 		if(e.length==0)
 		{
 			document.getElementById("emsg").innerHTML="Enter email";
 			document.getElementById("uemail").focus(true);
 		}
 		else
 		{
 			document.getElementById("uemail").innerHTML=" ";
 	
 		var e1=document.getElementById("uemail").value;
  		var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/; 
                 //var mailformat=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(myForm.emailAddr.value);
 		if(e1.match(mailformat))
 		{
		return true;
  		}
 		else	
 		{
 		document.getElementById("emsg").innerHTML="Enter valid Email";
 		document.getElementById("uemail").focus(true);
 		document.getElementById("uemail").value=" ";
 		return false;
		}  
 	}
}  
 
       function address()
	{
		var v=document.getElementById("addid").value;
		if(v.length==0)
		{
			document.getElementById("amsg").innerHTML="Enter Guide address";
			document.getElementById("addid").focus(true);
		}
		if(v.length!=0)
		{
			document.getElementById("amsg").innerHTML=" ";
		}
	}
       
       
	function checkblank()
	{
		if(document.getElementById('guideid','uemail','cname','addid').value=="")
 		{
 			alert('Please try again!!');
 			return false;
 		}
 	}
         function getState(val) {
 	$.ajax({
 	type: "POST",
 	url: "get_state.jsp",
 	data:'country_id='+val,
 	success: function(data){
 		$("#state-list").html(data);
 	}
 	});
} 
         </script>
</head>
<style>
	 #did
	{ 
	 	border-radius:3%;
	 	width:33%;
	 	height:96%;
	 	align:center;
	 	margin-left:35%;
	 	margin-top:3%;
	 	
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
         span
 	{
 		color:red;
 		margin-left: 5%;
                 height: 2%;
                 
 	}
</style>
<body background="a.jpg">
 
<form name='frm' action='AddGuide.jsp' method='POST' onsubmit="return checkblank()">
<div align="center" id="did">
<h1 id="htxt">Guide Form</h1>

<div id="did1">
    
    <select name="travel_age_id">
                    <%
                        try
                        {
                   java.util.ArrayList al=travelagedao.getAllTravelage(t);
                   
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){
t= (Travel_Agents) ir.next();
%>

<option value="<%=t.getTravel_age_id()%>"><%=t.getTravel_age_name()%></option>
                        <%
 
 
} 
} 
 catch(Exception e)
{ 
      System.out.println("Error is"+e);
}
                    
                    
                    
                    %>
                        
                        
                         
                     </select>
                     
    <input type="text" name="guide_name" value="" placeholder="Guide Name" id="guideid" onblur="guidename()"/><br><br>
    <span id="gmsg" class="errormsg"></span><br>
    <input type="text" name="guide_email" placeholder="Guide Email" id="uemail" value="" onblur="efun()"/><br><br>
    <span  id="emsg" class="errormsg"></span><br>
<input type="text" name="guide_contact" placeholder="Guide Contact" id="cname" value="" onblur="contact()"/><br><br>
<span id="ucmsg" class="errormsg"></span><br>
<input type="text" name="guide_address" placeholder="Guide Address" id="addid" value="" onblur="address()"/><br><br>
<span id="amsg" class="errormsg"></span><br>


<select name="country_id">
                    <%
                        try
                        {
                   java.util.ArrayList al=countrydao.getAllCountry();
                   
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){
c= (Country_Pojo) ir.next();
%>

<option value="<%=c.getCountry_id()%>"><%=c.getCountry_name()%></option>
                        <%


}
}
 catch(Exception e)
{
    System.out.println("Error is"+e);
}
                    
                    
                    
                    %>  `
                        
                        
                        
                    </select>
                    
                    <select name="state_id" id="state-list"> 
                    
                          <%
            try
            { 
                                   
                               System.out.println("hii");
                             //int id=Integer.parseInt(request.getParameter("country_id"));
                           System.out.println("hii1");
                             // guide.setCountry_id(id);
                    java.util.ArrayList al=statedao.getAllState();
                   System.out.println("hii5");
java.util.Iterator ir =al.iterator();
while(ir.hasNext()){ 
state= (State_Pojo)ir.next();
%> 
 
<option value="<%=state.getState_id()%>"><%=state.getState_name()%></option>
                         <%
 
 
} 
             }
             catch(Exception e)
             {
                 System.out.println("Error is  "+e);
             }
         
             %>     
            
                    </select>
                    
                    <select name="place_id">
                    <%
                        try
                        {
                   java.util.ArrayList al=placedao.getAllPlaces();
                   
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){
p1= (Place) ir.next();
%>

<option value="<%=p1.getPlace_id()%>"><%=p1.getPlace_name()%></option>
                        <%


}
}
 catch(Exception e)
{
    System.out.println("Error is"+e);
}
 %>                   
                    </select>
                   
<!--label for="country">Country</label> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="country_name">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<option value="India">India</option>
			<option value="Japan">Japan</option>
			<option value="Austrelia">Austrelia</option>
			<option value="America">America</option>
			<option value="Africa">Africa</option>

</select><br><br-->

<input type="submit" id="bid" name="button" value="Submit"/>
<!--a href="AddGuide.jsp">submit</a-->

</div>
</div>
</form>
</body>
</html>