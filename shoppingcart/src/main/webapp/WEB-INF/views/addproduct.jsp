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

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
  <link rel="stylesheet" href='<c:url value="/resources/css/bootstrap.min.css"></c:url>' />
  <script src='<c:url value="/resources/js/jquery.min.js"></c:url>'></script>
  <script src='<c:url value="/resources/js/bootstrap.min.js"></c:url>'></script>
  <script src='<c:url value="/resources/js/angular.min.js"></c:url>'></script>
</head>
<center>
 
  </center>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 60%;
      margin: auto;
  }
  </style>
</head>
<body>
  </div>
</nav>
    <div class="container" ng-app="imgApp" ng-controller="imgCtrl">
    <c:url var="addproduct" value="addproduct"></c:url>
   <form:form commandName="Product" method="post" action="storeproduct" enctype="multipart/form-data">
       <table class="table table-bordered" >
        
           <tr><td><form:label path="name">name :</form:label></td>
               <td><form:input path="name"/>
               <font color="red"><form:errors path="name"></form:errors></font></td>
           </tr>
           <tr><td><form:label path="description">Description :</form:label></td>
               <td><form:input path="description"/>
               <font color="red"><form:errors path="description"></form:errors></font></td>
               
           </tr>   
                 
            <tr><td><form:label path="warranty">Warranty :</form:label></td>
               <td><form:input path="warranty"/>
               <font color="red"><form:errors path="warranty"></form:errors></font></td>
           </tr>   
           
            <tr><td><form:label path="capacity">Capacity :</form:label></td>
               <td><form:input path="capacity"/>
               <font color="red"><form:errors path="capacity"></form:errors></font></td>
           </tr>    
           
            <tr><td><form:label path="price">Price :</form:label></td>
               <td><form:input path="price"/>
               <font color="red"><form:errors path="price"></form:errors></font></td>
               
                  </tr>    
                  
           <tr><td><form:label path="style">Style :</form:label></td>
               <td><form:input path="style"/>
               <font color="red"><form:errors path="style"></form:errors></font></td>
           </tr> 
               
           <tr><td><form:label path="primarymaterial">Primary material :</form:label></td>
               <td><form:input path="primarymaterial"/>
               <font color="red"><form:errors path="primarymaterial"></form:errors></font></td>

           </tr> 
           
           <tr><td><form:label path="img">Product Image :</form:label></td>
               <td><form:input path="img" type="file"/>
               <font color="red"><form:errors path="img"></form:errors></font></td>
           </tr>
           
           <tr><td></td> 
               <td><input type="submit" value="submit" class="btn"/></td>
                <td><input type="reset" value="reset" class="btn"/></td>
                 
           </tr>
           
       </table>
   </form:form> 
   
           

</body>
<%@include file="/WEB-INF/views/footer.jsp" %>
</html>