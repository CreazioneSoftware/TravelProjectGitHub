<%-- 
    Document   : updateAssociateAgent
    Created on : Dec 4, 2017, 2:46:45 PM
    Author     : Dnyaneshwar
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Associate_Agent_Dao" %>
<%@page import="com.pojo.Associate_Agent" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
           
        
  
   <body>
       <% 
           Associate_Agent_Dao asso_agent_dao=new Associate_Agent_Dao();
           
           ResultSet rs=asso_agent_dao.getAssociateAgent();
           while(rs.next())
           {
       
       
       
       %>
        <form name=""  action="" method="post" >
            
            <h1><center> Associate Agent Update Form </center></h1>
            
         <table order="5" align="center">
         <tr>
            <tr> <td><input type="number" name="asso_age_id" value="<%=rs.getInt(1)%>" > </td></tr> <br>
            <tr><td> <input type="text" name="asso_age_name" value="<%= rs.getString(2)%>"> </td>></tr><br>
            <tr> <td><input type="text" name="asso_age_firmname" value="<%= rs.getString(3)%>" > </td>></tr><br>
            <tr> <td><input type="text" name="asso_age_contact" value="<%= rs.getString(4)%>" > </td></tr> <br>
            <tr><td><input type="text" name="asso_age_email" value="<%= rs.getString(5)%>" > </td></tr><br>
            <tr> <td><input type="text" name="asso_age_joining" value="<%= rs.getString(6)%>"> </td></tr><br>
            <tr><td><input type="text" name="asso_age_joining" value="<%= rs.getInt(7)%>"> </td></tr><br>
            <tr><td><input type="text" name="asso_age_joining" value="<%= rs.getInt(8)%>"> </td></tr><br>
                  <tr><td colspan="2" align="center"><input type="submit" name="submit" value="Update"></td></tr>
          
        </table>
      </form>
        
   <%
         }
           
            try{
                
            
                  Associate_Agent asso_age=new Associate_Agent();
                
              int  asso_age_id= Integer.parseInt(request.getParameter("asso_age_id"));  
              String asso_age_name=request.getParameter("asso_age_name");
              String asso_age_firmname=request.getParameter("asso_age_firmname");
              String asso_age_contact =request.getParameter("asso_age_contact");
              String asso_age_email=request.getParameter("asso_age_email");
              String asso_age_joining=request.getParameter("asso_age_joining");
          
              
              
             asso_age.setAsso_age_id(asso_age_id);
             asso_age.setAsso_age_name(asso_age_name);
             asso_age.setAsso_age_firmname(asso_age_firmname);
             asso_age.setAsso_age_contact(asso_age_contact);
             asso_age.setAsso_age_email(asso_age_email);
             asso_age.setAsso_age_joining(asso_age_joining);
     
             
          
     boolean b=asso_agent_dao.updateAssociate(asso_age);
     if(b) {
     
     System.out.println("Associate updated Successfully");
     
     
     %>
     
      <script>
              alert("Associate agent updated");
          </script>
            
           
        
              <%
     
     }
     
     
     
       }
            catch(Exception e){
         
         System.out.println(""+e);
         }
     
     %>
            
       
  </body>
</html>
