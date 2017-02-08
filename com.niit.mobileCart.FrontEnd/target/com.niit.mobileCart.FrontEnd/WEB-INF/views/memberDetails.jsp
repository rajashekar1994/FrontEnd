<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page isELIgnored ="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Cart</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

<script type="text/javascript" 
src="http://cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>
 <style>
 body{
background-image: url(resources/images/r.jpg);
background-size:     cover;                      
    background-repeat:   no-repeat;
}
form:form {
  text-align: center;
}
 
 </style>
  
</head>

<body>

<div>
<!--     <img style="display:block; position: relative; margin:auto" src="resources\images\Layer 01.png" /> -->
    <!-- a bunch of tables and stuff that doesn't have a conveniently fixed size  -->
</div>
<h2><center>REGISTER HERE</center></h2>

	<div class="container-fluid" align="center">
	
<div class="col-md-2"  align="left">
  <div class="row-fluid">
		<fieldset>
			
			<form:form modelAttribute="user">
				<br />
				<tr>
				<td><form:label path="id">User ID:</form:label></td>
				<td><form:input path="id" /></td>
				<br />
				</tr>
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				
				<tr>
				<td><form:label path="name">Name:</form:label></td>
				<td><form:input path="name" /></td>
				<br />
				</tr>
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				
				<tr>
				<td><form:label path="password">Password:</form:label></td>
				<td><form:input type="password" path="password" /></td>
				<br />
				</tr>
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				
				
				<tr>
				<td><form:label path="mobile">Mobile #:</form:label></td>
				<td><form:input path="mobile" /></td>
				<br />
				</tr>
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('mobile')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>


				<br />
				
				<br />
					<input name="_eventId_submit" type="submit" class="btn btn-success" value="Submit" />
				<br />
			</form:form>
		</fieldset>
	</div>
	</div>
	</div>
</body>
</html>
