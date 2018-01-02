<%-- 
    Document   : CustomerRegistration
    Created on : Dec 1, 2017, 5:15:17 PM
    Author     : RUSHIKESH
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            hr{
                color: lime;
            }
            table{
                background-color: dimgrey;
                color: aqua;
                height: 400px;
                width: 550px;
            }
            h2,h3{
                color: orange;
            }
            input[type="text"],[type="email"],[type="date"]{
                margin:1px;
                padding:3px;
                color:white; 
                background-color:dimgray;
                height:20px;
                width:96%;
            }
            input[type="submit"]{
                font-size:16px;
                margin:3px;
                padding:2px;
                color: aqua;
                background-color:dimgrey;
            }
            select{
                margin:2px;
                height:20px;
                width:50%;
                color:white;
                background-color:dimgray;
            }
        </style>
    </head>
    <body>
        <%--<jsp:include page="CustomerMain.jsp"/>   --%>
        
        <form name="CustomerRegistration" action="AddCustomer.jsp" method="post">
            <center><h2>Customer Registration</h2></center>
            <hr>
            <div class="Personal" align="center"  >
                <h3>Personal Information</h3>
                <table border="3" align="center" >
                    <tr>
                        <td><center>Full Name :</center> </td>
                    <td><input type="text" name="cname" value="" placeholder="Enter Your Name"></td>
                    </tr>
                    <tr>
                    <center> <td><center>Contact :</center> </td></center> 
                    <td><input type="text" name="ccontact" value="" placeholder="Enter Your Contact Number"></td>
                    </tr>
                    <tr>
                        <td><center>Email :</center> </td> 
                    <td><input type="email" name="cemail" value="" placeholder="Enter Your Email"></td>
                    </tr>
                    <tr>
                        <td><center>DOB :</center> </td> 
                    <td><input type="date" name="cdob" value="" ></td>
                    </tr>



                    <tr>
                        <td><center>Home :</center></td><td> <input type="text" name="chome" value="" placeholder="Enter Home And Street Info" height="500" weight="500" ></td>

                    </tr>
                    <tr>
                        <td><center>Landmark :</center></td><td> <input type="text" name="clandmark" value="" placeholder="Enter Your Landmark"></td>
                    </tr>
                    <tr>
                        <td> <center>Place :</center></td><td>
                        <select name="cplace">
                            <option>Select Place</option>
                            <option value="1"> abc </option>
                            <option value="2"> xyz </option>
                            <option value="3"> mno </option>
                            <option value="4"> pqr </option>
                        </select></td>
                    </tr>
                    <tr>
                        <td> <center>city :</center></td><td>
                        <select name="ccity">
                            <option>Select city</option>
                            <option value="1"> Pune </option>
                            <option value="2"> Mumbai </option>
                            <option value="3"> Delhi </option>
                            <option value="4"> Jaipur </option>
                        </select></td>
                    </tr>
                    <tr>
                        <td><center> State :</center></td><td>
                        <select name="cstate">
                            <option>Select State</option>
                            <option value="1"> Maharashtra </option>
                            <option value="1"> Gujrat </option>
                            <option value="1"> Keral </option>
                            <option value="1"> Punjab </option>
                        </select></td>
                    </tr>
                    <tr>
                        <td><center>Country :</center></td><td>
                        <select name="ccountry">
                            <option>Select State</option>
                            <option value="1"> India</option>
                            <option value="2"> USA </option>
                            <option value="3"> Japan </option>
                            <option value="4"> Russia </option>
                        </select></td>
                    </tr>
                    <tr>
                        <td> <center>Pincode :</center></td><td><input type="text" name="cpincode" value="" placeholder="Enter Your Pincode"></td>
                    </tr>
                    <tr>
                        <td colspan="2" align="center"><input type="submit" name="cregister" value="Register"></td>
                    </tr>
            </div>
        </form>
    </body>
</html>
