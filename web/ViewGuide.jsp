<%-- 
    Document   : ViewGuide
    Created on : Dec 3, 2017, 9:39:57 PM
    Author     : Samiksha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Guide_DAO"%>
<%@page import="com.pojo.Guide_Pojo"%>
<%@include file="MasterGuide.jsp" %>
<%@page import="com.pojo.Country_Pojo"%>
<%@page import="com.pojo.State_Pojo"%>
<%@page import="com.pojo.Place"%>
<%@page import="com.pojo.Travel_Agents"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <jsp:useBean id="countrydao" class="com.dao.Country_DAO"></jsp:useBean>
        <jsp:useBean id="c" class="com.pojo.Country_Pojo"></jsp:useBean>
        <jsp:useBean id="statedao" class="com.dao.State_DAO"></jsp:useBean>
        <jsp:useBean id="state" class="com.pojo.State_Pojo"></jsp:useBean>
          <jsp:useBean id="placedao" class="com.dao.Place_Dao"></jsp:useBean>
        <jsp:useBean id="p1" class="com.pojo.Place"></jsp:useBean>
        <jsp:useBean id="travelagedao" class="com.dao.Travel_Agents_Dao"></jsp:useBean>
        <jsp:useBean id="t" class="com.pojo.Travel_Agents"></jsp:useBean>
         <jsp:useBean id="guidedao" class="com.dao.Guide_DAO"></jsp:useBean>
        <jsp:useBean id="guide" class="com.pojo.Guide_Pojo"></jsp:useBean>
        
         <style>
        #tabid
        {
            margin-top: 5%;
            background-color:cadetblue;
            
        }
    </style>
    </head>
   
    <body>
        <table align="center" border="2" id="tabid"> <tr>
                <td> Guide ID</td>

                <td>Travel_age_id</td>
        <td>Guide_name</td>
        <td>Guide_email</td>
            <td>Guide_Contact</td>
        <td>Guide_Address</td>
                <td>Country</td>
                  <td>State</td>
                   <td>Place</td>
                <td>Update</td>
                <td>Delete</td>
                
                
   </tr>
   <%
   try
   {
       java.util.ArrayList al=guidedao.getAllGuide();
                   
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){
guide= (Guide_Pojo) ir.next();

   %>
           <!--tr><td><!--%ir.getInt("traveage_id");%></td></tr-->
              <tr><th><%=guide.getGuid_id()%></th>
                 <%
                        try
                        {
                   java.util.ArrayList al1=travelagedao.getAllTravelage(t);
                   
java.util.Iterator ir1=al1.iterator();
while(ir1.hasNext()){
t= (Travel_Agents) ir1.next();
%>

                  <td><%=t.getTravel_age_name()%></td>
                        <%
 
 
} 
} 
 catch(Exception e)
{ 
      System.out.println("Error is"+e);
}  
                    %>    
             <th> <%=guide.getGuide_name()%></th>
                <th> <%=guide.getGuide_email()%></th>
                   <th> <%=guide.getGuide_contact()%></th>
                       <th><%=guide.getGuide_address()%></th>
                       <%
                        try
                        {
                            int id=guide.getCountry_id();
                   java.util.ArrayList al2=countrydao.getCountryName(id);
                   
java.util.Iterator ir2=al2.iterator();
while(ir2.hasNext()){
c= (Country_Pojo) ir2.next();
%>

                       <td><%=c.getCountry_name()%></td>
                        <%


}
}
 catch(Exception e)
{
    System.out.println("Error is"+e);
}
                    
                    
                    
                    %>  `
                         <%
            try
            { 
                int id=guide.getState_id();
                    java.util.ArrayList al3=statedao.getStateName(id);
                   System.out.println("hii5");
java.util.Iterator ir3 =al3.iterator();
while(ir3.hasNext()){ 
state= (State_Pojo)ir3.next();
%> 
 
                    <td><%=state.getState_name()%></td>
                         <%
 
 
} 
             }
             catch(Exception e)
             {
                 System.out.println("Error is  "+e);
             }
         
             %>  
             <%
                        try
                        {
                            int id=guide.getPlace_id();
                   java.util.ArrayList al4=placedao.getFromPlace(id);
                   
java.util.Iterator ir4=al4.iterator();
while(ir4.hasNext()){
p1= (Place) ir4.next();
%>

<td><%=p1.getPlace_name()%></td>
                        <%


}
}
 catch(Exception e)
{
    System.out.println("Error is"+e);
}
 %>                   
                             
                              <th><a href="UpdateGuide.jsp?id=<%=guide.getGuid_id()%>">Update</a></th> 
                              <th><a href="DeleteGuide.jsp?id=<%=guide.getGuid_id()%>">Delete</a></th></tr>
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
