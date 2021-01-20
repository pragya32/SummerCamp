<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>feedback</title>
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
	var parentid=document.getElementById("parentid").value
	var campid=document.getElementById("campid").value
	var message=document.getElementById("message").value
	
	
	
	if(checkEmpty(parentid)==false)
		{
		document.getElementById("userparentid").innerHTML="parentId Required?"
		flag=false
		}
	if(checkEmpty(campid)==false)
		{
		document.getElementById("usercampid").innerHTML="campId Required?"
		flag=false
		}
	if(checkEmpty(message)==false)
		{
		document.getElementById("usermsg").innerHTML="give your feedback?"
			flag=false
		}
	
	return flag
	}


</script>
</head>
<body>
<div class="container" style="width: 100%;height: 100px;background-color: snow;float: left;font-family: cursive;font-size: 60px;text-decoration: blink;color: khaki;margin-left: 500px">
	FEEDBACK</div>

<div id="form" style="float: left;width: 100%;height: 900px">

<div class="fish" id="fish"></div>

<form id="waterform" method="post" action="/kidssummercamp/FeedBack" onsubmit="return main()">

<div class="formgroup">
    <label for="id">Parent-Id*</label>
    <input type="text" id="parentid" name="parentid" placeholder=" Registered Parent id..." />
     <span id="userparentid" style="color: black"></span>
</div>

<div class="formgroup">
    <label for="id">Camp-Id*</label>
    <input type="text" id="campid" name="campid" placeholder="Camp id alloted..." />
    <span id="usercampid" style="color: black"></span>
</div>

<div class="formgroup">
    <label for="message">Your message*</label>
    <textarea id="message" name="message" placeholder="text here!"></textarea>
    <span id="usermsg" style="color: black"></span>
</div>
<div class="formgroup">
	<input type="submit" value="Send your message!" /></div>
</form>
</div>
<div style="width: 100%;height: 100px;background-color: snow;float: left;"></div>

<script type="text/javascript" src="/kidssummercamp/bs/bootstrap.min.js"></script>
<script type="text/javascript" src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>
</body>
</html>