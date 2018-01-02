

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Address_DAO"%>
<%@page import="com.pojo.Address_Pojo"%>
<%@page import="com.dao.City_DAO"%>
<%@page import="com.pojo.City_Pojo"%>
<%@page import="com.dao.State_DAO"%>
<%@page import="com.pojo.State_Pojo"%>
<%@page import="com.dao.Country_DAO"%>
<%@page import="com.pojo.Country_Pojo"%>
<%@include file="MasterAddress.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <jsp:useBean id="addressdao" class="com.dao.Address_DAO"></jsp:useBean>
        <jsp:useBean id="address" class="com.pojo.Address_Pojo"></jsp:useBean>
        <jsp:useBean id="citydao" class="com.dao.City_DAO"></jsp:useBean>
        <jsp:useBean id="city" class="com.pojo.City_Pojo"></jsp:useBean>
        <jsp:useBean id="statedao" class="com.dao.State_DAO"></jsp:useBean>
        <jsp:useBean id="state" class="com.pojo.State_Pojo"></jsp:useBean>
        <jsp:useBean id="countrydao" class="com.dao.Country_DAO"></jsp:useBean>
        <jsp:useBean id="country" class="com.pojo.Country_Pojo"></jsp:useBean>
    </head>
    <style>
        
        #table1{
            align:center;
            width:70%;
            margin-left:15%;
            margin-top:3%;
            background:rgba(0,0,0,0.30);
        }
        </style>
    <body background="img3.jpg">
       
        <table border="2" id="table1"> <tr>
        <td>Home</td>
        <td>Landmark</td>
        <td>City</td>
        <td>State</td>
        <td>Country</td>
        <td>PinCode</td>
        <td>Update</td>
        <td>Delete</td>
        
       
   </tr>
   <%
   try
   {
       java.util.ArrayList al=addressdao.getAllAddress();
                   
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){
address= (Address_Pojo) ir.next();

   %>
           <!--tr><td><!--%ir.getInt("traveage_id");%></td></tr-->
           
           <tr><th><%=address.getAddress_home()%></th>
             <th> <%=address.getAddress_landmark()%></th>
              <%
        try
        {
    int id1=address.getAddress_city();
    java.util.ArrayList al1=citydao.getCityName(id1);
           System.out.println("hii111");          
java.util.Iterator ir1=al1.iterator();
while(ir1.hasNext()){
    System.out.println("hii1101"); 


city= (City_Pojo) ir1.next();

    %>
    <th><%=city.getCity_name()%></th>
    <%
    }
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
    <%
        try
        {
    int id1=address.getAddress_state();
    java.util.ArrayList al1=statedao.getStateName(id1);
           System.out.println("hii111");          
java.util.Iterator ir1=al1.iterator();
while(ir1.hasNext()){
    System.out.println("hii1101"); 


state= (State_Pojo) ir1.next();

    %>
    <th><%=state.getState_name()%></th>
    <%
    }
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
    <%
        try
        {
    int id1=address.getAddress_country();
    java.util.ArrayList al1=countrydao.getCountryName(id1);
           System.out.println("hii111");          
java.util.Iterator ir1=al1.iterator();
while(ir1.hasNext()){
    System.out.println("hii1101"); 


country= (Country_Pojo) ir1.next();

    %>
    <th><%=country.getCountry_name()%></th>
    <%
    }
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
                 
                         <th> <%=address.getAddress_pincode()%></th>
                         
                              <th><a href="UpdateAddress.jsp?id=<%=address.getAddress_id()%>">Update</a></th> 
                              <th><a href="DeleteAddress.jsp?id=<%=address.getAddress_id()%>">Delete</a></th></tr>
   <%
       }
   %>
   </table>

   <%
    
   }
   catch(Exception e)
   {
        e.printStackTrace();
   }
   %>
    </body>
</html>

