<%@ page language="java" contentType="text/html; charset=ISO-8859-1\\ "
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@include file="/WEB-INF/views/header.jsp" %> 


<!DOCTYPE html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <style type="text/css">
.errStyle {
	color:red;
	font-style: italic;
	font-weight: bold;
}

</style>

</head>

<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
     
    </div>
    <ul class="nav navbar-nav">
       <li><a href="hai" class="w3-padding-large">HOME</a></li>
     
          <li><a href="login" class="w3-padding-large">LOGIN</a></li>
    </ul>
  </div>
</nav>

<div class="container">

		<c:url var="register" value="register"></c:url>
		<form:form commandName="Register" method="post" action="storeUser">
			<form:errors path="*" cssClass="errStyle" element="div" />
			<div class="form-group">

				<div class="form-group">
					<form:label path="name">
						<spring:message text="User Name" />
					</form:label>
					<form:input class="form-control" path="name" />
					<form:errors path="name">
						<p class="errStyle">* Invalid User Name</p>

					</form:errors>
				</div>
				<div class="form-group">
					<form:label path="email">
						<spring:message text="Email ID" />
					</form:label>
					<form:input class="form-control" path="email" />
					<form:errors path="email">
						<p class="errStyle">* Invalid email</p>

					</form:errors>

				</div>
				<div class="form-group">
					<form:label path="mobile_number">
						<spring:message text="Phone Number" />
					</form:label>
					<form:input class="form-control" path="mobile_number" />
					<form:errors path="mobile_number">
						<p class="errStyle">* Invalid Phone</p>
					</form:errors>
				</div>
				<div class="form-group">
					<form:label path="price">
						<spring:message text="Address" />
					</form:label>
					<form:input class="form-control" path="price" />
					<form:errors path="price">
						<p class="errStyle">* Invalid Address.</p>
					</form:errors>
				</div>

				<div class="form-group">
					<form:label path="password">
						<spring:message text="Password" />
					</form:label>
					<form:input type="password" class="form-control" path="password" />
					<form:errors path="password">
						<p class="errStyle">* Invalid password</p>
					</form:errors>
				</div>

				<div class="form-group">
					<form:label path="confirmpassword">
						<spring:message text="Confirm Password" />
					</form:label>
					<form:input type="password" class="form-control"
						path="confirmpassword" />
					<form:errors path="confirmpassword">
						<p class="errStyle">* Invalid Confirm Password</p>
					</form:errors>
				</div>
				<button type="submit" class="btn btn-info">Submit</button>
				<button type="reset" class="btn btn-default">Reset</button>
				<button type="button" class="btn btn-default"   ahref="index">Cancel</button>
		</form:form>
		

</body>
<%@include file="/WEB-INF/views/footer.jsp" %>
</html>