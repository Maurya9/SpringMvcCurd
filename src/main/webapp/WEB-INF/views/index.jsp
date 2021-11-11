<html>
<head>
<%@include file="./base.jsp" %>

    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ page isELIgnored="false"  %>
</head>
<body>
<div class="container mt-3">
 <div class="row">
 
 <div class="col-md-12">
 <h1 class="text-center mb-3">Welcome to Product App</h1>
 
 <table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Product Name</th>
      <th scope="col">Description</th>
      <th scope="col">Price</th>
      <th scope="col">Model</th>
      <th scope="col">Payment Mode</th>
      <th scope="col">Mobile No</th>
      <th scope="col">Addresses</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${product}" var="p">
    <tr>
      <th scope="row">${p.id}</th>
      <td>${p.productname}</td>
      <td>${p.description }</td>
      <td class="font-weight-bold">&#x20B9;${p.price }</td>
      <td><c:choose>
      <c:when test="${p.model==1}">
    Dell
  </c:when>
  <c:when test="${p.model==2}">
    HP
  </c:when>
  <c:when test="${p.model==3}">
    Asus
  </c:when>
  <c:when test="${p.model==4}">
    MI
  </c:when>
  <c:when test="${p.model==5}">
    Accer
  </c:when>
  </c:choose> 
</td>
      
      <td><c:choose>
  <c:when test="${p.payment==1}">
    EMI
  </c:when>
  <c:when test="${p.payment==0}">
    Cash
  </c:when>
  </c:choose> </td>
      <td>${p.mobile }</td>

      
      <td>${p.addresses }</td>
      <td>
      <a href="delete/${p.id }"><i class="far fa-trash-alt text-danger"></i></a>
      <a href="getupdatepage/${p.id }"><i class="fas fa-pen-nib text-primary"></i></a>
      </td>
      
      
    </tr>
    </c:forEach>
  </tbody>
</table>

 <div class="container text-center">
 <a href="add" class="btn btn-outline-success">Add Prouduct</a>
 
 </div>
 </div>
 
 </div>

</div>
</body>
</html>
