
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Agent_dao" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Agent_dao ad= new Agent_dao();
            ResultSet rs=ad.View();
            %>
            <table align='center' border='2'>
                <tr>
                    <th>ID</th>
                    <th>First Name</th>
                    <th>Last Name</th>
                    <th>Company Name</th>
                    <th>Country</th>
                    <th>State</th>
                    <th>City</th>
                    <th>Mobile Number</th>
                    <th>Email Id</th>
                </tr>
                <%
                    while(rs.next())
                    {
                    %>
                    <tr>
                        <td><%=rs.getInt(1)%></td>
                        <td><%= rs.getString(2)%></td>
                        <td><%=rs.getString(3)%></td>
                        <td><%=rs.getString(4)%></td>
                        <td><%=rs.getString(5)%></td>
                        <td><%=rs.getString(6)%></td>
                        <td><%=rs.getString(7)%></td>
                        <td><%=rs.getString(8)%></td>
                        <td><%=rs.getString(9)%></td>
                        
                    
                    <%
                        int A_id=rs.getInt(1);
                    %>
                    <td><a href="Agent_Update.jsp?id=<%=A_id%>">Update</a></td>
                    <td><a href="Agent_Delete.jsp?id=<%=A_id%>">Delete</a></td>
                    </tr>
                    <%
                        }
                        %>
            </tabe>
    </body>
</html>
