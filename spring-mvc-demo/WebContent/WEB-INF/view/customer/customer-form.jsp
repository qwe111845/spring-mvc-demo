<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

	<head>
		<title> Customer Form</title>
		<style type="text/css">
		    .error {
		        color:red
		    }
		</style>
	</head>
	
	<body>
	    <i>Fill out the form.Asterisk (*) is required.</i>
		<br><br>
	
		<form:form action= "helloCustomer" modelAttribute="customer">
		
		First name: <form:input path="firstName" />
		
		<br><br>
		
	    (*)Last name: <form:input path="lastName" />
	    <form:errors path="lastName" cssClass="error"></form:errors>
	    
		
		<br><br>
		
		<input type="submit" value="submit" />
		
		</form:form>
		
	</body>
	
</html>