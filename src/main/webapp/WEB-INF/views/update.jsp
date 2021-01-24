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
<h1 class="text-center mb-3">Change Student Details</h1>
<form action="${pageContext.request.contextPath }/handle" method="post">
<input type="hidden" value="${student.studentId }" name="studentId">
  <div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control" id="name" name="studentName" placeholder="Enter Naame" value="${student.studentName }">
    </div>
  <div class="form-group">
    <label for="city">City</label>
    <input type="text" class="form-control" id="city" placeholder="Enter City" name="studentCity" value="${student.studentCity }">
  </div>
  <div class="form-group">
    <label for="state">State</label>
    <input type="text" class="form-control" id="state" placeholder="Enter State" name="StudentState" value="${student.studentState }">
  </div>
  <button type="submit" class="btn btn-primary">Update</button>
  </form>
  </div>
  </div>
  </div>

</body>
</html>