<%-- 
    Document   : DeleteQuotation
    Created on : Dec 13, 2017, 3:20:16 PM
    Author     : RUSHIKESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Quotation"%>
<%@page import="com.dao.Quotation_details"%>
<%@page import="com.pojo.Quotation_pojo"%>
<%@page import="com.pojo.Quotation_details_pojo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
     <form action="" method="">
       <table border="5" align="center"> 
          <tr>
              <td>Enter Quotation id:</td><td><input type="text" name="qid" value="" placeholder="Enter Quot Id"></td> 
          </tr>
          <tr>
            <td colspan="2" align="center"><input type="submit" name="submit" value="SUBMIT"></td>
          </tr>
       </table>
     </form>
        <%
         try
         {

             dao.Quotation q=new Quotation();
             pojo.Quotation_pojo qp=new Quotation_pojo();
             int qid=Integer.parseInt(request.getParameter("qid"));
             
            qp.setQuot_id(qid);
            boolean b=q.deleteQuotation(qp);
            if(b)
            {
              System.out.println("Quotation Deleted for id"+qid);
              %>
               <script>
                 alert("Data Deleted");      
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
