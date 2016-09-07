<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/WEB-INF/views/header.jsp" %>
<html>
<head>
<title>Edit</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
  <form:form  modelAttribute="Supplier" method="post" action="updatesupplier" >
     <table class="table table-bordered" >
     <tr><td><form:label path="id">Supplier Id:</form:label></td>
               <td><form:input path="id" value="${Supplier.id}"/></td>
           </tr>
      <tr><td><form:label path="name">Supplier Name :</form:label></td>
               <td><form:input path="name" value="${Supplier.name}"/></td>
           </tr>
           <tr><td><form:label path="address">Supplier Address :</form:label></td>
               <td><form:input path="address" value="${Supplier.address}"/></td>
           </tr>
               <tr><td></td>
               <td><input type="submit" value="submit"/></td>
           </tr>
           </table>      
  </form:form>   
</body>
<%@include file="/WEB-INF/views/footer.jsp" %>
</html>