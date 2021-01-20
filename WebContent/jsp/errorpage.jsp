<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1" isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>error page</title>
</head>
<body bgcolor="lightblue">
<h1 align="center"><b>Server is busy...</b></h1>
<h3 align="center">(access this site later!)</h3>
<%
System.out.println(exception.getMessage());

%>


</body>
</html>