<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Programs</title>

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
	var campid=document.getElementById("campid").value
	var programid=document.getElementById("programid").value
	var programname=document.getElementById("programname").value
	var duration=document.getElementById("duration").value
	var cost=document.getElementById("cost").value
	var startdt=document.getElementById("start").value
	var enddt=document.getElementById("end").value
	var des=document.getElementById("description").value
	
	
	if(checkEmpty(campid)==false)
		{
		document.getElementById("msgcid").innerHTML="CampID Required"
		flag=false
		}
	if(checkEmpty(programid)==false)
		{
		document.getElementById("msgpid").innerHTML="programid Required"
		flag=false
		}
	if(checkEmpty(programname)==false)
		{
		document.getElementById("msgname").innerHTML="mention program name"
			flag=false
		}
	if(checkEmpty(duration)==false)
	{
	    document.getElementById("msgduration").innerHTML="duration Required"
		flag=false
	}
	if(checkEmpty(cost)==false)
	{
	document.getElementById("msgcost").innerHTML="cost required"
		flag=false
	}
	if(checkEmpty(startdt)==false)
	{
	document.getElementById("msgstart").innerHTML="date Required"
		flag=false
	}
	if(checkEmpty(enddt)==false)
	{
	document.getElementById("msgend").innerHTML=" date Required"
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
		
		
		<div style="width: 100%; height: 100px; background-color: #FFFAFA">
		<div style="width: 80%;height: 100px;float: left;">
		
		<span  style="text-shadow: purple;margin-left: 50px ;font-size: 40px;color: lightblue ;text-decoration: underline;font-family: Gabriola"><b>EVENTS & PROGRAMS</b></span>
		
		</div>
	<div style="width: 20%;height: 90px;float: right;"><img alt="" src="/kidssummercamp/images/1234.jpg">
	<p style="text-decoration: underline;color: blue; margin-bottom: 23px"><a href="#"> go back to home</a></p>
	</div>
		
		</div>
		
	
		
		
		
		<div style="width: 30%;height: 950px;float: left;color: khaki;font-family: Gabriola;font-size: 50px;margin-top: 0px">
		Consistent innovation, coupled with an alert understanding of parents' needs & demands, makes us the most renowned firm, offering summer camping.
</div>
     <div style="width: 50%; height: 950px; background-color: #FFFAFA ; float: left">
     <h2 align="left" style="font-family:Script;color:black ">Get Started! ....</h2>
     <form method="post" action="/kidssummercamp/Programs" onsubmit="return main()">
     <table style="float: left;margin-top: 20px">
<tr><td>
<label style="color:Tan;margin-top: 20px;font-size: 25px;font-family: MV Boli">CampId:</label></td>
<td><input type="text" style=" margin-top: 20px;" id="campid" name="campid" class="form-control"  placeholder="enter valid campid"></td></tr>
<tr><th><span id="msgcid" style="color: blue"></span></th></tr>
 <tr>
<td><label style="color:Tan ;margin-top: 20px;font-size: 25px;font-family: MV Boli">ProgramId:</label></td>
<td><input style=" margin-top: 20px"  type="text" id="programid" name="programid" class="form-control"  placeholder="enter valid programid"></td>
</tr>
<tr><th><span id="msgpid" style="color: blue"></span></th></tr>
<tr>
<td><label style="color: Tan; margin-top: 20px;font-size: 25px;font-family: MV Boli">Program Name:</label></td>
<td><input style= " margin-top :20px;" type="text" id="programname" name="programname" class="form-control"  placeholder="enter program name"></td>
</tr>
<tr><th><span id="msgname" style="color: blue"></span></th></tr>
<tr>
<td><label style="color: Tan;margin-top: 20px;font-size: 25px;font-family: MV Boli">Duration:</label></td>
<td><input style=" margin-top: 20px;" type="text" id="duration" name="duration" class="form-control" placeholder="Total time program held"></td>
</tr>
<tr><th><span id="msgduration" style="color: blue"></span></th></tr>
<tr>
<td><label style="color: Tan;margin-top: 20px;font-size: 25px;font-family: MV Boli">Cost:</label></td>
<td><input  style=" margin-top: 20px;" type="text" id="cost"  name="cost" class="form-control"  placeholder="enter the cost"></td>
</tr>
`<tr><th><span id="msgcost" style="color: blue"></span></th></tr>
<tr>
<td><label style="color: Tan;margin-top: 20px;font-size: 25px;font-family: MV Boli">Start Date:</label></td>
<td><input style=" margin-top: 20px;" type="date" id="start" name="start" class="form-control"  placeholder="enter the start date"></td>
</tr>
<tr><th><span id="msgstart" style="color: blue"></span></th></tr>
<tr>
<td><label style="color: Tan;margin-top: 20px;font-size: 25px;font-family: MV Boli">End Date:</label></td>
<td><input style=" margin-top: 20px;" type="date" id="end" name="end" class="form-control"  placeholder="enter the end date"></td>
</tr>
 <tr><th><span id="msgend" style="color: blue"></span></th></tr>
<tr>
<td><label style="color: Tan;margin-top: 20px;font-size: 25px;font-family: MV Boli">Description:</label></td>
<td><textarea  rows="3" cols="40" style=" margin-top: 20px;"  type="text" id="description" name="description" class="form-control" id="" placeholder="text here......!"></textarea></td>
</tr>
<tr><th><span id="msgdes" style="color: blue"></span></th></tr>
<tr>
<td><button type="submit" id="send" name="send" style="margin-left: 190px;margin-top: 50px" class="btn btn-success btn-block">submit</button></td>
</tr>
 </table>
</form>
</div>
  <div style="width: 100%;height: 200px;background-color: blue;float: left; ">
  
  <h1 align="center" style="color:snow;margin-top: 10px"><b>Contact Us</b></h1>
  
  </div>
  


	<script type="text/javascript"
		src="/kidasummercamp/bs/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>

</body>
</html>