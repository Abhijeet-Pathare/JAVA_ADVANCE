<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="ISO-8859-1">
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<title>Manage</title>
</head>
<body>
	<!--  id | name   | email          | password | city  | cell_no    | reg_amount | reg_date   | role -->
	<div class="container">
		<br>
		<h1 style="text-align: center;">Manage Vendors</h1>
		<hr>
		<c:choose>
			<c:when test="${msg}">
				<div class="alert alert-danger" role="alert">${msg}</div>
			</c:when>
		</c:choose>
		<br>
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">Id</th>
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">City</th>
					<th scope="col">Cell No</th>
					<th scope="col">Reg. Amount</th>
					<th scope="col">Reg. Date</th>
					<th scope="col">Role</th>
					<th scope="col">Actions</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="v" items="${vendors}">
					<tr>
						<th>${v.id}</th>
						<td>${v.name}</td>
						<td>${v.email}</td>
						<td>${v.city}</td>
						<td>${v.cellNo}</td>
						<td>${v.regAmount}</td>
						<td>${v.regDate}</td>
						<td>${v.role}</td>
						<td><a href="edit?id=${v.id}" button type="button"
							class="btn btn-primary btn-xs">Update</a> <a
							href="delete?id=${v.id}" button type="button"
							class="btn btn-danger btn-xs">Delete</a></td>

					</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="add" button type="button" class="btn btn-secondary btn-xs">Add
			Vendors</a>
		<hr>
		<a href="logout" button type="button" class="btn btn-primary btn-xs">LogOut</a>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
</body>
</html>

