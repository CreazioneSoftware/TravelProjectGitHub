<%-- 
    Document   : UpdateGuide
    Created on : Dec 4, 2017, 12:26:48 PM
    Author     : Samiksha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Guide_DAO"%>
<%@page import="com.pojo.Guide_Pojo"%>
<%@page import="com.pojo.Country_Pojo"%>
<%@page import="com.pojo.State_Pojo"%>
<%@page import="com.pojo.Place"%>
<%@page import="com.pojo.Travel_Agents"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <jsp:useBean id="guidedao" class="com.dao.Guide_DAO"></jsp:useBean>
        <jsp:useBean id="guide" class="com.pojo.Guide_Pojo"></jsp:useBean>

<jsp:useBean id="countrydao" class="com.dao.Country_DAO"></jsp:useBean>
        <jsp:useBean id="c" class="com.pojo.Country_Pojo"></jsp:useBean>
        <jsp:useBean id="statedao" class="com.dao.State_DAO"></jsp:useBean>
        <jsp:useBean id="state" class="com.pojo.State_Pojo"></jsp:useBean>
          <jsp:useBean id="placedao" class="com.dao.Place_Dao"></jsp:useBean>
        <jsp:useBean id="p1" class="com.pojo.Place"></jsp:useBean>
        <jsp:useBean id="travelagedao" class="com.dao.Travel_Agents_Dao"></jsp:useBean>
        <jsp:useBean id="t" class="com.pojo.Travel_Agents"></jsp:useBean>    </head>
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
        <form name="frm" action="UpdateGuide1.jsp" method="post">
           
        
        <%
           //int guide_id=Integer.parseInt(request.getParameter("guide_id"));
               
    
    
    
     
        try{
    
    int guid_id=Integer.parseInt(request.getParameter("id"));
      out.println("guide id =="+guid_id);
      
    java.util.ArrayList al=guidedao.getAllGuide1(guid_id);
                   
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){ 
guide= (Guide_Pojo) ir.next();
    %>
    <div id="did">
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="guid_id" value="<%=guide.getGuid_id()%>"><br>
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="travel_age_id" value="<%=guide.getTravel_age_id()%>"><br>
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="guide_name" value="<%=guide.getGuide_name()%>"><br>
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="guide_email" value=" <%=guide.getGuide_email()%>"><br>
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="guide_contact" value="<%=guide.getGuide_contact()%>"><br>
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="guide_address" value="<%=guide.getGuide_address()%>"><br>
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="place_id" value="<%=guide.getPlace_id()%>"><br>
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="state_id" value=" <%=guide.getState_id()%>"><br>
   &nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="country_id" value=" <%=guide.getCountry_id()%>"><br>
    
   <input type="submit" value="update" name="button" id="bid"><br><br>
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
