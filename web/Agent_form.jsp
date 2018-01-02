

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Agent_dao" %>
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
              <li class="active"><a href="#tab_1" data-toggle="tab">Add</a></li>
              <li><a href="#tab_2" data-toggle="tab">View</a></li>
              
              
            </ul>
            <div class="tab-content">
              <div class="tab-pane active" id="tab_1">
        <form action="Add_Agent.jsp" method="post">
        <div class="box-body">
                <div class="form-group">
                  <label for="Agent_Name">Agent Name</label>
                    <input type="text" class="form-control" name="Agent_fname" placeholder="First Name">
                    <input type="text" class="form-control" name="Agent_lname" placeholder="Last Name">
                    
                    <br>
                    
                    <label for="Company_Name">Company Name</label>
                    <input type="text" class="form-control" name="Agent_cname" placeholder="Company Name">
<br>
                    <label for="Country">Country</label>
                    <select class="form-control" name='country'>
                        <option selected="selected" value="Select Country">Select Country</option>
                        <option value="1">Country 1</option>
                        <option value="2">Country 2</option>
                    </select>
                   
                    <br>
                    
                    <label for="State">State</label>    
                    <select class="form-control" name="state">
                    <option selected="selected" value="Select Country">Select State</option>
                    <option value="1">State 1 </option>
                    <option value="2">State 2 </option>
                    <option value="3">State 3 </option>
                    <option value="4">State 4 </option>
                    <option value="5">State 5 </option>
                  </select>
                  
                    <br>
                    
                    <label for="City">City</label>    
                    <select class="form-control" name="city">
                    <option selected="selected" value="Select City">Select City</option>
                    <option value="1">City 1 </option>
                    <option value="2">City 2 </option>
                    <option value="3">City 3 </option>
                    <option value="4">City 4 </option>
                    <option value="5">City 5 </option>
                  </select>
                  
                    <br>
                    
            <label for="Mobile number">Mobile Number</label>
            <input type="text" class="form-control" name="a_mobile" placeholder="Mobile Number">
            
            <br>
            
            <label for="Mail id">Email Id</label>
            <input type="text" class="form-control" name="Agent_Mail" placeholder="abc@xyz.com">
            <br>
            
                </div>
                
            </div>

            <div class="box-footer">
                <button type="reset" class="btn btn-primary">Reset</button>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            </form>
            </div>
                
                
                <div class="tab-pane" id="tab_2">
                <div class="box-body table-responsive no-padding">
                <table class="table table-hover">
                <tr align="center">
                  <th>ID</th>
                  <th>Name</th>
                  <th>Company Name</th>
                  <th>Country</th>
                  <th>State</th>
                  <th>City</th>
                  <th>Mobile Number</th>
                  <th>Email</th>
                  <th>Update/Delete</th>
                </tr>
                <%
            Agent_dao ad= new Agent_dao();
            ResultSet rs=ad.View();
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
                    <td>
                      <div class="btn-group">
                        <button type="button" class="btn btn-info">Action</button>
                        <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
                        <span class="caret"></span>
                       
                        </button>
                        <ul class="dropdown-menu" role="menu">
                        <li><a href="Agent_Update.jsp?id=<%=A_id%>">Update</a></li>
                        <li><a href="Agent_Delete.jsp?id=<%=A_id%>">Delete</a></li>
                        </ul>
                        </div>

                    </td>
          
                
                    
                    <%
                        }
                        %>
                              </tr>
                </table>
                </div>
                </div>
            </div>
        </div>
        </div>
        </div>
        </div>
    </body>
</html>
       