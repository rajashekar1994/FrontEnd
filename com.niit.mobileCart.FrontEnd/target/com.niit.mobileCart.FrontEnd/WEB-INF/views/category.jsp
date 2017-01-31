<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<h1  style="color:green;">Enter Category Details</h1>
<hr>
</head>
<body>
<style>
body{background-color:#E5E7E9  }

</style>
</body>
<%-- <form:form action="category-add" commandName="category" method="POST"> --%>
<!-- <table border="4px" bgcolor="orange"> -->

<!-- <tr> -->
<%-- <td>CATEGORY ID </td><td><form:input path="id" type="text" name="id"/></td> --%>
<!-- </tr> -->

<!-- <tr> -->
<%-- <td>NAME</td><td><form:input path="name" type="text" name="name"/></td> --%>
<!-- </tr> -->

<!-- <tr> -->
<%-- <td>DESCRIPTION</td><td><form:input path="description" type="text" name="description"/></td> --%>
<!-- </tr> -->
<!-- <tr> -->
<!-- <td><input type="submit" value="submit"></td> -->
<!-- </tr> -->
<!-- </table> -->
<%-- </form:form> --%>
<!-- <br> -->
<!-- <h3>CATEGORY LIST</h3> -->
<%-- <c:if test="${!empty categoryList}"> --%>
<!-- 		<table class="tg"> -->
<!-- 			<tr> -->
<!-- 				<th width="120">Category ID</th> -->
<!-- 				<th width="120">Category Name</th> -->
<!-- 				<th width="200">Category Description</th> -->
<!-- 				<th width="60">Edit</th> -->
<!-- 				<th width="600">Delete</th> -->
<!-- 			</tr> -->
<%-- 			<c:forEach items="${categoryList}" var="category"> --%>
<!-- 				<tr> -->
<%-- 					<td>${category.id}</td> --%>
<%-- 					<td>${category.name}</td> --%>
<%-- 					<td>${category.description}</td> --%>
<%-- 					<td><a href="<c:url value='/manage_category_edit/${category.id}' />">Edit</a></td> --%>
					
<%-- 					<td><a href="<c:url value='/manage_category_delete/${category.id}' />">Delete</a></td> --%>
<!-- 				</tr> -->
<%-- 			</c:forEach> --%>
<!-- 		</table> -->
<%-- 	</c:if> --%>


<form:form action="category-add" commandName="category" method="post">
	<table  border="4px" bgcolor="#45B39D">
		<tr >
			<td>category id</td>
			<c:choose>
			<c:when test="${!empty category.id}">
			<td><form:input type="text" path="id" name="id" disabled="true" readonly="true"/></td>
			</c:when>
			<c:otherwise>
			<td><form:input type="text" path="id" name="id"/></td>
			</c:otherwise>
			</c:choose>	
		</tr>

		<tr>
			<form:input path="id" hidden="true"/>
			<td>category name</td>
			<td><form:input type="text" path="name" name="name" maxlength="20" /></td>
		</tr>
		
		<tr>
			<td> category description</td>
			<td><form:input type="text" path="description" name="description" maxlength="20" /></td>
		</tr>	
			
		<tr>
			<c:if test="${!empty category.name}">
			<td><input type="submit" value="Edit Category" /></td>
			</c:if>
			<c:if test="${empty category.name}">
			<td><input type="submit" value="Add Category" /></td>
			</c:if>
			<td><input type="reset" value="Clear" /></td>
		</tr>
	</table>	
	</form:form>	
<hr>

	<c:if test="${!empty categoryList}">
		<table width=100% cellpadding="5px">
			<tr bgcolor="#F0F8FF">
				<th width="80">Category ID</th>
				<th width="120">Category Name</th>
				<th width="120">Category Description</th>
				<th width="60">Edit</th>
				<th width="60">Delete</th>
			</tr>
			<c:forEach items="${categoryList}" var="category">
				<tr bgcolor="#808080">
					<td align="left">${category.id}</td>
					<td align="left">${category.name}</td>
					<td align="left">${category.description}</td>
					<td align="center"><a href="<c:url value='manage_category_edit-${category.id}'/>">EDIT</a></td>
					<td align="center"><a href="<c:url value='manage_category_delete-${category.id}'/>">DELETE</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>


</body>
</html>