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
		
			<form:options items="${student.countryOptions}"/>
		
		</form:select>
		
		<br><br>
		
		Favorite Language:
		
		<br>
		
		<form:radiobutton path="favoriteLanguage" value="Java" /> Java
		<form:radiobutton path="favoriteLanguage" value="C#" /> C# 
		<form:radiobutton path="favoriteLanguage" value="Python" /> Python
		<form:radiobutton path="favoriteLanguage" value="GoLang" /> GoLang
		
		<br><br>
		
		<form:checkbox path="operatingSystems" value="Linux"/> Linux
		<form:checkbox path="operatingSystems" value="Windows" /> Windows
		<form:checkbox path="operatingSystems" value="Mac Os" /> Mac Os
		
		<input type="submit" value="submit" />
		
		</form:form>
		
	</body>
	
</html>