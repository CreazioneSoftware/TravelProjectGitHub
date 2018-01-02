<%-- 
    Document   : AddQuotation
    Created on : Dec 12, 2017, 5:24:26 PM
    Author     : RUSHIKESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Quotation"%>
<%@page import="com.pojo.Quotation_pojo"%>
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
                    <td> Quot Id:</td>
                    <td><input type="text" name="id" value=""></td>
                </tr>   

                <tr>
                    <td> Quot Total Amount:</td>               
                    <td><input type="text" name="amount" value=""></td>
                </tr>

                <tr>
                    <td>Auction Id:</td>
                    <td><input type="text" name="auctionid" value=""></td>
                </tr>

                <tr>
                    <td> Travel Age Id:</td>

                    <td><input type="text" name="travelageid" value=""></td>
                </tr>

                <tr>
                    <td colspan="2" align="center"><input type="submit" name="submit" value="submit"></td>
                </tr>
            </table>
        </form>
        <%
         try{
              Quotation q=new Quotation();
              Quotation_pojo qp= new Quotation_pojo();
              
              int qid=Integer.parseInt(request.getParameter("id"));
              double qamount=Double.parseDouble(request.getParameter("amount"));
              int aid=Integer.parseInt(request.getParameter("auctionid"));
              int tid=Integer.parseInt(request.getParameter("travelageid"));
              qp.setQuot_id(qid);
              qp.setQuot_total_amount(qamount);
              qp.setAuc_id(aid);
              qp.setTravel_age_id(tid);
              boolean b=q.addQuotation(qp);
              if(b)
              {
              System.out.println("Data Saved");             
              %>
               <script>
                 alert("Quotation Saved");   
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
