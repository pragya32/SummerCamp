<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="kidssummercamp.dbtask.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css"
	href="/kidssummercamp/bs/bootstrap.min.css">
<script src="/kidssummercamp/bs/bootstrap.min.js"></script>
<script src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>
<title>View Schedule</title>
</head>
<body
	style="background-image: url('/kidssummercamp/images/pic1.jpg'); background-size: 1368px 900px">
		<div
		style="margin-top: 10px; height: 90px; width: 100%; background-color: pink; float: left;">
		<%
			HttpSession hs = request.getSession(false);
			String parentid = (String) hs.getAttribute("sessionkey");
			if (parentid == null || hs.isNew()) {

			} else {
		%>

		<span
			style="color: black; font-size: 20px; margin-left: 800px; margin-top: 40px"><%=parentid%></span>



		<%
			}
		%>

		<a style="margin-top: 20px; color: black"
			href="#" class="btn btn-success "><b>User</b> </a> <a
			class="btn btn-success" style="margin-top: 20px"> <b>Logout</b>
		</a>
	</div>
	<div style="height: 700px; width: 20%; float: left">

		<a style="margin-left: 50px; margin-top: 20px"
			href="/kidssummercamp/jsp/compose.jsp" class="btn btn-info"><b>Compose</b>
		</a><br> <a style="margin-left: 50px; margin-top: 10px"
			href="/kidssummercamp/jsp/inbox.jsp" class="btn btn-info"><b>Inbox</b>
		</a> <br> <a href="/kidssummercamp/jsp/viewschedule.jsp"
			style="font-size: 20px; color: black; margin-left: 50px; margin-top: 100px">View
			Schedule</a> <a
			href="/kidssummercamp/jsp/registration&login/childadmission.jsp"
			style="font-size: 20px; color: black; margin-left: 50px;">Register
			For Camp</a>

	</div>
	<div style="height: 700px; width: 80%; float: left;margin-top:10px;background-image:     url('/kidssummercamp/images/pic14.jpg');background-size: 1200px 700px">
	
		<%
			String strsql = "select * from parent where parentid=?";

				ResultSet rsdata = CrudOperation.getData(strsql, parentid);
				if (rsdata.next()) {
					String name = rsdata.getString("name");
					String address = rsdata.getString("address");
					String phone = rsdata.getString("phoneno");
					String email = rsdata.getString("email");
		%>

		<table border="0" 
			 style=" margin-left: 200px; margin-top: 50px; border-radius: 30px;width: 70%;height: 500px">
			<tr >
				<th style="font-size: 20px; margin-left: 5px">User Name</th>
				<th style="font-size: 20px;"><%=name%></th>
			</tr>
			<tr>
				<th style="font-size: 20px; margin-left: 5px">Address</th>
				<th style="font-size: 20px;"><%=address%></th>
			</tr>
			<tr >
				<th  style="font-size: 20px; margin-left: 5px">Phone</th>
				<th style="font-size: 20px;"><%=phone%></th>
			</tr>
			<tr>
				<th style="font-size: 20px; margin-left: 5px">E-mail</th>
				<th style="font-size: 20px;"><%=email%></th>
			</tr>
		</table>
		<%
			}
		%>

	</div>
	


	<script src="/kidssummercamp/bs/bootstrap.min.js"></script>
	<script src="/kidssummercamp/bs/jquery-3.4.1.min.js"></script>
</body>
</html>