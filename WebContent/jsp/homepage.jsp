<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width,initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="/kidssummercamp/bs/bootstrap.min.css">
<script src="/kidssummercamp/bs/bootstrap.min.js"></script>
<script src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>
<title>HOME PAGE</title>
</head>
<body style="background-color: midnightblue">
	<div
		style="margin-top: 10px; background-color: oldlace; height: 200px; width: 100%">
		<img src="/kidssummercamp/images/summer.png" height="200px"
			width="400px"> <a class="btn btn-info"
			href="/kidssummercamp/jsp/registration&login/login.jsp"
			style="background-color: skyblue; margin-left: 400px"> <b>Login</b>
		</a> <a class="btn btn-info"
			href="/kidssummercamp/jsp/registration&login/parentregistration.jsp"
			style="background-color: skyblue"> <b>Parent registration</b>
		</a> <a class="btn btn-info"
			href="/kidssummercamp/jsp/organizeprofile.jsp"
			style="background-color: skyblue"> <b>Organizer Registration</b>
		</a>
	</div>
	<div style="margin-top: 10px;">
		<%@include file="/navbar/homenav.html"%>
		<div
			style="height: 700px; width: 40%; float: left; background-color: white; margin-top: 20px">
			<img alt="" src="/kidssummercamp/images/summercamp.jpg"
				style="height: 300px; width: 100%">
			<h1
				style="margin-top: 10px; text-align: center; font-family: Kristen ITC;">Summer
				Camp</h1>
			<p
				style="margin-top: 10px; font-family: Lucida Handwriting; font-size: 20px; color: hotpink">
				Summer Camp is all about fun.Our summer camp has lot of fun
				activities events entertainment.<br> You can participate in all
				the events just by taking there passes and can enroll yourself in
				lot of summer camps which are been proposed by us.<br> Firstly
				register on our web site an then only you are allowed to login.
		</div>
		<div
			style="height: 700px; width: 60%; float: left; background-color: black; margin-top: 20px">
			<img alt="" src="/kidssummercamp/images/kids.jpg"
				style="height: 500px; width: 100%">
			<h1 style="font-size: 20px;color: lime;">Our website gives platform to both
				the camp organizer and the kids.Here camp organizer can also
				register if he wants to introduce his camp as well as parents have to register first then only can login to the website.</h1>



		</div>
	</div>
	<script src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>
	<script src="/kidssummercamp/bs/bootstrap.min.js"></script>
</body>
</html>