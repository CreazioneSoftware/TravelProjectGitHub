<%-- 
    Document   : ViewVehicle
    Created on : Dec 4, 2017, 11:01:08 AM
    Author     : Samiksha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="MasterVehicle.jsp" %>

<%@page import="com.pojo.Vehicle"%>
<%@page import="com.pojo.Vehicle_Category" %>
<!DOCTYPE html>
<html>    <head>
         <jsp:useBean id="vehiclecatdao" class="com.dao.Vehicle_category_Dao"></jsp:useBean>
        <jsp:useBean id="vc" class="com.pojo.Vehicle_Category"></jsp:useBean>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       
        <style>
        h1{
            
            font-style: oblique;
        }
        #tabid
        {
            margin-top: 5%;
            background-color:cadetblue;
            
        }
    </style>
    </head>
    
    <body>
        <div align="center">
               <table align="center" border="2" id="tabid"> <tr>
                           <td>Vehicle_id</td>
       <td>Vehicle_cat_id</td>
      <td>Vehicle_no</td>
       <td>Vehicle_Driver</td>
           <td>Vehicle_Model</td>
        <td>Vehicle_Company</td>
       <td>Vehicle_Status</td>
           <td>Update</td>
               <td>Delete</td>
  </tr>
  <%
  try
  {
      java.util.ArrayList al=vehicledao.getAllVehicles(v);
                   
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){
v= (Vehicle) ir.next();
   %>
           <!--tr><td><!--%ir.getInt("traveage_id");%></td></tr-->
          <tr><th><%=v.getVehicle_id()%></th>
          
                   <%
                        try{
                            int id=v.getVehicle_cat_id();
                   java.util.ArrayList al1=vehiclecatdao.getVehicleCat_name(id);
                   
java.util.Iterator ir1=al1.iterator();
while(ir1.hasNext()){
vc= (Vehicle_Category) ir1.next();
%>
<td><%=vc.getVehicle_cat_name()%></td>
                        <%



}          
}
catch(Exception e)
{
   System.out.println("Error is"+e);
}
                    %> 
              
             <th><%=v.getVehicle_no()%></th>
                <th> <%=v.getVehicle_driver()%></th>
                   <th> <%=v.getVehicle_model()%></th>
                       <th><%=v.getVehicle_company()%></th>
                         <th> <%=v.getVehicle_status()%></th>
                         
                    <th><a href="UpdateVehicle.jsp?id=<%=v.getVehicle_id()%>">Update</a></th> 
                              <!--th><a href="DeleteVehicle.jsp?id=<!--%=v.getVehicle_id()%-->
              <th><a href="DeleteVehicle.jsp?id=<%=v.getVehicle_id()%>">Delete</a></th></tr>
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
        </div>
    </body>
</html>
