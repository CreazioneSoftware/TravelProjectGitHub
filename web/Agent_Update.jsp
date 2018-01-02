

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Agent_dao" %>
<%@page import="com.pojo.Agent_pojo" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  
       <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
  
  <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
  
  <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
  
  <link rel="stylesheet" href="bower_components/jvectormap/jquery-jvectormap.css">
  
  <link rel="stylesheet" href="dist/css/AdminLTE.min.css">
  
  <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css">

  
  <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

    </head>
    
    <body>
        <%@include file="Main_Header.html" %>

        <div class="content-wrapper" style="margin-top:1em; ">
        <div style="width:2300px; margin-top: 1em;">
<div class="col-md-6">
        <div class="nav-tabs-custom">
            <ul class="nav nav-tabs"  >
              <li class="active"><a href="#tab_1" data-toggle="tab">Update</a></li>              
              
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
            <%
            String s1=request.getParameter("id");
        
            int A_id=Integer.parseInt(s1);
            session.setAttribute("key",A_id);
            Agent_dao ad=new Agent_dao();
            Agent_pojo ap=new Agent_pojo();
            
            ResultSet rs=ad.getrecords(A_id);
            while(rs.next())
            {
                
        %>
        <form action="Agent_Update_1.jsp" method="post">
            <div class="box-body">
                <div class="form-group">
                  <label for="Agent_Name">Agent Name</label>
                    <input type="text" class="form-control" name="Agent_fname"  value="<%=rs.getString(1)%>">
                   
                    <input type="text" class='form-control' name="Agent_lname" value="<%=rs.getString(2)%>">
                    <br>
                    
                    <label for="Company_Name">Company Name</label>
                    <input type="text" class="form-control" name="Agent_cname" value="<%=rs.getString(3)%>">
                    <br>
                    <label for="Country">Country</label>
                    <select class="form-control" name='country'>
                        <option selected="selected"><%=rs.getString(4)%></option>
                        <option value="1">Country 1</option>
                        <option value="2">Country 2</option>
                    </select>
                   
                    <br>
                    
                    <label for="State">State</label>    
                    <select class="form-control" name="state">
                        <option selected="selected"><%=rs.getString(5)%></option>
                    <option value="1">State 1 </option>
                    <option value="2">State 2 </option>
                    <option value="3">State 3 </option>
                    <option value="4">State 4 </option>
                    <option value="5">State 5 </option>
                  </select>
                  
                    <br>
                    
                    <label for="City">City</label>    
                    <select class="form-control" name="city">
                    <option selected="selected"><%=rs.getString(6)%></option>
                    <option value="1">City 1 </option>
                    <option value="2">City 2 </option>
                    <option value="3">City 3 </option>
                    <option value="4">City 4 </option>
                    <option value="5">City 5 </option>
                  </select>
                  
                    <br>
                    
            <label for="Mobile number">Mobile Number</label>
            <input type="text" class="form-control" name="a_mobile" value="<%=rs.getString(7)%>">
            
            <br>
            
            <label for="Mail id">Email Id</label>
            <input type="text" class="form-control" name="Agent_Mail" value="<%=rs.getString(8)%>">
            <br>
            
                </div>
                
            </div>
            <div class="box-footer">
                
                <button type="submit" class="btn btn-primary" name="sb" value="submit">Update</button>
            </div>
            </form>
        <%
            }
        %>       
            </div>
        </div>
</div>
</div>
        </div>
        </div>
    </body>
</html>
