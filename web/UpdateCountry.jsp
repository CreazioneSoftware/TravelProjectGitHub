<%-- 
    Document   : UpdateCountry
    Created on : Dec 4, 2017, 10:01:16 PM
    Author     : RUSHIKESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="pojo.CountryPojo"%>
<%@page import="dao.CountryDao"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="updatecountry" action="" meyhod="post">
        <h1><center>Update Country Form</center></h1>
        <tr>
            <td>Country ID</td><td><input type="number" name="country" value=""></td> <br>
            <td>Updated Name</td><td><input type="text" name="ucountry" value=""></td> <br>
            <td> <input type="submit" name="submit" value="Update"> </td>
         </tr>
         
       </form>
        <%
        try {
           CountryDao c=new CountryDao();
           CountryPojo cp=new CountryPojo();
           
           int  countryid= Integer.parseInt(request.getParameter("country"));
           String ucountry=request.getParameter("ucountry"); 
          cp.setCountry_id(countryid);
          cp.setCountry_name(ucountry);
          boolean b=c.updateCountry(cp);
          if(b)
          {
            System.out.println("COUNTRY UPDATED SUCCESSFULLY....");
          
        
        %>
        <script>
        alert("Country Uodated Successfully....");    
        </script>
        <%
            }
        }
        catch(Exception e)
        {
          System.out.println("Exception is "+e);
        }
        
        %>
    </body>
</html>
