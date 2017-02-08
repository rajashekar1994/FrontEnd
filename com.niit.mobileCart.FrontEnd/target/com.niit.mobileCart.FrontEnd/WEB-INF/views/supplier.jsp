<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="resources/js/jquery.min.js " /></script>


<!-- <style> -->
<!-- /* body{background-color:lightblue  ;} */ -->
<!-- </style> -->
<!-- </head> -->
<body> 

</body>
<!-- <hr> -->


<%-- <form:form action="supplier-add" commandName="supplier" method="POST">
<!-- <table border="4px" bgcolor="#45B39D"> -->

<!-- <tr> -->
<%-- <td>supplier id </td><td><form:input path="id" type="text" name="supplier id"/></td> --%>
<!-- </tr> -->

<!-- <tr> -->
<%-- <td>supplier name</td><td><form:input path="name" type="text" name="name"/></td> --%>
<!-- </tr> -->

<!-- <tr> -->
<%-- <td>supplier address</td><td><form:input path="address" type="text" name="address"/></td> --%>
<!-- </tr> -->
<!-- <tr> -->
<!-- <td><input type="submit" value="submit"></td> -->
<!-- </tr> -->
<!-- </table> -->
<%-- </form:form> --%>
<!-- </body> -->



<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<style>
table {
	border-collapse: collapse;
	width: 100%;
}

th, td {
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #f2f2f2
}

th {
	background-color: #4CAF50;
	color: white;
}
</style>
</head>

<body>

	<h2  style="color:green;">Enter supplier details</h2>
<body>
	<form:form action="supplier-add" commandName="supplier" method="POST">

		<table border="4px" bgcolor="#45B39D" border="4px" bgcolor="#45B39D">

			<tr>
				<td>supplier id</td>
				<td><form:input class="btn btn-default" path="id" type="text" name="supplier id" required="true"/></td>
			</tr>
			<tr>
				<td>supplier name</td>
				<td><form:input class="btn btn-default" path="name" type="text" name="name" required="true"/></td>
			</tr>
			<tr>
				<td>supplier address</td>
				<td><form:input class="btn btn-default" path="address" type="text" name="address" required="true"/></td>
			</tr>

			<tr>
				<c:if test="${!empty supplier.name}">
					<td><input class="btn btn-primary" type="submit"
						value="Edit Supplier" /></td>
				</c:if>
				<c:if test="${empty supplier.name}">
					<td><input class="btn btn-primary" type="submit"
						value="add Supplier" /></td>
				</c:if>
				<td><input class="btn btn-primary" type="reset" value="clear" /></td>

			</tr>


		</table>
	</form:form>
</body>






<h3>SUPPLIER LIST</h3>
<c:if test="${!empty supplierList}">
	<table border="4px" bgcolor="#45B39D" class="tg">
		<tr  bgcolor="#F0F8FF">
			<th width="120">Supplier ID</th>
			<th width="120">Supplier Name</th>
			<th width="120">Supplier Address</th>
			<th width="60">Edit</th>
			<th width="60">Delete</th>
		</tr>
		<c:forEach items="${supplierList}" var="supplier">
			<tr bgcolor="#BFC9CA">
				<td>${supplier.id}</td>
				<td>${supplier.name}</td>
				<td>${supplier.address}</td>
				<td><a class="btn btn-info"
					href="<c:url  value='/manage_supplier_edit-${supplier.id}' />">Edit</a></td>

				<td><a class="btn btn-danger"
					href="<c:url value='/manage_supplier_delete-${supplier.id}' />">Delete</a></td>
			</tr>
		</c:forEach>
	</table>
</c:if>
</body>
</html>