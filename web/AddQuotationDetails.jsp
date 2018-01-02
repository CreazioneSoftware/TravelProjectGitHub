<%-- 
    Document   : AddQuotationDetails
    Created on : Dec 12, 2017, 5:24:57 PM
    Author     : RUSHIKESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Quotation_details"%>
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
                    <td>Quot Details Id:</td>
                    <td><input type="text" name="id" value=""></td>
                </tr>
                <tr>
                    <td>Quot Details Items:</td>
                    <td><input type="text" name="items" value=""></td>
                </tr>
                <tr>
                    <td>Quot Details Quantity:</td>
                    <td><input type="text" name="quantity" value=""></td>
                </tr>
                <tr>
                    <td>Quot Details Rate:</td>
                    <td><input type="text" name="rate" value=""></td>
                </tr>
                <tr>
                    <td>Quot Details total:</td>
                    <td><input type="text" name="total" value=""></td>
                </tr>
                <tr>
                    <td>Quot Id:</td>
                    <td><input type="text" name="quotid" value=""></td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="submit" value="submit"></td>
                </tr>    
            </table>
        </form>
        <%
            try 
            {
                Quotation_details qd = new Quotation_details();
                Quotation_details_pojo qdp = new Quotation_details_pojo();
                
                     int qdid  = Integer.parseInt(request.getParameter("id"));
                String qditems = request.getParameter("items");
                int qdquantity = Integer.parseInt(request.getParameter("quantity"));
                double qdrate  = Double.parseDouble(request.getParameter("rate"));
                double qdtotal = Double.parseDouble(request.getParameter("total"));
                    int quotid = Integer.parseInt(request.getParameter("quotid"));
                
                qdp.setQuot_details_id(qdid);
                qdp.setQuot_details_items(qditems);
                qdp.setQuot_details_quantity(qdquantity);
                qdp.setQuot_details_rate(qdrate);
                qdp.setQuot_details_total(qdtotal);
                qdp.setQuot_id(quotid);
                
               boolean b=qd.addQuotationDetails(qdp);
               if(b)
               {
                 System.out.println("Data Saved");
               
               %>
               <script>
                 alert("Data Saved.....");   
               </script>
               <%
                   }
            } 
            catch (Exception e) 
            {
                System.out.println("Exception is " + e);
            }
        %>
    </body>
</html>
