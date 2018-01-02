<%-- 
    Document   : UpdateVehicle
    Created on : Dec 5, 2017, 3:11:23 PM
    Author     : Samiksha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Vehicle_Dao"%>
<%@page import="com.pojo.Vehicle"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:useBean id="vehicledao" class="com.dao.Vehicle_Dao"></jsp:useBean>
        <jsp:useBean id="v" class="com.pojo.Vehicle"></jsp:useBean>
    </head>
    <style>
       #did
	{
		border-radius:3%;
		width:33%;
		height:98%;
		align:center;
		margin-left:35%;
		margin-top:3%;
                margin-bottom: 3%;
		
		 background: rgba(0, 0, 0, 0.57);
		
	}
	#did1
	{
		
	}
	input
	{	
		width:85%;
		height:25px;
		font-size:15px;
		margin-top:4%;	
	}

	#bid
	{
		color:white;
		background-color:green;
		width:70%;
		height:30px;
		border-radius:25px;
		border:none;
                margin-left:15%;
                
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
    <body>
       
        <form name="frm" action="UpdateVehicle1.jsp" method="post">
           
        
        <%
           //int guide_id=Integer.parseInt(request.getParameter("guide_id"));
               
    
    
    
     
        try{
    
    int vehicle_id=Integer.parseInt(request.getParameter("id"));
      out.println("vehicle id =="+vehicle_id);
      
    java.util.ArrayList al=vehicledao.getAllVehicles1(vehicle_id);
                   
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){ 
v= (Vehicle) ir.next();
    %>
    
    <div id="did">
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="vehicle_id" value="<%=v.getVehicle_id()%>"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="vehicle_cat_id" value="<%=v.getVehicle_cat_id()%>"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="vehicle_no" value="<%=v.getVehicle_no()%>"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="vehicle_driver" value=" <%=v.getVehicle_driver()%>"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="vehicle_model" value="<%=v.getVehicle_model()%>"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="vehicle_company" value="<%=v.getVehicle_company()%>"><br>
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="vehicle_status" value=" <%=v.getVehicle_status()%>"><br>
   
   
        <input type="submit" value="Update" name="button" id="bid"><br><br>
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
