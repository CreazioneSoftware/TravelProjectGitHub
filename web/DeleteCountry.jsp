<%-- 
    Document   : DeleteCountry
    Created on : Dec 5, 2017, 11:15:47 AM
    Author     : RUSHIKESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="dao.CountryDao" %>
<%@page import="pojo.CountryPojo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
        <form name="deletecountry" action="" method="post">
            <tr>
              <td> Country Id: </td>
              <td> <input type="number" name="countryid" value="" placeholder="Enter Country id..."> </td> <br> <br>
            </tr> 
            <tr>
              <td>
                 <input type="submit" name="submit" value="DELETE COUNTRY">
              </td>
            </tr>
        </form>
    <%
       try{
         CountryDao c=new CountryDao();
         CountryPojo cp=new CountryPojo();
         int id= Integer.parseInt(request.getParameter("countryid"));
          cp.setCountry_id(id);
          boolean b=c.deleteCountry(cp);
          if (b)
          {
            System.out.println("Country Deleted");
           %>
            <script>
              alert("Country deleted successfully");    
             </script>
           <%
          }
       }
       catch(Exception e){
        System.out.println("Exception is "+e);
       }
    
    %>
    </body>
</html>
