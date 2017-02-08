<%-- <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %> --%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ page isELIgnored="false" %>
<html>
<head>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- <script src="resources/js/jquery.min.js "/></script> -->

<style>
.reg
{
  font-family:italic;
}

h3.modal-title
{ 
   font-size: 120%;
   color:black;
   align:center;
}
body{ 
background-image: url(resources/images/bgk19.jpg); 
background-size:     cover;                      
    background-repeat:   no-repeat;
 }
 navbar {
  background-color: white;
  border-color: #1495fe;
}
</style>

</head>
<body bgcolor="white">



<nav class="navbar navbar-inverse"  >
  <div class="container-fluid" style="color:white">
    <div class="navbar-header" style="color:white">
      <a style="color:#F5F5DC" class="navbar-brand" href="#">MTLkart</a>
    </div> 
    

<ul class="nav navbar-nav">
      <li class="active"><a style="color:#F5F5DC" href="#">HOME</a></li>
      <c:forEach items="${categoryList}" var="category">
      <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href=${category.name}>${category.name}<span class="caret"></span> </a>
      <ul class="dropdown-menu">
      <c:forEach items="${category.products}" var="product">
      <li><a style="color:#000000" href="<c:url value='product_get-${product.id}'/>"> ${product.name} </a>
    
     </c:forEach>
     
       <li><a style="color:#F5F5DC" href="#"></a></li>
     </ul>
      </li>       
      </c:forEach>
      
    <li><a style="color:#F5F5DC" href="about-us">about us</a></li> 
    </ul>
    
    
    
    
    <ul class="nav navbar-nav navbar-right">   
    
      <li class="divider-vertical"></li>
       <c:if test="${pageContext.request.userPrincipal.name != null}">
      <c:if test="${pageContext.request.userPrincipal.name != 'shekar.chennapai'}">
      <li><a  href="<c:url value="/myCart" />"><span class="glyphicon glyphicon-shopping-cart"></span> CART(${size})</a></li>
      </c:if>
      <c:if test="${pageContext.request.userPrincipal.name  == 'shekar.chennapai'}">
       <li><a style="color:#F5F5DC" href="<c:url value="/admin" />">VIEW ALL</a></li>
       </c:if>
       <li><a style="color:#F5F5DC">HELLO, ${pageContext.request.userPrincipal.name}</a></li>
       <li><a  style="color:#F5F5DC;margin:0px 0px 0px 0px" href="<c:url value="/j_spring_security_logout" />"> <span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
       </c:if>
       <c:if test="${pageContext.request.userPrincipal.name  == null}">
       <li><a  style="color:#F5F5DC;margin:0px 0px 0px 0px" href="<c:url value="/login" />"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
       <li><a  style="color:#F5F5DC;margin:0px 0px 0px 0px" href="<c:url value="memberShip.obj" />"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
       </c:if>
    
    
<!--           <li><a href="register" ><span class="glyphicon glyphicon-log-in"></span>Sign Up</a></li>  -->
<!--              <li><a href="admin" ><span class="glyphicon glyphicon-log-in"></span>Admin Page</a></li>  -->
<!--           <li><a data-toggle="modal" data-target="#loginmodal"><span class="glyphicon glyphicon-user"></span>Login</a></li>  -->
    </ul>
  </div>
</nav>


<%--product list declartion  --%>	
			
			<div class="container" style="align:center">
			<div class="row">
				<c:if test="${!empty selectedProduct.name}">
				  <div class="col-md-10 col-md-offset-1">

                    <div class="panel panel-info">
                     <div class="panel-body">
					<table class="table table-striped table-bordered table-list">
					  
						<tr>
<!-- 							<th align="center" width="125" ><font color="grey">Product ID</font></th> -->
							<th align="center" width="175"><font color="black">Product Name</font></th>
							<th align="center" width="190"><font color="black">Product Description</font></th>
							<th align="center" width="90"><font color="black">Price</font></th>
							<th align="center" width="150"><font color="black">Product Category</font></th>
							<th align="center" width="150"><font color="black">Product Supplier</font></th>
							<th align="center" width="150"><font color="black">Product Image</font></th>
                           
						</tr>
						<tr>
<%-- 							<td align="left" ><font color="grey">${selectedProduct.id}</font></td> --%>
							<td align="left" ><font color="black">${selectedProduct.name}</font></td>
							<td align="left" ><font color="black">${selectedProduct.description}</font></td>
							<td align="left" ><font color="black">${selectedProduct.price}</font></td>
							<td align="left" ><font color="black">${selectedProduct.category.name}</font></td>
							<td align="left" ><font color="black">${selectedProduct.supplier.name}</font></td>
							<td align="left" ><img src="<c:url value="/resources/images/${selectedProduct.id}.jpg"/>" /></td>
						
<%-- 							<td align="left" ><a href="<c:url value='cart/add/${selectedProduct.id}' />"><button type="button" class="btn btn-primary">Add to Cart</button></a></td> --%>
							
						</tr>
						
					</table>
					<hr>
					</div>
					<div class="panel-footer">
					<div class="row text-center">
						
						<div class="col-xs-3">
							<a style="align:right" href="<c:url value='cart/add/${selectedProduct.id}' />"><button  type="button" class="btn btn-primary">Add to Cart</button></a>
						</div>
					</div>
     				</div>  
					</div>
					</div>
				</c:if>
			</div>
</div>



