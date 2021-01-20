<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Parent registration</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" type="text/css" href="/kidssummercamp/css/cascading.css">
<link rel="stylesheet" type="text/css" href="/kidssummercamp/bs/bootstrap.min.css">
<script type="text/javascript" src="/kidssummercamp/bs/bootstrap.min.js"></script>
<script type="text/javascript" src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>

<script src="/kidssummercamp/js/validation.js"></script>	
<script type="text/javascript">
function main()
{    
	flag=true
	var id=document.getElementById("id").value
	var name=document.getElementById("name").value
	var address=document.getElementById("address").value
	var phone=document.getElementById("phoneno").value
	var email=document.getElementById("email").value
	var pass=document.getElementById("password").value
	
	
	if(checkEmpty(id)==false)
		{
		document.getElementById("msgid").innerHTML="ParentID Required"
		flag=false
		}
	if(checkEmpty(name)==false)
		{
		document.getElementById("msgname").innerHTML="Parent name Required"
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
	
	return flag
	}


</script>

</head>
<body>

<div style="width: 100%;height: 60px;background-color: blue">
 <%@include file="/navbar/homenav.html"%> 
</div>

<div style="width: 100%;height: 60px;background-color: Lavender;">
<span style="color: grey; margin-left: 300px;font-size: 25px;">*Parents must register here before login to our website!*</span>
<img style="width: 10%; height: 100%;" align="left" alt="" src="/kidssummercamp/images/1234.jpg">
</div>
<div style="width: 60%;height: 1150px;background-color: LemonChiffon;float: left ">
  <h3 style="color:darkgreen;margin-left: 20px;text-align: left;">Register Yourself!</h3>
    <form action="/kidssummercamp/ParentRegistration" method="post" onsubmit="return main()">
    <div class="form-group">
        <label style="color: black" for="email"><b>Parent Id:</b></label>
        <input style="width:500px;" class="form-control" type="text" name="id" id="id" placeholder="example:suraj_44"  />
        <span id="msgid" style="color: red"></span>
      </div>
    <div class="form-group">
        <label style="color: black" for="email"><b>Parent Name:</b></label>
        <input style="width:500px;" class="form-control" type="text" name="name" id="name" placeholder="enter parent name"  />
        <span id="msgname" style="color: red"></span>
      </div>
      <div class="form-group">
        <label style="color: black" for="address"><b>Address:</b></label>
        <input style="width:500px;" class="form-control" type="text" name="address" id="address" placeholder="current address"  />
        <span id="msgadd" style="color: red"></span>
      </div>
      <div class="form-group">
        <label style="color: black" for="email"><b>PhoneNO:</b></label>
        <input style="width:500px;" class="form-control" type="number" name="phoneno" id="phoneno" placeholder="valid phone no." />
        <span id="msgphone" style="color: red"></span>
      </div>
     
      <div class="form-group">
        <label style="color: black" for="email"><b>Email:</b></label>
        <input style="width:500px;" class="form-control" type="email" name="email" id="email" placeholder="example@gmail.com"  />
        <span id="msgemail" style="color: red"></span>
      </div>
      <div class="form-group">
        <label style="color: black" for="password"><b>Password:</b></label>
        <input  style="width:500px;" class="form-control" type="password" name="password" id="password" placeholder="********" />
        <span id="msgpass" style="color: red"></span>
      </div>
      <div> 
    <h6 style="color: black;margin-top: 10px">By creating an account you agree to our <a style="text-decoration: underline;" href="#">Terms & Privacy</a>.</h6>
      
            <button style="margin-left:150px;margin-top: 20px" type="submit" class="btn btn-success" ><h6>create account</h6></button>
        
 
   <h6 style="color:green;margin-top: 10px">Already have an account? <a style="text-decoration: underline;margin-left: 10px" href="#">Sign in</a>.</h6>
  </div>
  </form>
 </div>
  <div style="width: 40%;height: 1150px;background-color: khaki;float: right">
  <img src="/kidssummercamp/images/summer.png" style="width: 100% ;height: 500px">
  <img src="/kidssummercamp/images/fun.png" style="width: 100% ;height: 500px;margin-top: 50px">
  
  </div>
<script type="text/javascript" src="/kidssummercamp/bs/bootstrap.min.js"></script>
<script type="text/javascript" src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>
</body>
</html>