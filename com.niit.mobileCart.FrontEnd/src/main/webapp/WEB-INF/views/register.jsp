<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<h1 style="color:blue;">REGISTER HERE</h1>
<hr>
<form:form action="register-add" commandName="user" method="POST">
<table border="4px" bgcolor="orange">

<tr>
<td>USER ID </td><td><form:input path="id" type="text" name="id"/></td>
</tr>

<tr>
<td>USER NAME</td><td><form:input path="name" type="text" name="name"/></td>
</tr>

<tr>
<td>PASSWORD</td><td><form:input path="password" type="text" name="password"/></td>
</tr>

<tr>
<td>mobile no</td><td><form:input path="mobile" type="text" name="mobile"/></td>
</tr>

<tr>
<td><input type="submit" value="register"></td>
</tr>
</table>
</form:form>


</body>
</html>