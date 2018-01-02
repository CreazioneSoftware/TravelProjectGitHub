

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Hotel_dao" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      
    </head>
    <body>
        <%
            Hotel_dao hd=new Hotel_dao();
            int Hotel_id=Integer.parseInt(request.getParameter("id"));
            boolean id=hd.delete(Hotel_id);
            if(id)
            {
                response.sendRedirect("Hotel_form.jsp");
                out.println("Deleted");
            }
            else
            {
                out.println("Error");
            }
        %>
        
        
    </body>
</html>
