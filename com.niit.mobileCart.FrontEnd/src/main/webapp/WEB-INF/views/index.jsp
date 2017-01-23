<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<body>
<h2>Hello World!</h2>
	<c:if test="${empty successMsg}">
	<h2>please Login or Register</h2>
	<a href="login">Login</a> <br>
	<a href="register">Register</a>
	<a href="admin">admin</a><br>
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
