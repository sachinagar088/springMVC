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
<h1 class="text-center mb-3">Fill the details</h1>
<form action="handle" method="post">
  <div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control" id="name" name="studentName" placeholder="Enter Naame">
    </div>
  <div class="form-group">
    <label for="city">City</label>
    <input type="text" class="form-control" id="city" placeholder="Enter City" name="studentCity">
  </div>
  <div class="form-group">
    <label for="state">State</label>
    <input type="text" class="form-control" id="state" placeholder="Enter State" name="StudentState">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
  </form>
  </div>
  </div>
  </div>

</body>
</html>