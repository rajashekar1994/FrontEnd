<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<h1  style="color:green;">Enter Supplier Details</h1>
<hr>
</head>
<body>

<style>
body{background-color:#E5E7E9  ;}
</style>
<form:form action="supplier-add" commandName="supplier" method="POST">
<table border="4px" bgcolor="#45B39D">

<tr>
<td>supplier id </td><td><form:input path="id" type="text" name="supplier id"/></td>
</tr>

<tr>
<td>supplier name</td><td><form:input path="name" type="text" name="name"/></td>
</tr>

<tr>
<td>supplier address</td><td><form:input path="address" type="text" name="address"/></td>
</tr>
<tr>
<td><input type="submit" value="submit"></td>
</tr>
</table>
</form:form>


<br/>
<h3>SUPPLIER LIST</h3>
<c:if test="${!empty supplierList}">
		<table class="tg">
			<tr bgcolor="#F0F8FF">
				<th width="120">Supplier ID</th>
				<th width="120">Supplier Name</th>
				<th width="120">Supplier Address</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${supplierList}" var="supplier">
				<tr bgcolor="#808080">
					<td>${supplier.id}</td>
					<td>${supplier.name}</td>
					<td>${supplier.address}</td>
					<td><a href="<c:url value='/manage_supplier_edit-${supplier.id}' />">Edit</a></td>
					
					<td><a href="<c:url value='/manage_supplier_delete-${supplier.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
</body>
</html>