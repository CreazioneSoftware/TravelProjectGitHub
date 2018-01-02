

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Agent_dao" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            int Agent_id=Integer.parseInt(request.getParameter("id"));
            Agent_dao ad=new Agent_dao();
            boolean result=ad.delete(Agent_id);
            if(result)
            {
                response.sendRedirect("Agent_view.jsp");
                out.println("Deleted");
            }
            else
            {
                out.println("Not Deleted");
            }
        %>
    </body>
</html>
