<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="product-add" commandName="product" method="POST">
<table border="4px" bgcolor="orange">

<tr>
<td>PRODUCT ID: </td><td><form:input path="id" type="text" name="id"/></td>
</tr>

<tr>
<td>PRICE</td><td><form:input path="price" type="text" name="price"/></td>
</tr>
<tr>
<td>NAME</td><td><form:input path="name" type="text" name="name"/></td>
</tr>

<tr>
<td>DESCRIPTION</td><td><form:input path="description" type="text" name="description"/></td>
</tr>
<tr>
<td>CATEGORY_ID</td><td><form:input path="category_id" type="text" name="category_id"/></td>
</tr>
<tr>
<td>SUPPLIER_ID</td><td><form:input path="supplier_id" type="text" name="supplier_id"/></td>
</tr>
<tr>
<td>STOCK</td><td><form:input path="stock" type="text" name="stock"/></td>
</tr>
<tr>
<td><input type="submit" value="submit"></td>
</tr>
</table>
</form:form>

<br>
<h3>PRODUCT LIST</h3>
<c:if test="${!empty productList}">
		<table class="tg">
			<tr>
				<th width="120">Product ID</th>
				<th width="120">Product Price</th>
				<th width="120">Product Name</th>
				<th width="120">Product Description</th>
				<th width="120">Category_Id</th>
				<th width="120">Supplier_Id</th>
				<th width="120">Product Stock</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>${product.price}</td>
					<td>${product.name}</td>
					<td>${product.description}</td>
					<td>${category.id}</td>
					<td>${supplier.id}</td>
					<td>${product.stock}</td>
					<td><a href="<c:url value='/manage_product_edit-${product.id}' />">Edit</a></td>
					
					<td><a href="<c:url value='/manage_product_delete-${product.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>




</body>
</html>
