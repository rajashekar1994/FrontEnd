<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<script src="resources/js/jquery.min.js "/></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>



</head>
<h1  style="color:green;">Enter Product Details</h1>


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
<!-- <body> -->
<%-- <form:form action="product-add" commandName="product" method="POST"> --%>
<!-- <table border="4px" bgcolor="orange"> -->

<!-- <tr> -->
<%-- <td>PRODUCT ID: </td><td><form:input path="id" type="text" name="id"/></td> --%>
<!-- </tr> -->

<!-- <tr> -->
<%-- <td>PRICE</td><td><form:input path="price" type="text" name="price"/></td> --%>
<!-- </tr> -->
<!-- <tr> -->
<%-- <td>NAME</td><td><form:input path="name" type="text" name="name"/></td> --%>
<!-- </tr> -->

<!-- <tr> -->
<%-- <td>DESCRIPTION</td><td><form:input path="description" type="text" name="description"/></td> --%>
<!-- </tr> -->
<!-- <tr> -->
<%-- <td>CATEGORY_ID</td><td><form:input path="category_id" type="text" name="category_id"/></td> --%>
<!-- </tr> -->
<!-- <tr> -->
<%-- <td>SUPPLIER_ID</td><td><form:input path="supplier_id" type="text" name="supplier_id"/></td> --%>
<!-- </tr> -->
<!-- <tr> -->
<%-- <td>STOCK</td><td><form:input path="stock" type="text" name="stock"/></td> --%>
<!-- </tr> -->
<!-- <tr> -->
<!-- <td><input type="submit" value="submit"></td> -->
<!-- </tr> -->
<!-- </table> -->
<%-- </form:form> --%>


<%-- <form:form action="product-add" commandName="product" method="post">
	<table  border="4px" bgcolor="orange">
		<tr >
			<td>Product ID</td>
			<c:choose>
			<c:when test="${!empty product.id}">
			<td><form:input type="text" path="id" name="id" disabled="true" readonly="true"/></td>
			</c:when>
			<c:otherwise>
			<td><form:input type="text" path="id" name="id"/></td>
			</c:otherwise>
			</c:choose>	
		</tr>

		<tr>
			<form:input path="id" hidden="true"/>
			<td>Product Name</td>
			<td><form:input type="text" path="name" name="name" maxlength="20" /></td>
		</tr>
		
		<tr>
			<td>Description</td>
			<td><form:input type="text" path="description" name="description" maxlength="20" /></td>
		</tr>	
		
		<tr>
		<td>PRICE</td>
		<td><form:input path="price" type="text" name="price"/></td>
		</tr>
		
		<tr>
		<td>STOCK</td>
		<td><form:input path="stock" type="text" name="stock"/></td>
		</tr>
		
		
		<tr>
		<td>category</td>
		<td><form:select path="category.name" items="${categoryList}" itemLabel="name"/></td>
		</tr>
		
		<tr>
		<td>supplier</td>
		<td><form:select path="supplier.name" items="${supplierList}" itemLabel="name"/></td>
		</tr>
		
			
		<tr>
			<c:if test="${!empty product.name}">
			<td><input type="submit" value="Edit Product" /></td>
			</c:if>
			<c:if test="${empty product.name}">
			<td><input type="submit" value="Add Product" /></td>
			</c:if>
			<td><input type="reset" value="Clear" /></td>
		</tr>
	</table>	
	</form:form>	
 --%>
 
 
 <form:form action="product-add" commandName="product" method="post" enctype="multipart/form-data">
	<table  border="4px" bgcolor="#45B39D">
		<tr>
		<td>Product ID</td>
	<c:choose>
		<c:when test="${!empty product.id}">
		<td><form:input class="btn btn-default"  type="text" path="id" name="id" disabled="true" readonly="true" /></td>
		</c:when>
		<c:otherwise>
		<td><form:input class="btn btn-default"  type="text" path="id" name="id" maxlength="20" required="true"/></td>
		</c:otherwise>
		</c:choose>
		</tr>

	<tr>
		<form:input path="id" hidden="true"/>
		<td>Product Name</td>
		<td><form:input class="btn btn-default"  type="text" path="name" name="name" maxlength="50" required="true"/></td>
	</tr>		
		
	<tr>
		<td>Product Price</td>
		<td><form:input class="btn btn-default"  type="text" path="price" name="price" maxlength="5" required="true"/></td>
	</tr>
	
	<tr>
		<td>Product Description</td>
		<td><form:input class="btn btn-default"  type="text" path="description" name="description" maxlength="100" required="true" /></td>
	</tr>
	
	<tr>
		<td>Category List</td>
		<td><form:select class="btn btn-default"  path="category.name" items="${categoryList}" itemValue="name" itemLabel="name" required="true"></form:select></td>
	</tr>

	<tr>
		<td>Supplier List</td>
		<td><form:select class="btn btn-default"  path="supplier.name" items="${supplierList}" itemValue="name" itemLabel="name" required="true"></form:select></td>
	</tr>

	<tr>
		<td>Product Stock</td>
		<td><form:input class="btn btn-default"  type="text" path="stock" name="stock" maxlength="5" required="true"/></td>
	</tr>
	
	<tr>
		<td>Product Image</td>
		<td><form:input class="btn btn-default"  type="file" path="image" name="image" required="true"/></td>
	</tr>
			<tr>
			<c:if test="${!empty product.name}">
			<td><input class="btn btn-primary" type="submit" value="Edit Product" /></td>
			</c:if>
			<c:if test="${empty product.name}">
			<td><input class="btn btn-primary" type="submit" value="Add Product" /></td>
			</c:if>
			<td><input class="btn btn-primary" type="reset" value="Clear" /></td>
		</tr>
		
		</table>
	</form:form>
 
 

<br>
<h3>PRODUCT LIST</h3>
<c:if test="${!empty productList}">
<table border="4px" bgcolor="#45B39D" class="tg">
<tr  bgcolor="#F0F8FF">
		
				<th width="120">Product ID</th>
				<th width="120">Product Price</th>
				<th width="120">Product Name</th>
				<th width="120">Product Description</th>
				<th width="120">Category_Id</th>
				<th width="120">Supplier_Id</th>
				<th width="120">Product Stock</th>
				<th width="120">Product Image</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr bgcolor="#BFC9CA  ">
					<td>${product.id}</td>
					<td>${product.price}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${product.category.name}</td>
					<td>${product.supplier.name}</td>
					<td>${product.stock}</td>
					
					<td><img src="<c:url value="/resources/images/${product.id}.jpg"/>" width="150" height="150"/></td>
					<td><a class="btn btn-info" href="<c:url value='/manage_product_edit-${product.id}' />">Edit</a></td>
					
					<td><a class="btn btn-danger" href="<c:url value='/manage_product_delete-${product.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>




</body>
</html>
