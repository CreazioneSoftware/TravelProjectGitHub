
<%@include file="conn.jsp" %>
<%@page import="com.pojo.Country_Pojo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="countrydao" class="com.dao.Country_DAO"></jsp:useBean>
        <jsp:useBean id="c" class="com.pojo.Country_Pojo"></jsp:useBean>
    </head>
    <body>
       <form name="frm" action="AddState.jsp" method="post">
            
        <table>
            <tr>
                <td>State</td>
                <td><input type="text" name="state_name"></td>
           
            </tr>
            
             <tr>
                <td>Country</td>
                <td><select name="country_id">
                    <%
                        try
                        {
                   java.util.ArrayList al=countrydao.getAllCountry();
                   
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){
c= (Country_Pojo) ir.next();
%>

<option value="<%=c.getCountry_id()%>"><%=c.getCountry_name()%></option>
                        <%


}
}
 catch(Exception e)
{
    System.out.println("Error is"+e);
}
                    
                    
                    
                    %>
                        
                        
                        
                    </select></td>
           
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="submit"></td>
                
            </tr>
            
        </table>
            </form>
    </body>
</html>
