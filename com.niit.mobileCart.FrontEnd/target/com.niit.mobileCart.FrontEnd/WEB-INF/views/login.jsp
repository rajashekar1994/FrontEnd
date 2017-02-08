<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="resources/js/jquery.min.js "/></script>



  <meta charset="UTF-8">
  <title>Day 001 Login Form</title>
  
  
  <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Open+Sans:600'>

      <link rel="stylesheet" href="resources/css/style.css">
      
       
      
      
      

  
</head>

<body style="background-color: lightblue;">
<form  action="<c:url value='j_spring_security_check'/>"  method="POST" role="form">

  <div class="login-wrap">
	<div class="login-html">
		<input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
		<input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab"></label>
		<div class="login-form">
			<div class="sign-in-htm">
				<div class="group">
					<label for="user" class="label">Username</label>
					<input  name="id" id="id" type="text" class="input" required="true">
				</div>
				<div class="group">
					<label for="pass" class="label">Password</label>
					<input  name="password" id="pass" type="password" class="input" data-type="password" required="true">
				</div>
				<div class="group">
					<input id="check" type="checkbox" class="check" checked>
					<label for="check"><span class="icon"></span> Keep me Signed in</label>
				</div>
				<div class="group">
					<input type="submit" class="button" value="Sign In">
				</div>
				<div class="hr"></div>
				<div class="foot-lnk">
					<a href="#forgot">Forgot Password?</a>
				</div>
			</div>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
<!-- 			<div class="sign-up-htm"> -->
<!-- 				<div class="group"> -->
<!-- 					<label for="user" class="label">Username</label> -->
<!-- 					<input id="user" type="text" class="input"> -->
<!-- 				</div> -->
<!-- 				<div class="group"> -->
<!-- 					<label for="pass" class="label">Password</label> -->
<!-- 					<input id="pass" type="password" class="input" data-type="password"> -->
<!-- 				</div> -->
<!-- 				<div class="group"> -->
<!-- 					<label for="pass" class="label">Repeat Password</label> -->
<!-- 					<input id="pass" type="password" class="input" data-type="password"> -->
<!-- 				</div> -->
<!-- 				<div class="group"> -->
<!-- 					<label for="pass" class="label">Email Address</label> -->
<!-- 					<input id="pass" type="text" class="input"> -->
<!-- 				</div> -->
<!-- 				<div class="group"> -->
<!-- 					<input type="submit" class="button" value="Sign Up"> -->
<!-- 				</div> -->
<!-- 				<div class="hr"></div> -->
<!-- 				<div class="foot-lnk"> -->
<!-- 					<label for="tab-1">Already Member?</a> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<!-- </div> -->
  
  
</body>
</html>



















<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>
<%-- <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %> --%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"> -->
<!-- <script src="resources/js/jquery.min.js "/></script> -->
<!-- <title>Login</title> -->
<!-- <style> -->
<!-- /* form { */ -->
<!-- /*     border: 3px solid #f1f1f1; */ -->
<!-- /* } */ -->

<!-- /* input[type=text], input[type=password] { */ -->
<!-- /*     width: 100%; */ -->
<!-- /*     padding: 12px 20px; */ -->
<!-- /*     margin: px 0; */ -->
<!-- /*     display: inline-block; */ -->
<!-- /*     border: 4px solid #ccc; */ -->
<!-- /*     box-sizing: border-box; */ -->
<!-- /* } */ -->

<!-- /* button { */ -->
<!-- /*     background-color: #4CAF50; */ -->
<!-- /*     color: white; */ -->
<!-- /*     padding: 14px 20px; */ -->
<!-- /*     margin: 8px 0; */ -->
<!-- /*     border: none; */ -->
<!-- /*     cursor: pointer; */ -->
<!-- /*     width: 100%; */ -->
<!-- /* } */ -->

<!-- /* .cancelbtn { */ -->
<!-- /*     width: auto; */ -->
<!-- /*     padding: 10px 18px; */ -->
<!-- /*     background-color: #f44336; */ -->
<!-- /* } */ -->

<!-- /* .imgcontainer { */ -->
<!-- /*     text-align: center; */ -->
<!-- /*     margin: 24px 0 12px 0; */ -->
<!-- /* } */ -->

<!-- /* img.avatar { */ -->
<!-- /*     width: 40%; */ -->
<!-- /*     border-radius: 50%; */ -->
<!-- /* } */ -->

<!-- /* .container { */ -->
<!-- /*     padding: 16px; */ -->
<!-- /* } */ -->

<!-- /* span.psw { */ -->
<!-- /*     float: right; */ -->
<!-- /*     padding-top: 16px; */ -->
<!-- /* } */ -->

<!-- /* /* Change styles for span and cancel button on extra small screens */ */ -->
<!-- /* @media screen and (max-width: 300px) { */ -->
<!-- /*     span.psw { */ -->
<!-- /*        display: block; */ -->
<!-- /*        float: none; */ -->
<!-- /*     } */ -->
<!-- /*     .cancelbtn { */ -->
<!-- /*        width: 100%; */ -->
<!-- /*     } */ -->
<!-- /* } */ -->
<!-- </style> -->







<!-- <style> -->
<!-- /* body { */ -->
<!-- /* background-color: #E5E7E9 ; */ -->
<!-- /* } */ -->
<!-- </style> -->
<!-- </head> -->
<!-- <body> -->

<!-- <div class="wrapper"> -->

<%--     <form class="form-signin" action="<c:url value='j_spring_security_check'/>"  method="POST" role="form">        --%>
<!--       <h2 class="form-signin-heading">Please login</h2> -->
<!--       <input type="text" class="form-control" name="id" placeholder="Email Address" required="" autofocus="" /> -->
<!--       <input type="password" class="form-control" name="password" placeholder="Password" required=""/>       -->
<!--       <label class="checkbox"> -->
<!--         <input type="checkbox" value="remember-me" id="rememberMe" name="rememberMe"> Remember me -->
<!--       </label> -->
<!--       <button class="btn btn-lg btn-primary btn-block" type="submit">Login</button>   -->
<%--        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />  --%>
<%--     </form> --%>
<!--   </div> -->
<!--   </body> -->
 
<!-- <!--     <h3>Enter your Username and Password below</h3> --> 
<!-- <!--     <hr> --> 
<%-- <%--     <form  action="<c:url value='j_spring_security_check'/>"  method="POST" role="form"> --%> 
<!-- <!--         <table border="4px" bgcolor="#45B39D"> --> 
<!-- <!--             <tr> --> 
<!-- <!--                 <td>User Name</td><td><input type="text" name="id"> --> 
<!-- <!--                 </td> --> 
<!-- <!--             </tr> --> 
            
            
            
            
            
            
<!-- <!--             <tr> --> 
<!-- <!--                 <td>Password</td><td><input type="password" name="password"> --> 
<!-- <!--                 </td> --> 
<!-- <!--             </tr> --> 
<!-- <!--             <tr> --> 
<!-- <!--                 <td><input type="submit" value="Login"></td> --> 
<!-- <!--                 <td><input type="reset" value="Reset"></td> --> 
<!-- <!--             </tr> --> 
<!-- <!--         </table> --> 
<%-- <%--         <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%> 
<%-- <%--     </form> --%> 
<!-- <!-- </body> --> 
<!-- </html> -->