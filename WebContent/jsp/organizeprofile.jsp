<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Organiser Profile</title>
</head>
<body>
<div style="width: 100%;height: 100px;float:left;background-color: lightblue;color:snow;font-family: Serif;font-size: 40px;text-decoration: underline;"><b style="margin-left: 500px">Organiser Profile</b></div>
<div style="width: 20%;height: 500px;float: left;background-image: url('/kidssummercamp/images/ahmed-zayan-6h0xlEZoYZY-unsplash.jpg');background-size: cover;">
</div>
<div style="width: 60%;height: 500px;float: left;background-color: khaki ;">
<form action="/kidssummercamp/OrganizerProfile" method="post">
<table  style="margin-left: 100px;margin-top: 50px;align-self: auto;width: 75%;height: 450px;font-family: Segoe UI;font-size: 20px;">
<tr> <th><label>Organizer Id:</label></th>
<th><input type="text" id="campid" name="campid" placeholder="valid campid" required="required"></th>
</tr>
<tr><th><label>Organiser Name:</label></th>
<th><input type="text" id="name" name="name" placeholder="enter your name" required="required"></th>
</tr>
<tr><th><label>Gender:</label></th>
<th><input type="radio" value="male" id="rd" name="rd" required="required">Male</input></th>
<th><input type="radio" value="female" id="rd" name="rd" required="required">Female</input></th>
</tr>
<tr><th><label>Phone No.:</label></th>
<th><input type="number" id="phone" name="phone" placeholder="enter in digits" required="required"></th>
</tr>
<tr><th><label>Address:</label></th>
<th><input type="text" id="address" name="address" placeholder="enter current address" required="required"></th>
</tr>
<tr><th><label>E-mail:</label></th>
<th><input type="email" id="emailid" name="emailid" placeholder="abc@xyz.com" required="required"></th>
</tr>
<tr><th><label>Password:</label></th>
<th><input type="password" id="pass" name="pass" placeholder="************" required="required"></th>
</tr>
<tr><td><button style="margin-left: 230px;font-family: Serif;font-size: 20px;background-color: green" type="submit">submit</button></td></tr>

</table>
</form></div>
<div style="width:20%;height:500px;float:left;background-image:url('/kidssummercamp/images/paul-hermann-XJuhZqEE4Go-unsplash.jpg');background-size: cover; "></div>
<div style="width: 100%;height: 60px;float:left;background-color: lightblue;color:snow;font-family: Serif;font-size: 40px;text-decoration: underline;"><b style="margin-left: 500px"></div>


</body>
</html>