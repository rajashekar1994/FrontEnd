<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>

<body>









<style>
body {background-color: #ABEBC6;}
</style>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="carousel.jsp"></jsp:include>
<jsp:include page="footer.jsp"></jsp:include>


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
