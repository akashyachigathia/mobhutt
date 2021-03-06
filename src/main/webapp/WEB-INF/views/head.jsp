<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page isELIgnored="false"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<body>

<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
       <span class="sr-only">Toggle navigation</span> 
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <a class="navbar-brand" href="#">Mobhut</a>
    </div>
    
      <ul class="nav navbar-nav">
      <li class="active"><a href="${pageContext.request.contextPath}/index">Home</a></li>
      <li><a href="${pageContext.request.contextPath}/aboutus">About Us</a></li>
      <li><a href="${pageContext.request.contextPath}/contactus">Contact Us</a></li> 
      <li><a href="${pageContext.request.contextPath}/allproducts">Products</a></li>
      	<%
		if (request.isUserInRole("ADMIN"))
		{
		%> 
      <li><a href="${pageContext.request.contextPath}/allcategories">Categories</a></li>
      	<%
		}
		%> 
    </ul>
    
      <ul class="nav navbar-nav navbar-right">
      
      	<c:choose>
	      					<c:when test="${not empty pageContext.request.userPrincipal}">
	      						<li><a href="${pageContext.request.contextPath}/index">${pageContext.request.userPrincipal.name}</a></li>
	      						<li><a href="${pageContext.request.contextPath}/logout">Log Out</a></li>
	      						
	      					</c:when>
	      					
	      					<c:otherwise>
	      						<li><a href="${pageContext.request.contextPath}/loginpage">Login</a></li>
				        		<li><a href="${pageContext.request.contextPath}/signup">Sign Up</a></li>
				        		${isAdmin}
	      					</c:otherwise>
	      				</c:choose>
      
       </ul>
    </div>
  
</nav>


<footer style="background-color: #707070; position: fixed; bottom:0px; width: 100%; z-index:4; color: #; padding-top: 10px; box-shadow: -10px 5px 40px #66,66,66;" class="container-fluid text-center">
		<p><b>&copy; Akashya</b></p>
	</footer>
	</body>