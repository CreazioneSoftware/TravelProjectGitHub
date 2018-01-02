
<%@include file="conn.jsp" %>
<%@page import="com.pojo.Country_Pojo"%>
<%@page import="com.pojo.State_Pojo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <jsp:useBean id="countrydao" class="com.dao.Country_DAO"></jsp:useBean>
        <jsp:useBean id="c" class="com.pojo.Country_Pojo"></jsp:useBean>
        <jsp:useBean id="statedao" class="com.dao.State_DAO"></jsp:useBean>
        <jsp:useBean id="state" class="com.pojo.State_Pojo"></jsp:useBean>
        </head>
        <body>
            <form name="frm" action="AddCity.jsp" method="post">

                <table>
                    <tr>
                        <td>City</td>
                        <td><input type="text" name="city_name"></td>

                    </tr>

                    <tr>
                        <td>Country</td>
                        <td><select name="country_id">
                            <%                        try {
                                    java.util.ArrayList al = countrydao.getAllCountry();

                                    java.util.Iterator ir = al.iterator();
                                    while (ir.hasNext()) {
                                        c = (Country_Pojo) ir.next();
                            %>

                            <option value="<%=c.getCountry_id()%>"><%=c.getCountry_name()%></option>
                            <%

                                    }
                                } catch (Exception e) {
                                    System.out.println("Error is" + e);
                                }


                            %>



                        </select></td>

                </tr>
                <tr>
                    <td>State</td>
                    <td><select name="state_id">
                            <%                        try {
                                    java.util.ArrayList al = statedao.getAllState();

                                    java.util.Iterator ir = al.iterator();
                                    while (ir.hasNext()) {
                                        state = (State_Pojo) ir.next();
                            %>

                            <option value="<%=state.getState_id()%>"><%=state.getState_name()%></option>
                            <%

                                    }
                                } catch (Exception e) {
                                    System.out.println("Error is" + e);
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
