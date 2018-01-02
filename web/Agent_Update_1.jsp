

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Agent_dao" %>
<%@page import="com.pojo.Agent_pojo" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Agent_dao ad=new Agent_dao();
            Agent_pojo ap=new Agent_pojo();
            
            int A_id=(Integer)session.getAttribute("key");
        String s=request.getParameter("sb");
        if(s!=null)
        {
            String F_name=request.getParameter("Agent_fname");
                String L_name=request.getParameter("Agent_lname");
                String C_name=request.getParameter("Agent_cname");
                
                int country_id=Integer.parseInt(request.getParameter("country"));
                int state_id=Integer.parseInt(request.getParameter("state"));
                int city_id=Integer.parseInt(request.getParameter("city"));
                String mobile_number=request.getParameter("a_mobile");
                 
                String email=request.getParameter("Agent_Mail");
                ap.setA_fname(F_name);
                ap.setA_lname(L_name);
                ap.setA_cname(C_name);
                ap.setA_country(country_id);
                ap.setA_state(state_id);
                ap.setA_city(city_id);
                ap.setA_number(mobile_number);
                ap.setA_email(email);
                
        boolean update=ad.update(ap, A_id);
        if(update)
        {
            response.sendRedirect("Agent_form.jsp");
            out.println("Update");
        }
        else
        {
            out.println("Not save");
        }
        }
    %>
    </body>
</html>
