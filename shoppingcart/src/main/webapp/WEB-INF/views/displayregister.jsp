<%@taglib prefix="x" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@include file="/WEB-INF/views/header.jsp" %>
<html>
<head>
  <link rel="stylesheet" href='<x:url value="/resources/css/bootstrap.min.css"></x:url>' />
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <div class="navbar-header">
    </div>
    <ul class="nav navbar-nav">
 <li><a href="back">HOME</a></li>
     
      <li><a href="${pageContext.request.contextPath}/Logout">LOGOUT</a></li>
    
</div>
</nav>
 <h1>Hello... <%=session.getAttribute("loggedInUser")%></h1>
    <div class="container">
        
<div ng-app="myApp" ng-controller="customersCtrl">
<input type="text" class="form-control" ng-model="searchBy.name"/>
<table class="table table-hover table-bordered">
  <tr>
       <th>Register Userame</th>
       <th>Register Password</th>
       <th>Register Email</th>
       <th>Register MobileNumber</th>
      
  </tr>
  <tr ng-repeat="x in names | filter:searchBy">
    <td>{{x.name}}</td>
    <td>{{x.password}}</td>
    <td>{{x.email}}</td>
    <td>{{x.mobile_number}}</td>
    <td>
    <a href="${pageContext.servletContext.contextPath}/view?id={{x.id}}"><span>View</span></a>
    <a href="${pageContext.servletContext.contextPath}/editproduct?id={{x.id}}"><span>| Edit |</span></a>
    <a href="${pageContext.servletContext.contextPath}/delete?id={{x.id}}"><span>Delete</span></a>
   
   </td>  
  </tr>
</table>
<a href="addproduct" class="btn btn-info">Add Product</a>


</div>

<script>
var app = angular.module('myApp', []);
app.controller('customersCtrl', function($scope, $http) {
    $http.get("list")
    .then(function (response) {$scope.names = response.data;});
});
</script>
</div>
</body>
<%@include file="/WEB-INF/views/footer.jsp" %>
</html>



