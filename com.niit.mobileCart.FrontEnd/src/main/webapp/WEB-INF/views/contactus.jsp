<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<title>Insert title here</title>
<style>
body{ 
background-image: url(resources/images/bgk19.jpg); 
background-size:     cover;                      
    background-repeat:   no-repeat;
 } 

</style>
</head>
<body bgcolor= "lightblue">
<jsp:include page="navbar.jsp"></jsp:include> 
<%-- <img alt="" src="<c:url value='resources/images/contact.jpg' />" /> --%>
<div >
    <div class="container">
        <div class="row">
            <!-- <div class="col-xs-2 col-md-3" style="color:#EEE8AA;margin:0px 100px 0px 100px">
               <a style="color:#EEE8AA;font-size:2.0em" href="onLoad"><span class="glyphicon glyphicon-home"></span></a>
            </div> -->
            <div>
            
                
            </div>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
       
        <br/><br/>
        <div class="col-md-4" style="color:#000000">
            <form>
            <legend style="color:#000000"><span style="color:#000000"  class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong style="color:#000000">Twitter, Inc.</strong><br>
                Malleswaram<br>
                 Banglore<br>
                <abbr title="My mobile number">
                    Ph:</abbr>
                8498957393
            </address>
            <address>
                <strong>Mail Us at </strong><br>
                <a href="mailto:#">shekar.chennapai@gmail.com</a>
            </address>
            </form>
        </div>
    </div>
</div>



</body>

</html>