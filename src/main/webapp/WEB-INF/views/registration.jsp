<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
 <h1 class="text-center mb-3">Fill the Registration Detail</h1>
<form action="saveRegistration" method="post">
  <div class="form-group">
    <label for="exampleInputEmail1">UserName</label>
    <input type="text" class="form-control" id="exampleInputEmail1" name="username" placeholder="Enter UserName">
   
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" class="form-control" id="exampleInputPassword1"  name="password" placeholder="Enter Password">
  </div>
 <div class="form-group">
    <label for="exampleInputPassword1">Mobile No</label>
    <input type="text" class="form-control" id="exampleInputPassword1"  name="mobile" placeholder="Enter Mobile Number">
  </div>
  <div class="container text-center">
  <button type="submit" class="btn btn-primary " >Registration</button>
  </div>
</form>
</body>
</html>