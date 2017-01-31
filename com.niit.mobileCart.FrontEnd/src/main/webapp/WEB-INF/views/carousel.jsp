<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!--   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
<script src="resources/js/jquery.min.js "/></script>







<style>
body {
    background-color: lightblue;
}
</style>




  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
  </style>
</head>
<body>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="<c:url value="resources/images/16.jpg"/>" alt="Chania" width="460" height="345">
      </div>

      <div class="item">
        <img src="<c:url value="resources/images/11jpg.jpg"/>" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="<c:url value="resources/images/8.jpg"/>"alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="<c:url value="resources/images/9.jpg"/>" alt="Flower" width="460" height="345">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
<head>
<style>
.floating-box {
    float: left;
    width: 150px;
    height: 75px;
    margin: 10px;
      
}

.after-box {
    clear: left;
    border: 3px solid red;      
}
</style>
</head>
<body>

<h2></h2>

<div class="floating-box"> <img src="<c:url value="resources/images/88.jpg"/>"alt="" width="200" height="200"/></div>
<div class="floating-box"> <img src="<c:url value="resources/images/33.jpg"/>"alt="" width="200" height="200"/></div>
<div class="floating-box"> <img src="<c:url value="resources/images/44.jpg"/>"alt="" width="200" height="200"/></div>
<div class="floating-box"> <img src="<c:url value="resources/images/55.jpg"/>"alt="" width="200" height="200"/></div>
<div class="floating-box"> <img src="<c:url value="resources/images/66.jpg"/>"alt="" width="200" height="200"/></div>
<div class="floating-box"> <img src="<c:url value="resources/images/77.jpg"/>"alt="" width="200" height="200"/></div>



</body>






</body>
</html>