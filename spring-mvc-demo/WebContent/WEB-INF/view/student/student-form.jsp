<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

	<head>
		
	</head>
	
	<body>
	
		<form:form action= "helloStudent" modelAttribute="student">
		
		First name: <form:input path="firstName" />
		
		<br><br>
		
	    Lirst name: <form:input path="lastName" />
		
		<br><br>
		
		Country: 
		<form:select path="country">
			<form:option value="Taipei" label="Taipei"></form:option>
			<form:option value="France" label="France"></form:option>
			<form:option value="India" label="India"></form:option>
			<form:option value="England" label="England"></form:option>
		
		</form:select>
		
		<br><br>
		
		<input type="submit" value="submit" />
		
		</form:form>
		
	</body>
	
</html>