

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@page import="com.dao.Hotel_dao" %>
<%@page import="com.pojo.Hotel_pojo" %>
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

        <div class="content-wrapper" style="margin-top:1em;height: auto;">



            <div style="width:2300px; height: auto;">
                <div class="col-md-6">
                    <div class="nav-tabs-custom">
                        <ul class="nav nav-tabs">
                            <li class="active"><a href="#tab_1" data-toggle="tab">Add</a></li>
                            <li><a href="#tab_2" data-toggle="tab">View</a></li>


                        </ul>
                        <div class="tab-content">
                            <div class="tab-pane active" id="tab_1">
                                <form action="Hotel_add.jsp" method="post">

                                    <div class="box-body">
                                        <div class="form-group">


                                            <label for="Hotel_Name">Hotel Name</label>
                                            <input type="text" class="form-control" name="Hotel_name" placeholder="Hotel Name">
                                            <br>

                                            <label for="Owner name">Owner Name</label>
                                            <input type="text" class="form-control" name="Hotel_owner_name" placeholder="First Name">
                                            <br>

                                            <label for="Mobile number">Mobile Number</label>
                                            <input type="text" class="form-control" name="Hotel_mob_number" placeholder="Mobile Number">

                                            <br>

                                            <label for="Mail id">Email Id</label>
                                            <input type="email" class="form-control" name="Hotel_mail_id" placeholder="xyz@pqr.com">
                                            <br>


                                            <label for="Country">Country</label>    
                                            <select class="form-control" name="country">
                                                <option selected="selected" value="Select Country">Select Country</option>
                                                <option value="Country 1">Country 1 </option>
                                                <option value="Country 2">Country 2 </option>
                                                <option value="Country 3">Country 3 </option>
                                                <option value="Country 4">Country 4 </option>
                                                <option value="Country 5">Country 5 </option>
                                            </select>
                                            <br>

                                            <label for="State">State</label>    
                                            <select class="form-control" name="state">
                                                <option selected="selected" value="Select Country">Select State</option>
                                                <option value="State 1">State 1 </option>
                                                <option value="State 2">State 2 </option>
                                                <option value="State 3">State 3 </option>
                                                <option value="State 4">State 4 </option>
                                                <option value="State 5">State 5 </option>
                                            </select>
                                            <br>

                                            <label for="City">City</label>    
                                            <select class="form-control" name="city">
                                                <option selected="selected" value="Select City">Select City</option>
                                                <option value="City 1">City 1 </option>
                                                <option value="City 2">City 2 </option>
                                                <option value="City 3">City 3 </option>
                                                <option value="City 4">City 4 </option>
                                                <option value="City 5">City 5 </option>
                                            </select>
                                            <br>

                                            <label for="Hotel Category">Hotel Category</label>
                                            <select class="form-control" name="category">
                                                <option selected="selected" value="Category">Category</option>
                                                <option value="1 Star">1 Star</option>
                                                <option value="2 Star">2 Star</option>
                                                <option value="3 Star">3 Star</option>
                                                <option value="4 Star">4 Star</option>
                                                <option value="5 Star">5 Star</option>
                                            </select>
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
                                            <th>Hotel Name</th>
                                            <th>Owner Name</th>
                                            <th>Mobile Number</th>
                                            <th>Email</th>
                                            <th>Country</th>
                                            <th>State</th>
                                            <th>City</th>
                                            <th>Category</th>
                                            <th>Update/Delete</th>
                                        </tr>
                                        <%
                                            Hotel_dao hd = new Hotel_dao();
                                            ResultSet rs = hd.view_hotel();
                                            while (rs.next()) {
                                        %>

                                        <tr>
                                            <td><%=rs.getInt(1)%></td>
                                            <td><%=rs.getString(2)%></td>
                                            <td><%=rs.getString(3)%></td>
                                            <td><%=rs.getString(4)%></td>
                                            <td><%=rs.getString(5)%></td>
                                            <td><%=rs.getString(6)%></td>
                                            <td><%=rs.getString(7)%></td>
                                            <td><%=rs.getString(8)%></td>
                                            <td><%=rs.getString(9)%></td>


                                            <%
                                                int a_id = rs.getInt(1);
                                            %>
                                            <td>
                                                <div class="btn-group">
                                                    <button type="button" class="btn btn-info">Action</button>
                                                    <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
                                                        <span class="caret"></span>

                                                    </button>
                                                    <ul class="dropdown-menu" role="menu">
                                                        <li><a href="Hotel_Update.jsp?id=<%=a_id%>">Update</a></li>
                                                        <li><a href="Hotel_Delete.jsp?id=<%=a_id%>">Delete</a></li>
                                                    </ul>
                                                </div>

                                            </td>



                                            <%
                                                }
                                            %>
                                        </tr>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </body>
                </html>
