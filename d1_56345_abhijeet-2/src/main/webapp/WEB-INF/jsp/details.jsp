<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Details</title>
</head>
<!-- id | name   | ema | password | city  | cell_no    | reg_amount | reg_date   | role -->
<body>
<h2>Details</h2>
<h3>Id :- ${vendor.id}</h3>
<h3>Name :- ${vendor.name}</h3>
<h3>Email :- ${vendor.email}</h3>
<h3>City :- ${vendor.city}</h3>
<h3>Cell No :- ${vendor.cellNo}</h3>
<h3>Reg. Amount :- ${vendor.regAmount}</h3>
<h3>Reg. Date :- ${vendor.regDate}</h3>
<h3>Role :- ${vendor.role}</h3>
<hr>
<a href="logout">Logout</a>
</body>
</html>