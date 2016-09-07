 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@include file="/WEB-INF/views/header.jsp" %>


<html>
<head>
  <title>Edit user</title>
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
         <li class="w3-hide-small w3-right">
    <a href="${pageContext.request.contextPath}/Logout" class="w3-padding-large">LOGOUT</a></li>
    
</div>
</nav>
  <form:form modelAttribute="Login" method="post" action="updateuser">
    <table>
    <tr><td><form:label path="id">User ID:</form:label></td>
               <td><form:input path="id" value="${login.id}" text="readonly"/></td>
           </tr>
           
      <tr><td><form:label path="name">User Name :</form:label></td>
               <td><form:input path="name" value="${login.name}" text="readonly"/></td>
           </tr>
           
           <tr><td><form:label path="password">password:</form:label></td>
               <td><form:input path="password" value="${login.password}" text="readonly"/></td>
           </tr>
           <tr><td><form:label path="status">status:</form:label></td>
             <td><form:input path="status" value="${login.status}"/>
               </td>
           </tr>
           <tr><td><form:label path="role">role:</form:label></td>
               <td><form:input path="role" value="${login.role}"/>
               </td>
           </tr>
           
        
               <td><input type="submit" value="submit"/></td>
           </table>
           
                      
  </form:form>   
</body>
<%@include file="/WEB-INF/views/footer.jsp" %>
</html>
 