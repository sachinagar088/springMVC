<html>
<head>
<%@include file="./base.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3">Welcome to Student Portal</h1>
				<table class="table">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">NAME</th>
							<th scope="col">CITY</th>
							<th scope="col">STATE</th>
							<th scope="col">ACTION</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${student }" var="s">
						<tr>
							<th scope="row">${s.studentId}</th>
							<td>${s.studentName}</td>
							<td>${s.studentCity}</td>
							<td>${s.studentState}</td>
							<td><a href="delete/${s.studentId }"><i class="fas fa-trash text-danger" style="font-size:30px;"></i></a>
							<a href="update/${s.studentId }"><i class="fas fa-pen-nib text-primary" style="font-size:30px;"></i></a>
							</td>
						</tr>
					</c:forEach>
					</tbody>
				</table>
				<div class="container text-center">
					<a href="add" class="btn btn-success">Add Product</a>
				</div>
			</div>
		</div>

	</div>
</body>
</html>
