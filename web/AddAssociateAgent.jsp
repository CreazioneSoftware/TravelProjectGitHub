<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Associate_Agent_Dao" %>
<%@page import="com.pojo.Associate_Agent" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Associate Agent</title>
    </head>
    <body>
      
       
        <%
            try{
                
                Associate_Agent_Dao asso_agent_dao=new Associate_Agent_Dao();
                Associate_Agent asso_age=new Associate_Agent();
                
                
              String asso_age_name=request.getParameter("asso_age_name");
              String asso_age_firmname=request.getParameter("asso_age_firmname");
              String asso_age_contact =request.getParameter("asso_age_contact");
              String asso_age_email=request.getParameter("asso_age_email");
              String asso_age_joining=request.getParameter("asso_age_joining");
              int travel_age_id=Integer.parseInt(request.getParameter("travel_age_id"));
              int address_id=Integer.parseInt(request.getParameter("address_id"));
            
            
              
              
                  asso_age.setAsso_age_name(asso_age_name);
                  asso_age.setAsso_age_firmname(asso_age_firmname);
                  asso_age.setAsso_age_contact(asso_age_contact);
                  asso_age.setAsso_age_email(asso_age_email);
                  asso_age.setAsso_age_joining(asso_age_joining);
                  asso_age.setTravel_age_id(travel_age_id);
                  asso_age.setAddress_id(address_id);
                  
                 
              
     
     boolean b=asso_agent_dao.AddAssociate(asso_age);
     if(b){
     
     System.out.println("Associate Added Successfully");
     
     %>
            
            <script>
         alert("Associate agent Added");
         window.location.href="AssociateAgent.jsp";
         
     </script>
        
              <%
     
     }
         }catch(Exception e){
         
         System.out.println(""+e);
         }
     
     %>
            
        
        
    </body>
</html>
