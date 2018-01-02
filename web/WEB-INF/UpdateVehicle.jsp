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
    <body>
       
        <form name="frm" action="UpdateVehicle1.jsp" method="post">
           
        
        <%
           //int guide_id=Integer.parseInt(request.getParameter("guide_id"));
               
    
    
    
     
        try{
    
    int vehicle_id=Integer.parseInt(request.getParameter("id"));
      out.println("vehicle id =="+vehicle_id);
      
    java.util.ArrayList al=vehicledao.getAllVehicles(v);
                   
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){ 
v= (Vehicle) ir.next();
    %>
    <input type="text" value="<%=v.getVehicle_id()%>"><br>
    <input type="text" value="<%=v.getVehicle_cat_id()%>"><br>
    <input type="text" value="<%=v.getVehicle_no()%>"><br>
    <input type="text" value=" <%=v.getVehicle_driver()%>"><br>
    <input type="text" value="<%=v.getVehicle_model()%>"><br>
    <input type="text" value="<%=v.getVehicle_company()%>"><br>
    <input type="text" value=" <%=v.getVehicle_status()%>"><br>
   
    
    <input type="submit" value="update" name="button">
    <%
        
     }
     
}catch(Exception e){
         
         System.out.println(""+e);
         }    
     %> 
        </form>
    </body>
</html>
