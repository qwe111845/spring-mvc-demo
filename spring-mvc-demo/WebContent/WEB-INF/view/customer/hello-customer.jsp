<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Hello customer</title>
	</head>
	<body>
		<h1>Hello world of Spring customer</h1>
		<h2>customer name:${customer.firstName}, ${customer.lastName} </h2>
		<h2>customer passes:${customer.freePasses} </h2>
		<h2>Postal Code:${customer.postalCode} </h2>
	
	</body>
</html>