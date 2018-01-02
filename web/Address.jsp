

<%@page import="com.pojo.Country_Pojo" %>
<%@page import="com.pojo.City_Pojo" %>
<%@page import="com.pojo.State_Pojo" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="conn.jsp" %>
<%@include file="MasterAddress.jsp"%>

<html>
    <head>
        <title>Address Details</title>
        <jsp:useBean id="countrydao" class="com.dao.Country_DAO"></jsp:useBean>
        <jsp:useBean id="c" class="com.pojo.Country_Pojo"></jsp:useBean>
        
        <jsp:useBean id="citydao" class="com.dao.City_DAO"></jsp:useBean>
        <jsp:useBean id="c1" class="com.pojo.City_Pojo"></jsp:useBean>
        
        <jsp:useBean id="statedao" class="com.dao.State_DAO"></jsp:useBean>
        <jsp:useBean id="s" class="com.pojo.State_Pojo"></jsp:useBean>
    </head>
    <style>
        #div1{
            border:2px solid black;
            width:40%;
            height:100%;
            margin-top:3%;
            margin-left:35%;
            padding-top:20px;

            background:rgba(0,0,0,0.40);
        }
        #div2{
            height:90%;

        }
        input
        {
            width:75%;
            height:7%;
        }
        #sub{
            width:35%;
            border-radius:25px;
            height:10%;
            border:none;
            background-color:green;
            color:white;
        }
        
        select{
            width:50%;
        }
        label{
            color:white;
        }
    </style>
    <body background="img3.jpg">
        <form name="frm" action="AddAddress.jsp" method="POST">
            <div id="div1" align="center">
                <div id="div2" align="center"	>
                    <input type="text" name="address_home" value="" placeholder="&nbsp;&nbsp;Home"><br><br>
                    <input type="text" name="address_landmark" value="" placeholder="&nbsp;&nbsp;Landmark"><br><br>
                    
                    <label>Select City</label>&nbsp;&nbsp;
                <select name="address_city">
                    <%
                   java.util.ArrayList al1=citydao.getAllCity();
                   
                    java.util.Iterator ir1=al1.iterator();
                    while(ir1.hasNext()){
                        c1= (City_Pojo) ir1.next();
                    %>
                    <option value="<%=c1.getCity_id()%>"><%=c1.getCity_name()%></option>
                    <%
                        }
                    %>   
                    </select><br><br>
           
                <label>Select State</label>&nbsp;&nbsp;
                <select name="address_state">
                    <%
                   java.util.ArrayList al2=statedao.getAllState();
                   
                    java.util.Iterator ir2=al2.iterator();
                    while(ir2.hasNext()){
                        s= (State_Pojo) ir2.next();
                    %>
                    <option value="<%=s.getState_id()%>"><%=s.getState_name()%></option>
                    <%
                        }
                    %>
                     
                    </select><br><br>
          
                <label>Select Country</label>
                <select name="address_country">
                    <%
                   java.util.ArrayList al=countrydao.getAllCountry();
                   
                    java.util.Iterator ir=al.iterator();
                    while(ir.hasNext()){
                        c= (Country_Pojo) ir.next();
                    %>
                    <option value="<%=c.getCountry_id()%>"><%=c.getCountry_name()%></option>
                    <%
                        }
                        

                    %>
                     
                    </select><br><br>
                    <input type="text" name="address_pincode" value="" placeholder="&nbsp;&nbsp;PinCode"><br><br>
                    <input type="submit" name="s" value="Submit" id="sub" ><br><br>
                </div>
            </div>
        </form>
        

    </body>
</html>


