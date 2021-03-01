<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Hello Student</title>
	</head>
	<body>
		<h1>Hello world of Spring Student</h1>
		<h2>Student name:${student.firstName}, ${student.lastName} </h2>
		<h3>Student's country:${student.country} </h3>
		<h3>Student's favorite language:${student.favoriteLanguage} </h3>
		
		<ul>
		    <c:forEach var="temp" items="${student.operatingSystems}">
		    	<li> ${temp} </li>
		    </c:forEach>
		</ul>		
	</body>
</html>