<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="/kidssummercamp/bs/bootstrap.min.css">
<script src="/kidssummercamp/bs/bootstrap.min.js"></script>
<script src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>


<script src="/kidssummercamp/js/validation.js"></script>	
<script type="text/javascript">
function main()
{    
	flag=true
	var city=document.getElementById("city").value	
	
		if(checkCombo(city)==false)
	{
	document.getElementById("city").innerHTML="msgcity"
		flag=false
	}
		return flag
	}


</script>
	

<style>
body {
	font-family: Arial;
	color: white;
}

.split {
	height: 100%;
	width: 50%;
	position: fixed;
	z-index: 1;
	top: 0;
	overflow-x: hidden;
	padding-top: 20px;
}

.left {
	left: 0;
	background-color: #111;
}

.right {
	right: 0;
	background-color: white;
}

.centered {
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	text-align: center;
}

.centered img {
	width: 600px;
	border-radius: 60%;
}

* {
	box-sizing: border-box;
}

/* Add padding to containers */
.container {
	padding: 16px;
	background-color: white;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
	background-color: #4CAF50;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.registerbtn:hover {
	opacity: 1;
}

/* Add a blue text color to links */
a {
	color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
	background-color: #f1f1f1;
	text-align: center;
}
#example1 {
  border: 1px solid;
  padding: 10px;
  box-shadow: 5px 10px 8px #888888;
}
</style>
</head>
<body>

<%@include file="/navbar/homenav.html"%>
<div style="margin-top: 10px" class="container">
	 <div class="split left"
		style="background-image: url('/kidssummercamp/images/event.jpg'); background-size: 700px 700px;">
		<div class="centered">
			<img src="/kidssummercamp/images/event2.jpg" alt="Avatar woman">
			<h2>EVENTS</h2>
			<p></p>
		</div>
	</div>

	<div class="split right">
		<div class="right">
			<form method="post" action="/kidssummercamp/CityEvent" onsubmit="return main()">
				<div class="container">
					<h1 style="color: black">Register</h1>
					<p style="color: black">Please fill the information regarding
						events.</p>
					<hr>
					</div>
					
					<div>
						<label for="eventname" style="color: red"><b>Event
								Name</b></label> <input type="text" class="form-control"  id="name" name="name" required="required">
								<span id="msgname" style="color: blue"></span>
					</div>
					<div>
						<label for="date" style="color: red"><b>Date</b></label>

						<div class="input-group date" data-provide="datepicker">
							<input type="date" class="form-control"  id="date" name="date" required="required">
							<div class="input-group-addon">
								<span class="glyphicon glyphicon-th"></span>
								<span id="msgdate" style="color: blue"></span>
							</div>
						</div>
						</div>
						<br>
						<div class="dropdown">
							<label for="city" style="color: red"><b>City</b></label> <select
								class="form-control"  id="city" name="city">
								<option>Select City</option>
								<option value="lucknow">Lucknow</option>
								<option value="kanpur">kanpur</option>
								<option value="gorakhpur">gorakhpur</option>
							</select>
							<span id="msgcity" style="color: blue"></span>
						</div>
						<br>
					
					<div>
						<label for="venuaddress" style="color: red"><b>Venue
								Address</b></label> <input type="text" class="form-control"
							placeholder="venue address" name="venueaddress"  id="venueaddress" required="required">
							<span id="msgvenue" style="color: blue"></span>
					</div>
					<div>
						<label for="urlpage" style="color: red"><b>Url Page</b></label> <input
							type="text" class="form-control" placeholder="urlpage" required="required"
							name="urlpage"  id="urlpage">
							<span id="msgurl" style="color: blue"></span>
					</div>
					<div>
						<label for="description" style="color: red"><b>Description</b></label> <input
							type="text" class="form-control" placeholder="about event" required="required"
							name="description"  id="description">
							<span id="msgdes" style="color: blue"></span>
					</div>
					<div>
						<button type="submit" class="registerbtn" id="example1">Update Event</button>
					</div>
			</form>
		</div>
	</div> 
	</div>
	<script src="/kidssummercamp/bs/bootstrap.min.js"></script>
	<script src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>

</body>
</html>
