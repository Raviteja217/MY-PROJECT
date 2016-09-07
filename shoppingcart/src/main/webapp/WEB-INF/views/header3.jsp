<!DOCTYPE html>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<title>W3.CSS</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
<style>

body,h1,h2,h3,h4,h5,h6 {font-family: "Lato", sans-serif;}
body, html {
    height: 100%;
    color:  #777;
    line-height: 1.8;
}
}
</style>
<body>
<!-- Navbar (sit on top) -->
<div class="w3-top">
  <ul class="w3-navbar" id="myNavbar">
    <li><a href="hello" class="w3-padding-large">HOME</a></li>
          <li class="w3-hide-small w3-right">
    <li><a href="${pageContext.request.contextPath}/Logout" class="w3-padding-large">LOGOUT</a></li>

    <li class="w3-hide-small w3-right">
    
      <div class="container">
    </li>
  </ul>
</div>



</body>
</html>

