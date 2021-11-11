<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="./base.jsp" %>
</head>
<body>
<div class="container mt-3">
 <div class="row">
 <div class="col-md-6 offset-md-3">
 <h1 class="text-center mb-3">Fill the Product Detail</h1>
 <form action="addProduct" method="post">
 
 <div class="form-group">
 
 <label for="name">Product Name</label>
 <input type="text" name="productname" class="form-control" placeholder="Please Enter Product Name Here">
  <form:errors path="productname" cssClasss="text-danger"/>
 </div>

 
  <div class="form-group">
 <label for="name">Description</label>
 <input type="text" name="description" class="form-control" placeholder="Please Enter Description Here">
 </div>

  <div class="form-group">
 <label for="name">Price</label>
 <input type="text" name="price" class="form-control" placeholder="Please Enter Price Here">
 </div>
 
 <div class="form-group">
    <label for="exampleFormControlSelect2">Model</label>
    <select  class="form-control" name="model" id="exampleFormControlSelect2">
      <option value="1">Dell</option>
      <option value="2">Hp</option>
      <option value="3">Asus</option>
      <option value="4">Mi</option>
      <option value="5">Accer</option>
    </select>
  </div>
  

 
    <div class="form-group">
     <label for="exampleFormControlSelect2">Payment Mode</label>
     
   <div class="custom-control custom-radio">
  <input type="radio" id="customRadio1" name="payment" value="1" class="custom-control-input">
  <label class="custom-control-label" for="customRadio1">EMI</label>
</div>
<div class="custom-control custom-radio">
  <input type="radio" id="customRadio2" name="payment" value="0" class="custom-control-input">
  <label class="custom-control-label" for="customRadio2">Cash</label>
</div>
        
</div>

 <div class="form-group">
 <label for="name">MobileNo</label>
 <input type="text" name="mobile" class="form-control" placeholder="Please Enter Mobile No Here">
 </div>
 
 <div class="form-group">
 <label for="name">Addresses</label>
 <input type="text" name="addresses" class="form-control" placeholder="Please Enter Addresses Here">
 </div>
 
 <div class="container text-center">
  <a href="${pageContext.request.contextPath }/homepage" class="btn btn-outline-danger">Back</a>
  <button type="submit" class="btn btn-primary">Add</button>
 
 </div>
 
 </form>
 
 
 </div>
 
 </div>

</div>
</body>
</html>