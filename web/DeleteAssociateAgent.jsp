<%-- 
    Document   : DeleteAssociateAgent
    Created on : Dec 5, 2017, 3:49:42 PM
    Author     : Dnyaneshwar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page  import="com.dao.Associate_Agent_Dao" %>
<%@page import="com.pojo.Associate_Agent" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form name="DeleteAssociateAgent" method="post" action="">
            <tr>
              <td> Associate Agent Id: </td>
              <td> <input type="number" name="asso_age_id" value="" placeholder="Enter Associate Agent id..."> </td> <br> <br>
            </tr> 
            <tr>
              <td>
                 <input type="submit" name="submit" value="DELETE ASSOCIATE">
              </td>
            </tr>
            
        </form>
        
    </body>
</html>

<%
            try{
                
                Associate_Agent_Dao asso_agent_dao=new Associate_Agent_Dao();
                Associate_Agent asso_age=new Associate_Agent();
                
               int  asso_age_id= Integer.parseInt(request.getParameter("asso_age_id"));  
               
               asso_age.setAsso_age_id(asso_age_id);
             
     
    boolean b=asso_agent_dao.deleteAssociate(asso_age);
     if(b){
     
     System.out.println("Associate updated Successfully");
     
     %>
            
            <script>
              alert("Associate agent deleted");
          </script>
        
              <%
     
     }
         }catch(Exception e){
         
         System.out.println(""+e);
         }
     
     %>
          
