
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Address_DAO"%>
<%@page import="com.pojo.Address_Pojo"%>
<%@page import="com.pojo.Country_Pojo"%>
<%@page import="com.pojo.State_Pojo"%>
<%@page import="com.pojo.City_Pojo"%>
<%@include file="MasterAddress.jsp"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <jsp:useBean id="addressdao" class="com.dao.Address_DAO"></jsp:useBean>
        <jsp:useBean id="address" class="com.pojo.Address_Pojo"></jsp:useBean>

<jsp:useBean id="countrydao" class="com.dao.Country_DAO"></jsp:useBean>
        <jsp:useBean id="c" class="com.pojo.Country_Pojo"></jsp:useBean>
        
        <jsp:useBean id="statedao" class="com.dao.State_DAO"></jsp:useBean>
        <jsp:useBean id="state" class="com.pojo.State_Pojo"></jsp:useBean>
        
          <jsp:useBean id="citydao" class="com.dao.City_DAO"></jsp:useBean>
        <jsp:useBean id="c1" class="com.pojo.City_Pojo"></jsp:useBean>
        
           </head>
    <style>
       #div1{
            border:2px solid black;
            width:40%;
            height:100%;
            margin-top:3%;
            margin-left:35%;
            padding-top:20px;

            background:rgba(0,0,0,0.30);
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
    </style>
    <body background="img1.jpg">
        <form name="frm" action="UpdateAddress1.jsp" method="post">
           
        
        <%
           
        try{
    
    int address_id=Integer.parseInt(request.getParameter("id"));
      //out.println("address id =="+address_id);
      
    java.util.ArrayList al=addressdao.getAllAddress1(address_id);
                   
java.util.Iterator ir=al.iterator();
while(ir.hasNext()){ 
address= (Address_Pojo) ir.next();
    %>
    <div id="div1" align="center">
                <div id="div2" align="center"	>
                    <input type="text" name="address_id" value="<%=address.getAddress_id()%>"><br><br>
                    <input type="text" name="address_home" value="<%=address.getAddress_home()%>"><br><br>
                    <input type="text" name="address_landmark" value="<%=address.getAddress_landmark()%>"><br><br>
                    <input type="text" name="address_city" value="<%=address.getAddress_city()%>"><br><br>
                    <input type="text" name="address_state" value="<%=address.getAddress_state()%>"><br><br>
                    <input type="text" name="address_country" value="<%=address.getAddress_country()%>"><br><br>
                    <input type="text" name="address_pincode" value="<%=address.getAddress_pincode()%>" ><br><br>
                    <input type="submit" value="update" name="button" id="sub"><br><br>
                </div>
    </div>
    <%
        
     }
     
}catch(Exception e){
         
         System.out.println(""+e);
         }    
     %> 
        </form>
    </body>
</html>
