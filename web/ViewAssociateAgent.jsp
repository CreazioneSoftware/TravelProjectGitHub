
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Associate_Agent_Dao"%>
<%@page import="com.pojo.Associate_Agent"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
         
  
    </head>
    <body>
         <form name="viewAssociateAgent.jsp" action="" method="post">
   
        <table border="2"> <tr>
        <td>asso_age_id</td>
        <td>asso_age_name</td>
        <td>asso_age_firmname</td>
        <td>ass_age_Contact</td>
        <td>asso_age_email</td>
        <td>asso_age_joining</td>
       <td>travel_age_id</td>
       <td>address_id</td>
       
                
   </tr>
   <%
   
   
         Associate_Agent_Dao  asso_agent_dao=new Associate_Agent_Dao();
            
            ResultSet rs=asso_agent_dao.getAssociateAgent();
            while(rs.next())
            {
   %>
        
           
          <tr>
          <th> <%=rs.getInt(1) %> </th>
          
          <th> <%=rs.getString(2)%></th>
           
          <th> <%=rs.getString(3)%></th>
          
          <th> <%=rs.getString(4)%></th>
          
          <th><%=rs.getString(5)%></th>
          
          <th> <%=rs.getString(6)%></th>
          
           <th> <%=rs.getInt(7)%></th>
           
            <th> <%=rs.getInt(8)%></th>
          
             <td>  <a href="AssociateAgent.jsp"> Insert Agent </a> </td>
           <td>  <a href="finalupdatedAssociate.jsp"> Edit Agent </a> </td>
            <td>  <a href="DeleteAssociateAgent.jsp"> Delete Agent </a> </td>
             
         
   </tr>
   <%
       }
   %></table>

        </form>
    </body>
</html>
