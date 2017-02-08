<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
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
 th{
    color: light blue;
    backgr	ound-color: #9ACD32;
}

 body{ 
background-image: url(resources/images/cc2.jpg); 
background-size:     cover;                      
    background-repeat:   no-repeat;
 } 


</style>
</head>


<body style="background-color:white;">


<!--  <img style="display:block; position: relative; margin:auto" src="resources\images\Layer 01.png" /> -->
    <!-- a bunch of tables and stuff that doesn't have a conveniently fixed size  -->

<h2><center>CONFIRM DETAILS</center></h2>
		<br>
		<br>
		<div class="container-fluid">
	
<div class="col-md-2">
  <div class="row-fluid">
		<fieldset>
		<!-- for triggering webflow events using links,
					 the eventId to be triggered is given in "href" attribute as:
				 -->
			
			<sf:form modelAttribute="user">
				<sf:label path="id">User ID :</sf:label>    ${user.id}
					<br />
				<br />
				
				<sf:label path="name"> User Name:</sf:label> ${user.name}
					<br />
				<br />
				
				<sf:label path="password">Password :</sf:label> ${user.password}
				<br>
					<br>
					
                
				
				<sf:label path="mobile">Mobile #:</sf:label> ${user.mobile}
					<br />
				<br />
				
				<input name="_eventId_edit" type="submit"  class="btn btn-primary" value="Edit" />
				<input name="_eventId_submit" type="submit" class="btn btn-success" value="Confirm Details" />
				<br />
			</sf:form>
		</fieldset>
	</div>
	</div>
	</div>
</body>
</html>