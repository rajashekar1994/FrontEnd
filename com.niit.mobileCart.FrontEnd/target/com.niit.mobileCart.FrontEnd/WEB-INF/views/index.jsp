<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<title>
HOME PAGE
</title>
<!-- <script src="resources/js/jquery.min.js "/></script> -->


<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<!-- <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->


</head>

<body bgcolor= "light blue">

<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="carousel.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>

<jsp:include page="contactus.jsp"></jsp:include>



	<c:if test="${empty successMsg}">
	
	
	</c:if>
	<hr>
	${successMsg}
	<c:if test="${showLandingPage}">
	<jsp:include page="login.jsp"></jsp:include>
	</c:if>
	<c:if test="${showRegistrationPage}">
	<jsp:include page="register.jsp"></jsp:include>
	</c:if>

</body>
</html>
