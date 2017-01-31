<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style>
body {
background-color: #E5E7E9 ;
}
</style>
</head>
<body>
    <h3>Enter your Username and Password below</h3>
    <hr>
    <form  action="<c:url value='j_spring_security_check'/>"  method="POST" role="form">
        <table border="4px" bgcolor="#45B39D">
            <tr>
                <td>User Name</td><td><input type="text" name="id">
                </td>
            </tr>
            <tr>
                <td>Password</td><td><input type="password" name="password">
                </td>
            </tr>
            <tr>
                <td><input type="submit" value="Login"></td>
                <td><input type="reset" value="Reset"></td>
            </tr>
        </table>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
    </form>
</body>
</html>