 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="resources/js/jquery.min.js "/></script>
<title>Insert title here</title>

</head>
<body style="background-color: lightblue;">
<jsp:include page="header.jsp"></jsp:include>
<div class="container">
<div class="row">
<div class="col-sm-4"><p style="text-align: center;">
<a href="supplier"><input type="submit"
style="background-color:green" class="btn btn-primary btn-mid"
value="manage supplier"/></a> </p>
</div>
<div class="col-sm-4"><p style="text-align: center;">
<a href="category"><input type="submit"
style="background-color:green" class="btn btn-primary btn-mid"
value="manage category"/></a> </p>
</div>

<div class="col-sm-4"><p style="text-align: center;">
<a href="product"><input type="submit"
style="background-color:green" class="btn btn-primary btn-mid"
value="manage product"/></a> </p>
</div>
</div>
</div>
</body>
</html>