<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="resources/js/jquery.min.js "/></script>



  <title>Day 001 SignUp Form</title>
  
  
  <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Open+Sans:600'>

      <link rel="stylesheet" href="resources/css/style.css">
</head>

<body style="background-color: lightblue;">

 <form:form action="register-add" commandName="user" method="POST" >
 <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign Up</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
		<div class="login-form">
 <div class="sign-in-htm">
<!--   <div class="sign-up-htm">  -->
				<div class="group"> 
 					<label for="user" class="label">User id</label>
 					<form:input path="id" name="id" id="user" type="text" class="input" required="true"/> 
 				</div> 
 				<div class="group"> 
 					<label for="pass" class="label">user name</label> 
 					<form:input path="name" name="name" id="pass" type="text" class="input" required="true"/> 
 				</div> 
 				<div class="group"> 
 					<label for="pass" class="label">Password</label>
 					<form:input path="password" id="pass" type="password" class="input" data-type="password" required="true"/> 
 				</div> 
 				<div class="group"> 
 					<label for="pass" class="label">mobile no</label> 
 					<form:input path="mobile" id="pass" type="text" class="input" required="true"/> 
 				</div> 
 				<div class="group"> 
 					<input type="submit" class="button" value="register"> 
 				</div> 
 				
 				
 		</div> 
 		</form:form>
 	 
</body>
</html>















<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1" --%>
<%--     pageEncoding="ISO-8859-1"%> --%>
<%--     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %> --%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<!-- <script src="resources/js/jquery.min.js "/></script> -->




<!-- <style> -->


<!-- /* body {background-color:#E5E7E9 } */ -->
<!-- </style> -->

<!-- <h1 style="color:blue;">REGISTER HERE</h1> -->
<!-- <hr> -->
<%-- <form:form action="register-add" commandName="user" method="POST"> --%>
<!-- <table border="4px" bgcolor="#45B39D"> -->

<!-- <tr> -->
<%-- <td>USER ID </td><td><form:input path="id" type="text" name="id"/></td> --%>
<!-- </tr> -->

<!-- <tr> -->
<%-- <td>USER NAME</td><td><form:input path="name" type="text" name="name"/></td> --%>
<!-- </tr> -->

<!-- <tr> -->
<%-- <td>PASSWORD</td><td><form:input path="password" type="text" name="password"/></td> --%>
<!-- </tr> -->

<!-- <tr> -->
<%-- <td>MOBILE NO</td><td><form:input path="mobile" type="text" name="mobile"/></td> --%>
<!-- </tr> -->

<!-- <tr> -->
<!-- <td><input type="submit" value="register"></td> -->
<!-- </tr> -->
<!-- </table> -->
<%-- </form:form> --%>



<!-- </body> -->
<!-- </head> -->
<!-- </html> -->

