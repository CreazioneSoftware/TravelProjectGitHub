<%-- 
    Document   : AddCustomer
    Created on : Dec 2, 2017, 2:01:28 PM
    Author     : RUSHIKESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Customer" %>
<%@page import="com.pojo.Customer_Pojo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                Customer c = new Customer();
                Customer_Pojo cp = new Customer_Pojo();

                String name = request.getParameter("cname");
                String contact = request.getParameter("ccontact");
                String email = request.getParameter("cemail");
               /* String home = request.getParameter("chome");*/
               /* String landmark = request.getParameter("clandmark");*/
              /* int place=Integer.parseInt(request.getParameter("cplace")); 
                int city = Integer.parseInt(request.getParameter("ccity"));
                int state = Integer.parseInt(request.getParameter("cstate"));
                int country = Integer.parseInt(request.getParameter("ccountry"));
               /* String pincode = request.getParameter("cpincode");*/

                cp.setCust_name(name);
                cp.setCust_contact(contact);
                cp.setCust_email(email);
                /*cp.setAddress_id(home);*/
              /*  p.setCity_id(city);
                cp.setState_id(state);
                cp.setCountry_id(country);*/

                boolean b = c.addCustomer(cp);

                if (b) {
                    System.out.println("customer added successfully");
                    %>
                    <script>
                        alert("Customer ADDED...");
                     </script>   
                    <%
                }
            }
        catch (Exception e) {
                System.out.println("Exception is " + e);
            }

        %>

    </body>
</html>
