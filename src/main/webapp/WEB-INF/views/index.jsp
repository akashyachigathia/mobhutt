<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
    <%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="css/bootstrap.min.css" rel="stylesheet">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="resources/references/css/styles.css" rel="stylesheet">
	<script src="resources/references/js/bootstrap.js"></script>
    <link href="resources/references/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
    <script src ='bootstrap/js/bootstrap.min.js'></script>
    <script src='js/jquery-1.11.0.min.js'></script>
	<link type="text/css" rel="stylesheet" href="stylesheet.css"/>
	
	
<c:import url="/head-meta"/>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
  
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }
  </style>


</head>
<body>

<c:import url="/head"/>


<br><br>


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
        <img src="${pageContext.request.contextPath}/resources/images/img_1.png" alt="Chania" width="460" height="345">
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/img_2.png" alt="Chania" width="460" height="345">
      </div>
    
      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/img_3.png" alt="Flower" width="460" height="345">
      </div>

      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/img_4.png" alt="Flower" width="460" height="345">
      </div>
      
      <div class="item">
        <img src="${pageContext.request.contextPath}/resources/images/img_5.png" alt="Flower" width="460" height="345">
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
    
    <Br>
    <Br>
   
      <div class="container-wrapper">
    <div class="container">
        <center><h2>MobHut</h2></center>
    
        <div class="group">
        <label for="text">Have you been in the search of some of the amazing rumors behind the iPhone 7 plus
         release date and features? Well, it is a known fact all over the world that each single person has just one hot topic to talk about and it is all about the "iPhone 7" launch </label>
                    
              
              
        
       
        </div>
		
   
</body>
</html>