<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Organizer Registration</title>

<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="/kidssummercamp/bs/bootstrap.min.css">
<script type="text/javascript" src="/kidssummercamp/bs/bootstrap.min.js"></script>
<script type="text/javascript"
	src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>
<script src="/kidssummercamp/js/validation.js"></script>	
<script type="text/javascript">
function main()
{    
	flag=true
	var id=document.getElementById("campid").value
	var name=document.getElementById("campname").value
	var address=document.getElementById("campaddress").value
	var phone=document.getElementById("campphoneno").value
	var email=document.getElementById("campemail").value
	var pass=document.getElementById("camppass").value
	var dt=document.getElementById("campdate").value
	var des=document.getElementById("campdescription").value
	
	
	if(checkEmpty(id)==false)
		{
		document.getElementById("msgid").innerHTML="CampID Required"
		flag=false
		}
	if(checkEmpty(name)==false)
		{
		document.getElementById("msgname").innerHTML="campname Required"
		flag=false
		}
	if(checkEmpty(address)==false)
		{
		document.getElementById("msgadd").innerHTML="address Required"
			flag=false
		}
	if(checkEmpty(phone)==false)
	{
		if(phone.length<10)
			document.getElementById("msgphone").innerHTML="enter 10 digit mobile no."
	document.getElementById("msgphone").innerHTML="phone no. Required"
		flag=false
	}
	if(checkEmpty(email)==false)
	{
	document.getElementById("msgemail").innerHTML="email required"
		flag=false
	}
	if(checkEmpty(pass)==false)
	{
		if(checkLength(pass)==false)
			document.getElementById("msgpass").innerHTML="password length should be less than 12 characters"
	document.getElementById("msgpass").innerHTML="password Required"
		flag=false
	}
	if(checkEmpty(dt)==false)
	{
	document.getElementById("msgdt").innerHTML="current date Required"
		flag=false
	}
	if(checkEmpty(des)==false)
	{
	document.getElementById("msgdes").innerHTML="description Required"
		flag=false
	}
	return flag
	}


</script>


</head>
<body>
		
		<div style="width: 50%; height: 1024px; background-color: whitesmoke; float:left">
		<img src="/kidssummercamp/images/summer.png" style="width: 100% ;height: 300px">
		<img src="/kidssummercamp/images/fun.png" style="width: 100% ;height: 500px;margin-top: 50px">
		</div>
     <div style="width: 50%; height: 1024px; background-color: black ; float: left">
     <h2 align="left" style="font-family:Script;color:blue ">Register your CAMP here!</h2>
     <form action="/kidssummercamp/OrganizerRegistration" method="post" onsubmit="return main()">
     <table style="float: left;margin-top: 20px">
<tr><td>
<label style="color:#F0F3F4;margin-top: 20px;font-size: 25px;font-family: MV Boli">CampId:</label></td>
<td><input type="text" style=" margin-top: 20px;" name="campid" class="form-control"  id="campid" placeholder="enter valid campid"></td></tr>
<tr><th><span id="msgid" style="color: blue"></span></th></tr>

 <tr>
<td><label style="color: #F0F3F4;margin-top: 20px;font-size: 25px;font-family: MV Boli">Camp Name:</label></td>
<td><input style=" margin-top: 20px"  type="text" name="campname" class="form-control" id="campname" placeholder="enter camp name"></td></tr>
<tr><th><span id="msgname" style="color: blue"></span></th></tr>

<tr>
<td><label style="color: #F0F3F4; margin-top: 20px;font-size: 25px;font-family: MV Boli">Camp Address:</label></td>
<td><input style= " margin-top :20px;" type="text" name="campaddress" class="form-control" id="campaddress" placeholder="enter camp venue"></td></tr>
<tr><th><span id="msgadd" style="color: blue"></span>
</tr>

<tr>
<td><label style="color: #F0F3F4;margin-top: 20px;font-size: 25px;font-family: MV Boli">Camp PhoneNo.:</label></td>
<td><input style=" margin-top: 20px;" type="number" name="campphoneno" class="form-control" id="campphoneno" placeholder="enter valid phone number"></td></tr>
<tr><th><span id="msgphone" style="color: blue"></span>
</tr>

<tr>
<td><label style="color: #F0F3F4;margin-top: 20px;font-size: 25px;font-family: MV Boli">E-mail Id:</label></td>
<td><input  style=" margin-top: 20px;" type="email" name="campemail" class="form-control" id="campemail" placeholder="enter the valid email"></td></tr>
<tr><th><span id="msgemail" style="color: blue"></span>
</tr>
<tr>
 <td><label style="color: #F0F3F4;margin-top: 20px;font-size: 25px;font-family: MV Boli" >Password:</label></td>
 <td><input  style="width:500px; margin-top: 20px;" class="form-control" type="password" name="camppass" id="camppass" placeholder="********"  /></td></tr>
<tr> <th><span id="msgpass" style="color: blue"></span>
      </tr>
      <tr>
<td><label style="color: #F0F3F4;margin-top: 20px;font-size: 25px;font-family: MV Boli">Date:</label></td>
<td><input style=" margin-top: 20px; width: 500px;" type="date" name="campdate" class="form-control" id="campdate" placeholder="enter current date"></td></tr>
<tr><th><span id="msgdt" style="color: blue"></span>
</tr>
 
<tr>
<td><label style="color: #F0F3F4;margin-top: 20px;font-size: 25px;font-family: MV Boli">Description:</label></td>
<td><textarea  rows="3" cols="40" style=" margin-top: 20px;" name="campdescription" class="form-control" id="campdescription" placeholder="text here......!"></textarea></td></tr>
<tr><th><span id="msgdes" style="color: blue"></span>
</tr>
 </table>
<button style="margin-top: 50px;font-size: 25px;font-family: MV Boli;margin-left: 250px" type="submit" class="btn btn-success" id="register">Register!</button>
</form>
 </div>



	<script type="text/javascript"
		src="/kidasummercamp/bs/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>

</body>
</html>