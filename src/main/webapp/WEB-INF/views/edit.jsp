<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
 <h1 class="text-center mb-3">Edit Product Detail</h1>
 <form action="${pageContext.request.contextPath}/addProduct" method="post">
 <input type="hidden" value="${product.id }" name="id">
 <div class="form-group">
 <label for="name">Product Name</label>
 <input type="text" name="productname" value="${product.productname}" class="form-control" placeholder="Please Enter Product Name Here">
 </div>
 
  <div class="form-group">
 <label for="name">Description</label>
 <input type="text" name="description" value="${product.description }" class="form-control" placeholder="Please Enter Description Here">
 </div>
 
  <div class="form-group">
 <label for="name">Price</label>
 <input type="text" name="price" value="${product.price}" class="form-control" placeholder="Please Enter Price Here">
 </div>
 
 <div class="form-group">
    <label for="exampleFormControlSelect2">Model</label>
    <select  class="form-control" name="model" id="exampleFormControlSelect2">
      <option value="${product.model}" ${product.model==1 ? 'selected="selected"':''} >Dell</option>
      <option value="${product.model }" ${product.model==2 ? 'selected="selected"':''}>Hp</option>
      <option value="${product.model }" ${product.model==3 ? 'selected="selected"':''}>Asus</option>
      <option value="${product.model }" ${product.model==4 ? 'selected="selected"':''}>Mi</option>
     <option value="${product.model }" ${product.model==5 ? 'selected="selected"':''}>Accer</option>
    </select>
  </div> 
  

 
    <div class="form-group">
     <label for="exampleFormControlSelect2">Payment Mode</label>
     
   <div class="custom-control custom-radio">
  <input type="radio" id="customRadio1" name="payment" value="${product.payment}" ${product.payment==1 ? 'checked="checked"':''}  class="custom-control-input">
  <label class="custom-control-label" for="customRadio1">EMI</label>
</div>
<div class="custom-control custom-radio">
  <input type="radio" id="customRadio2" name="payment" value="${product.payment}" ${product.payment==0 ? 'checked="checked"':''}   class="custom-control-input">
  <label class="custom-control-label" for="customRadio2">Cash</label>
</div>
        
</div>

 <div class="form-group">
 <label for="name">MobileNo</label>
 <input type="text" name="mobile" value="${product.mobile }" class="form-control" placeholder="Please Enter Mobile No Here">
 </div>
 
 <div class="form-group">
 <label for="name">Addresses</label>
 <input type="text" name="addresses" value="${product.addresses }" class="form-control" placeholder="Please Enter Addresses Here">
 </div>
 
 <div class="container text-center">
  <a href="${pageContext.request.contextPath }/homepage" class="btn btn-outline-danger">Back</a>
  <button type="submit" class="btn btn-primary">Update</button>
 
 </div>
 
 </form>
 
 
 </div>
 
 </div>

</div>
</body>
</html>