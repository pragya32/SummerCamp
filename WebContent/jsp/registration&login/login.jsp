<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" type="text/css" href="/kidssummercamp/css/cascading.css">
<link rel="stylesheet" type="text/css" href="/kidssummercamp/bs/bootstrap.min.css">
<script type="text/javascript" src="/kidssummercamp/bs/bootstrap.min.js"></script>
<script type="text/javascript" src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>
<script src="/kidssummercamp/js/validation.js"></script>
<script type="text/javascript">

function main() {
	flag = true
	var userid = document.getElementById("userid").value
	var userpass = document.getElementById("userpass").value
	//alert(userid+userpass)
	if (checkEmpty(userid) == false) {
		document.getElementById("msguserid").innerHTML = "User ID Required?"
		flag = false
	}
	if (checkEmpty(userpass) == false) {
		document.getElementById("msguserpass").innerHTML = "User Pass Required?"
		flag = false
	}
	return flag
}


</script>

</head>


<body>
<div style="width: 100%;height: 60px;background-color: blue">
<%@include file="/navbar/homenav.html"%>
</div>
<div class="container-fluid">
 <div style="width: 45%;height: 650px;float: left;background-color: grey">

  <div class="container__child signup__thumbnail">
    <div style="margin: 50px;" class="thumbnail__content text-center">
      <h1 class="heading--primary" style="color: crimson">Welcome to Kids Summer Camp!!</h1>
      <h3 style="color: snow;margin-top: 50px">Are you ready to join the camp?</h3>
      <img alt="summercamp icon" src="/kidssummercamp/images/cap2.jpg" style="width:75% ; height:250px ;margin-top: 60px">
    </div>
    
    <div class="signup__overlay"></div>
  </div>
  
  </div>
  <div  style="width: 55%;height: 650px;float: left;background-image: url('/kidssummercamp/images/desola-lanre-ologun-zYgV-NGZtlA-unsplash.jpg');background-size: cover;" >
  
  <div class="container__child signup__form" >
  <p style="color:blue;text-decoration: underline; margin-left: 50px;font-family: MV Boli;font-size: 40px"><b>Sign Up!</b></p>
  <br>
  <div style="width: 100%;height: 300px;">
    <form action="/kidssummercamp/Login" method="post" onsubmit="return main()">
     
      <div class="form-group">
        <label style="margin-left:30px" for="email"><h6>UserId:</h6></label>
        <input style="width:500px;margin-left:30px" class="form-control" type="text" name="userid" id="userid" placeholder="example@gmail.com" />
     <span id="msguserid" style="color: red"></span>
      </div>
      <div class="form-group">
        <label style="margin-left:30px" for="password"><h6>Password:</h6></label>
        <input  style="width:500px;margin-left:30px" class="form-control" type="password" name="userpass" id="userpass" placeholder="********" />
     <span id="msguserpass" style="color: red"></span>
      </div>
      <div class="m-t-lg">
        <ul class="list-inline">
          <li>
            <button style="margin-left:30px;margin-top: 100px" type="submit" class="btn btn-primary btn-block" ><h6>login</h6></button>
          </li>
          <br>
          <li>
          <br>
          <h5 style="color:green ;margin-left:30px">forgot password?</h5>
            <a class="signup__link" href="#" style="margin-left:30px;color:blue;text-decoration: underline;">click here for recovery.</a>
          </li>
        </ul>
      </div>
    </form> 
    </div> 
  </div>
  </div>
</div> 
<script type="text/javascript" src="/kidasummercamp/bs/bootstrap.min.js"></script>
<script type="text/javascript" src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>
</body>
</html>