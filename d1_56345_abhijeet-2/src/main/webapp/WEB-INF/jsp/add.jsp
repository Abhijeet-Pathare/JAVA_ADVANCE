<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit</title>
</head>
<body>
<h2>Add Vendor</h2>
	<sf:form modelAttribute="vendors" action="addvendor" method="post">
		<table>
			<tr>
				<td>Name</td>
				<td><sf:input path="name" /><td>
			</td></tr>
			<tr>
				<td>Email</td>
				<td><sf:input path="email" /><td>
			</td></tr>
			<tr>
				<td>password</td>
				<td><sf:input type="password" path="password" /><td>
			</td></tr>
			<tr>
				<td>City</td>
				<td><sf:input path="city" /><td>
			</td></tr>
			<tr>
				<td>Cell No</td>
				<td><sf:input path="cellNo"  /><td>
			</td></tr>
			<tr>
				<td>Reg Amount</td>
				<td><sf:input path="regAmount"  /><td>
			</td></tr>
			<tr>
				<td>Reg Date</td>
				<td><sf:input type="date" path="regDate"  /><td>
			</td></tr>
			<tr>
				<td>Role</td>
				<td><sf:input path="role" /><td>
			</td></tr>
			<tr>
				<td><input type="submit" value="Add">
			</td></tr>
		</table>
	</sf:form>
</body>
</html>