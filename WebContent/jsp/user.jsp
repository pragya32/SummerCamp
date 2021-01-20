<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.*" %>
<%@page import="kidssummercamp.dbtask.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="/kidssummercamp/bs/bootstrap.min.css">
<script src="/kidssummercamp/bs/bootstrap.min.js"></script>
<script src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>
<title>View Profile</title>
</head>
<body
	style="background-image: url('/kidssummercamp/images/mush.jpg'); background-size: 1368px 900px">
	<div style="margin-top: 10px; height: 200px; width: 100%;float: left" >
		<img src="/kidssummercamp/images/summer.png" height="200px"
			width="400px">
		<%
			HttpSession hs = request.getSession(false);
			String organiserid = (String) hs.getAttribute("sessionkey");
			if (organiserid == null || hs.isNew()) {

			} else {
		%>

		<span
			style="margin-left:700px;   color: black; font-size: 20px; margin-top: 40px"><%=organiserid%></span>
			<%
			}
		%>

		  <a style="margin-top: 20px ;color: black"  href="#" class="btn btn-success "><b>User</b>
		</a>
		   <a class="btn btn-success" style="margin-top: 20px">
			<b>Logout</b>
		</a>
		</div>
<div style="height: 700px;width: 20%;float: left">

		  <a style="margin-left: 50px ;margin-top: 20px"   href="/kidssummercamp/jsp/compose.jsp" class="btn btn-info"><b>Compose</b>
		</a><br>
		
		  <a style="margin-left: 50px;margin-top: 10px" href="/kidssummercamp/jsp/inbox.jsp" class="btn btn-info"><b>Inbox</b>
		</a>
<br>
<a href="/kidssummercamp/jsp/cityevent.jsp"  style="font-size: 20px; color: black; margin-left: 50px; margin-top: 100px;color: red"><B>Add An City Event</B></a>
<a href="/kidssummercamp/jsp/viewfeedback.jsp"  style="font-size: 20px; color: black; margin-left: 50px;color: red"><b>View Feedback</b></a>
<a href="/kidssummercamp/jsp/registration&login/organizerregistration.jsp"  style="font-size: 20px; color: black; margin-left: 50px;color: red"><b>Add a Camp</b></a>

</div>
<div style="height: 700px; width: 80%; float: left;margin-top:10px;background-image:url('/kidssummercamp/images/pic14.jpg');background-size: 1200px 700px">
<table border="0" 
			 style=" margin-left: 200px; margin-top: 50px; border-radius: 30px;width: 70%;height: 500px">
			 <%
		String strsql="select * from student where id=?";
		
		 ResultSet rsdata= CrudOperation.getData(strsql,organiserid);
		       if(  rsdata.next())
		       {
		    	   String name=rsdata.getString("name");
		    	   String email=rsdata.getString("email");
		    	  String phone=rsdata.getString("phone");
		    	  String gender=rsdata.getString("gender");	
		    	  String course=rsdata.getString("course");
		    	  
		      %>
		       
		      <table border="0">
		      <tr><th>name</th><th><%=name %></th></tr>
		       <tr><th>email</th><th><%=email %></th></tr>
		        <tr><th>phone</th><th><%=phone %></th></tr>
		        <tr><th>gender</th><th><%=gender %></th></tr>
		        <tr><th>course</th><th><%=course %></th></tr>
		      
		      
		      
		      
		      </table> 
		       
		      
		      
		      
		      
		</table>
		<%
			}
		%>
</div>

	<script src="/kidssummercamp/bs/bootstrap.min.js"></script>
	<script src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>
</body>
</html>