<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="./base.jsp" %>
</head>
<body>
<div class="container mt-3">
 <div class="row">
 <div class="col-md-6 offset-md-3">
 <h1 class="text-center mb-3">Please Login</h1>
 
<form action="login" method="post">
<p>${msg}</p>
  <div class="form-group">
    <label for="exampleInputEmail1">UserName</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="username" placeholder="Enter UserName">
   
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1"  name="password" placeholder="Enter Password">
  </div>
 
  <div class="container text-center">
  <button type="submit" class="btn btn-primary " >Login</button>
  <a href="${pageContext.request.contextPath }/res">Registration</a>
  </div>
</form>
</body>
</html>