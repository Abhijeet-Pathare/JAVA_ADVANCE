<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<h2>Online Tutorials</h2>
	<div><h3 style="color: red">${message}</h3></div>
	<sf:form method="post" action="validate">
		<table>
			<tr>
				<td>Email:</td>
				<td><input type="text" name="email" placeholder="abc@gmail.com"
					required /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" required /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Sign In" /> <a
					href="#">Sign Up</a></td>
			</tr>
		</table>
	</sf:form>
</body>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

</html>