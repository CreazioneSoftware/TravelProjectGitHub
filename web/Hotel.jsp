<%@include file="conn.jsp" %>

<%@page import="com.pojo.Hotel_Category"%>
<%@page import="com.pojo.Country_Pojo"%>
<%@page import="com.pojo.State_Pojo"%>
<%@page import="com.pojo.Place"%>

<html>
<head>
<title> Hotel Form</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="hotelcatdao" class="com.dao.Hotel_Category_Dao"></jsp:useBean>
        <jsp:useBean id="hc" class="com.pojo.Hotel_Category"></jsp:useBean>
         <jsp:useBean id="countrydao" class="com.dao.Country_DAO"></jsp:useBean>
        <jsp:useBean id="c" class="com.pojo.Country_Pojo"></jsp:useBean>
        <jsp:useBean id="statedao" class="com.dao.State_DAO"></jsp:useBean>
        <jsp:useBean id="state" class="com.pojo.State_Pojo"></jsp:useBean>
          <jsp:useBean id="placedao" class="com.dao.Place_Dao"></jsp:useBean>
        <jsp:useBean id="place" class="com.pojo.Place"></jsp:useBean>
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

<form name='frm' action='AddHotel.jsp' method='POST'>
<div align="center" id="did">
<h1 id="htxt">Hotel Form</h1>
<div align="center" id="did1">
<!input type="text" name="vehicle_cat_name" value="" placeholder="Vehicle name"/><br><br>
<input type="text" name="hotel_name" placeholder="hotel Name" value=""/><br><br>
<input type="text" name="hotel_address" placeholder="Hotel Address" value=""/><br><br>
<select name="hotel_cat_id">
                    <%
                        try{
                   // java.util.ArrayList al=hotelcatdao.getAllHotelCategory();
                   java.util.ArrayList al=hotelcatdao.getAllHotelCategory();
                   
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){
hc= (Hotel_Category) ir.next();
%>
<option value="<%=hc.getHotel_cat_id()%>"><%=hc.getHotel_cat_name()%></option>
                        <%



}          
}
catch(Exception e)
{
   System.out.println("Error is"+e);
}
                    %>     
                        
                    </select>

                   
               
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
                    
                    
                    
                    %>
                        
                        
                        
                    </select>
                    <select name="state_id">
                    <%
                        try
                        {
                   java.util.ArrayList al=statedao.getAllState();
                   
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){
state= (State_Pojo) ir.next();
%>

<option value="<%=state.getState_id()%>"><%=state.getState_name()%></option>
                        <%


}
}
 catch(Exception e)
{
    System.out.println("Error is"+e);
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
place= (Place) ir.next();
%>

<option value="<%=place.getPlace_id()%>"><%=place.getPlace_name()%></option>
                        <%


}
}
 catch(Exception e)
{
    System.out.println("Error is"+e);
}
                    
                    
                    
                    %>
                        
                        
                        
                    </select>
        
<input type="text" name="hotel_description" placeholder="Hotel Description" value=""/><br><br>

<input type="submit" id="bid" name="button" value="Submit"/>
</div>
</div>
    
    
    
</form>
    


</body>
</html>