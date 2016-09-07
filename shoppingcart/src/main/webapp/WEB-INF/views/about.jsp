<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>

body {
   
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 25%;
    background-color: #34495E;
    position: fixed;
    height: 100%;
    overflow: auto;
}

li a {
    display: block;
    color: #F0F3F4    ;
    padding: 8px 16px;
    text-decoration: none;
}

li a.active {
    background-color: #4CAF50;
    color: white;
}

li a:hover:not(#8E44AD) {
    background-color:#85C1E9;
    color: black;
}
</style>
</head>
<body>

<ul>

  <li><a class="active" href="hai">Home</a></li>
  <li><a href="#news">News</a></li>
  <li><a href="#contact">Contact</a></li>
 
    <li><a href="demo">Categories</a></li>
  <li><a href="addproduct">Products</a></li>
  <li><a href="login">Login</a></li>
  <li><a href="register">Sign up</a></li>
    
</ul>
<div class="container">

<c:url var="register" value="register"></c:url>
   <form:form commandName="UserDetails" method="post" action="storeUser">
   <form:errors path="" cssClass="errStyle" element="div" />
<div class="form-group">
 	<form:label  path="name">
				<spring:message text="User Name"/>
	</form:label>
	<form:input class="form-control" path="name" />
		<form:errors path="name">
					
</p>
 </form:errors>
 </div>
  <div class="form-group">
 	<form:label  path="email">
				<spring:message text="Email ID"/>
				
	</form:label>
	<form:input class="form-control" path="email" />
		<form:errors path="email" >
			<p class="errStyle">
					* Invalid email
</p>
 
 </form:errors>
 <div class="form-group">
 	<form:label  path="id">
				<spring:message text="User id"/>
	</form:label>
	<form:input class="form-control" path="id" />
		<form:errors path="id">
 </p>
 
 </form:errors>
  </div>
  <div class="form-group">
 	<form:label  path="mobile_number">
				<spring:message text="Phone Number"/>
	</form:label>
	<form:input class="form-control" path="mobile_number" />
		<form:errors path="mobile_number" >
			<p class="errStyle">
					* Invalid Phone
</p>
 </form:errors>
 </div>
  <div class="form-group">
 	<form:label  path="address">
				<spring:message text="Address"/>
	</form:label>
	<form:input class="form-control" path="address" />
		<form:errors path="address" >
			<p class="errStyle">
					* Invalid Address.
</p>
 </form:errors>
 </div>

  <div class="form-group">
 	<form:label  path="password">
				<spring:message text="Password"/>
	</form:label>
	<form:input class="form-control" path="password" />
			<form:errors path="password" >
			<p class="errStyle"> * Invalid password
</p>
 </form:errors>
 </div> 
 
 <div class="form-group">
 	<form:label  path="password">
				<spring:message text="Confirm Password"/>
	</form:label>
	<form:input class="form-control" path="confirmpassword" />
		<form:errors path="confirmpassword" >
			<p class="errStyle"> * Invalid Confirm Password
</p>
 </form:errors>
 </div> 
 
  <button type="submit" class="btn btn-default">Submit</button>
</form:form>
</div>



  
</div>