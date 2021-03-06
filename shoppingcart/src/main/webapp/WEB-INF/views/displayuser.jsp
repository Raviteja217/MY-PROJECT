<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@include file="/WEB-INF/views/header.jsp" %>
<html xmlns="http://www.w3.org/1999/xhtml" xmlns:th="http://www.thymeleaf.org"	xmlns:sec="http://www.thymeleaf.org/thymeleaf-extras-springsecurity3">
<html>
<head>
<link rel="stylesheet"	href='<x:url value="/resources/css/bootstrap.min.css"></x:url>' />
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="container-fluid">
			<div class="navbar-header"></div>
			<ul class="nav navbar-nav">
	 <li><a href="back">HOME</a></li>
     
      <li><a href="${pageContext.request.contextPath}/Logout">LOGOUT</a></li> 
    

				<!-- <li><a href="j_spring_security_logout">Logout</a></li> -->
			</ul>
		</div>
	</nav>
	<h1>Hello...<%=session.getAttribute("loggedInUser")%></h1>
	<div class="container">

		<div ng-app="myApp" ng-controller="customersCtrl">
			<input type="text" class="form-control" ng-model="searchBy.Productid" />
			<table class="table table-hover table-bordered">
				<tr>
					<th>user Id</th>
					<th>user Name</th>
					<th>user Role</th>
					<th>user Status</th>
					<th>user password</th>
					<th>Action</th>
				</tr>
				<tr ng-repeat="u in names | filter:searchBy">
					<td>{{u.id}}</td>
					<td>{{u.username}}</td> 
					<td>{{u.role}}</td>
					<td>{{u.status}}</td>
					<td>{{u.password}}</td>
				
					<td><a href="${pageContext.request.contextPath}/edituser?id={{u.id}}"><span>Edit</span></a>
						<sec:authorize access="hasRole('ROLE_ADMIN')">
						<td><a href="${pageContext.request.contextPath}/deleteuser?id={{u.id}}"><span>Delete</span></a>
						</sec:authorize></td>
				</tr>
			</table>
		</div>

			<script>
			var app = angular.module('myApp', []);
			app.controller('customersCtrl', function($scope, $http) {
				$http.get("list3").then(function(response) {
					$scope.names = response.data;
				});
			});
		</script>
	</div>
	
</body>
<%@include file="/WEB-INF/views/footer.jsp" %>
</html>



