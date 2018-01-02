
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.dao.Hotel_dao" %>
<%@page import="com.pojo.Hotel_pojo" %>
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
                                    Hotel_dao hd = new Hotel_dao();
                                    Hotel_pojo hp = new Hotel_pojo();

                                    int Hotel_id = Integer.parseInt(request.getParameter("id"));
                                    session.setAttribute("id", Hotel_id);
                                    ResultSet rs = hd.getrecords(Hotel_id);
                                    while (rs.next()) {
                                %>

                                <form action="Hotel_Update_1.jsp" method="post">
                                    <div class="box-body">
                                        <div class="form-group">
                                            <label for="Hotel_Name">Hotel Name</label>
                                            <input type="text" class="form-control" name="Hotel_name" value="<%=rs.getString(1)%>">
                                            <br>

                                            <label for="Owner name">Owner Name</label>
                                            <input type="text" class="form-control" name="Hotel_owner_name" value="<%=rs.getString(2)%>">
                                            <br>

                                            <label for="Mobile number">Mobile Number</label>
                                            <input type="text" class="form-control" name="Hotel_mob_number" value="<%=rs.getString(3)%>">

                                            <br>

                                            <label for="Mail id">Email Id</label>
                                            <input type="email" class="form-control" name="Hotel_mail_id" value="<%=rs.getString(4)%>">
                                            <br>


                                            <label for="Country">Country</label>    
                                            <select class="form-control" name="country" value="<%=rs.getString(5)%>">

                                                <option value="Country 1">Country 1 </option>
                                                <option value="Country 2">Country 2 </option>
                                                <option value="Country 3">Country 3 </option>
                                                <option value="Country 4">Country 4 </option>
                                                <option value="Country 5">Country 5 </option>
                                            </select>
                                            <br>

                                            <label for="State">State</label>    
                                            <select class="form-control" name="state" value="<%=rs.getString(6)%>">

                                                <option value="State 1">State 1 </option>
                                                <option value="State 2">State 2 </option>
                                                <option value="State 3">State 3 </option>
                                                <option value="State 4">State 4 </option>
                                                <option value="State 5">State 5 </option>
                                            </select>
                                            <br>

                                            <label for="City">City</label>    
                                            <select class="form-control" name="city" value="<%=rs.getString(7)%>">

                                                <option value="City 1">City 1 </option>
                                                <option value="City 2">City 2 </option>
                                                <option value="City 3">City 3 </option>
                                                <option value="City 4">City 4 </option>
                                                <option value="City 5">City 5 </option>
                                            </select>
                                            <br>

                                            <label for="Hotel Category">Hotel Category</label>
                                            <select class="form-control" name="category" value="<%=rs.getString(8)%>">

                                                <option value="1 Star">1 Star</option>
                                                <option value="2 Star">2 Star</option>
                                                <option value="3 Star">3 Star</option>
                                                <option value="4 Star">4 Star</option>
                                                <option value="5 Star">5 Star</option>
                                            </select>
                                            <br>
                                        </div>
                                        <div class="box-footer">

                                            <button type="submit" class="btn btn-primary" value="submit">Update</button>
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