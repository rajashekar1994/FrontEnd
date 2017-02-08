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

 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="resources/js/jquery.min.js "/></script>

<link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Open+Sans:600'>

      
 

  <title>Day 001 SignUp Form</title>
  
  
  <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Open+Sans:600'>

      <link rel="stylesheet" href="resources/css/style.css">
  
</head>



<body style="background-color: lightblue;">
<body>


<div>
<!--     <img style="display:block; position: relative; margin:auto" src="resources\images\Layer 01.png" /> -->
    <!-- a bunch of tables and stuff that doesn't have a conveniently fixed size  -->
</div>
<h2><center>REGISTER HERE</center></h2>


			
			<form:form modelAttribute="user">
			<div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
		<div class="login-form">
			<div class="sign-in-htm">
			
			
				<div class="group">
				<form:label class="label" path="id">User ID:</form:label>
				<form:input class="input" name="id" id="user" type="text" path="id" />
				</div>
				
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('id')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				
				
				
				<div class="group">
				<form:label class="label" path="name">Name:</form:label>
				<form:input class="input" name="name" id="pass" type="text" path="name" />
				
				</div>
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('name')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				
				<div class="group">
				<form:label class="label" path="password">Password:</form:label>
				<form:input id="pass" type="password" class="input" path="password" />
				
				</div>
				<!-- to display validation messages -->
				<c:forEach
					items="${flowRequestContext.messageContext.getMessagesBySource('password')}"
					var="err">
					<div>
						<span>${err.text}</span>
					</div>
				</c:forEach>
				
				
				<div class="group">
				<form:label class="label" path="mobile">Mobile:</form:label>
				<form:input id="pass" type="text" class="input" path="mobile" />
				</div>
				
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
									<input name="_eventId_submit" type="submit"
										class="btn btn-success" value="Submit" />
									<br />
			</form:form>
		</fieldset>
	</div>
	</div>
	</div>
</body>
</html>
