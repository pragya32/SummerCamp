<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admission form</title>


<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" type="text/css" href="/kidssummercamp/bs/bootstrap.min.css">
<script src="/kidssummercamp/js/validation.js"></script>
<script type="text/javascript" src="/kidssummercamp/bs/bootstrap.min.js"></script>
<script type="text/javascript" src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>
</head>
<body style="background-position:center;  background-image : url('/kidssummercamp/images/joanna-kosinska-7ACuHoezUYk-unsplash.jpg');background-color: black;background-size: cover;"> 
	
<script type="text/javascript">
    $("#fileUpload").ready(function () {
            if (typeof ($("#fileUpload")[0].files) != "undefined") {
                var size = parseFloat($("#fileUpload")[0].files[0].size / 1024).toFixed(2);
                alert(size + " KB.");
            } else {
                alert("This browser does not support HTML5.");
            }
    });
   
</script>

<div class="container">

<h1 align="center" style="color:#F1C40F ;font-family: MV Boli">Admission form</h1>
<div style="width:75%;height: 100%;margin-left: 250px;float: left;margin-top: 50px">
<form  method="post" action="/kidssummercamp/ChildAdmission" onsubmit="return main()">
 <div class="row" style="margin-left: 250px">
<table style="float: right;">
<tr><td>
<label style="color:#F0F3F4;margin-top: 20px;font-size: 30px;font-family: MV Boli">ParentId:</label></td>
<td><input type="text" style="color: margin-top: 20px;margin-left: 25px;" id="parentid" name="parentid" class="form-control"  placeholder="enter valid parentid" required="required"></td>
<td><span id="msgparent" style="color: blue"></span></td></tr>
 <tr>
<td><label style="color: #F0F3F4;margin-top: 20px;font-size: 30px;font-family: MV Boli">ProgramId:</label></td>
<td><input style="color: margin-top: 20px;margin-left: 25px"  type="text" id="programid" name="programid" class="form-control"  placeholder="enter program id" required="required"></td>
<th><span id="msgprogram" style="color: blue"></span>
</tr>

<tr>
<td><label style="color: #F0F3F4; margin-top: 20px;font-size: 30px;font-family: MV Boli">CampId:</label></td>
<td><input style= "color: margin-top :20px;margin-left: 25px" type="text" id="campid" name="campid" class="form-control" placeholder="enter valid campid" required="required"></td>
<th><span id="msgcamp" style="color: blue"></span>
</tr>

<tr>
<td><label style="color: #F0F3F4;margin-top: 20px;font-size: 30px;font-family: MV Boli">Child Name:</label></td>
<td><input style="color: margin-top: 20px;margin-left: 25px" type="text" id="childname" name="childname" class="form-control" placeholder="enter Child Name" required="required"></td>
<th><span id="msgchild" style="color: blue"></span>
</tr>

<tr>
<td><label style="color: #F0F3F4;margin-top: 20px;font-size: 30px;font-family: MV Boli">Age:</label></td>
<td><input  style="color: margin-top: 20px;margin-left: 25px" type="text" id="id" name="age" class="form-control"  placeholder="enter the age" required="required"></td>
<th><span id="msgage" style="color: blue"></span>
</tr>

 <tr>
 <td ><label style="color: #F0F3F4;margin-top: 20px;font-size: 30px;font-family: MV Boli">Gender:</label></td>
<td> <label  style="color: #F0F3F4;margin-top: 20px;margin-left: 20px;float:left" >Female</label>
 <input style=" margin-top: 20px;float: left"  type="radio" name="gender" id="gender" value="female"></td>
 <th><span id="msgrd" style="color: blue"></span></th>
 <td><label  style="color: #F0F3F4;margin-top: 20px;;float: left">Male</label>
<input style="margin-top: 20px;float: left" type="radio" name="gender" id="gender" value="male"></td>
<th><span id="msgrd" style="color: blue"></span></th></tr>


<tr>
<td><label style="color: #F0F3F4;margin-top: 20px;font-size: 30px;font-family: MV Boli">School Name:</label></td>
<td><input style="color: margin-top: 20px;margin-left: 15px" type="text" id="schoolname" name="schoolname" class="form-control"  placeholder="enter school name" required="required"></td>
<th><span id="msgschool" style="color: blue"></span>
</tr>
 
<tr>
<td><label style="color: #F0F3F4;margin-top: 20px;font-size: 30px;font-family: MV Boli">Transaction no.:</label></td>
<td><input style="color: margin-top: 20px;margin-left: 15px"  type="text" id="transaction" name="transaction" class="form-control" placeholder="xxxxxxxx" required="required"></td>
<th><span id="msgtransaction" style="color: blue"></span>
</tr>
 
<tr><td>
<label style="color: #F0F3F4;margin-top: 20px;font-size: 30px;font-family: MV Boli">Status:</label></td><td>
<input style="color: margin-top: 20px;margin-left: 15px" type="text" name="status" id="status" class="form-control"  placeholder="your valid status" required="required"></td>
<th><span id="msgstatus" style="color: blue"></span></tr>

 
<tr><td>
<label style="color: #F0F3F4;margin-top: 20px;margin-left: 10px;font-size: 30px;font-family: MV Boli">Picture:</label></td>
<td><input style="color: #F0F3F4;margin-top: 20px;margin-left: 10px" id="fileUpload" name="fileUpload" type='file' required="required"/></td>
<th><span id="msgpic" style="color: blue"></span>

</tr>

<tr><td colspan="10" align="center">
<button style="margin-top: 100px;font-size: 30px;font-family: MV Boli" type="submit" class="btn btn-success btn-block" id="register">Register!</button></td></tr>
 </table>
</form>
 </div>
 


<script type="text/javascript" src="/kidssummercamp/bs/bootstrap.min.js"></script>
<script type="text/javascript" src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>



</html>