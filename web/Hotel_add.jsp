

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@page import="com.dao.Hotel_dao" %>
<%@page import="com.pojo.Hotel_pojo" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title></title>
    </head>
    <body>
        
        
        <%
        try{
            Hotel_dao hd=new Hotel_dao();
            Hotel_pojo hp=new Hotel_pojo();
            
            String Hotel_name=request.getParameter("Hotel_name");
            String Owner_name=request.getParameter("Hotel_owner_name");
            String Mobile_number=request.getParameter("Hotel_mob_number");
            String Email_id=request.getParameter("Hotel_mail_id");
            String Country=request.getParameter("country");
            String State=request.getParameter("state");
            String City=request.getParameter("city");
            String Category=request.getParameter("category");
            
            hp.setHotel_name(Hotel_name);
            hp.setOwner_name(Owner_name);
            hp.setMobile_number(Mobile_number);
            hp.setEmail_id(Email_id);
            hp.setCountry(Country);
            hp.setState(State);
            hp.setCity(City);
            hp.setHotel_category(Category);
            
            boolean b=hd.Add_hotel(hp);
            if(b)
            {
                
                out.println("Save");
                response.sendRedirect("Hotel_form.jsp");
            }
            else
            {
                
                out.println("Not save");
                
            }
            
        }catch(Exception e)
        {
            out.println("Error is "+e);
        }
        %>
    </body>
</html>
