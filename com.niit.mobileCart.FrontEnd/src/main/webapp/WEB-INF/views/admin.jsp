 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="resources/js/jquery.min.js "/></script>
<title>Insert title here</title>
<style>
body {
    background-color:"#87CEFA";
}
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<a href="supplier"><input type="submit"
style="background-color:green" class="btn btn-primary btn-mid"
value="manage supplier"/></a> &nbsp; &nbsp;


<a href="category"><input type="submit"
style="background-color:green" class="btn btn-primary btn-mid"
value="manage category"/></a> &nbsp; &nbsp;

<a href="product"><input type="submit"
style="background-color:green" class="btn btn-primary btn-mid"
value="manage product"/></a> &nbsp; &nbsp;

</body>
</html>