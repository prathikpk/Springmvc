<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>student form</h1>

	<form:form action="processStudentForm" modelAttribute="theStudent">

		First Name: <form:input path="firstName" />
		<br>
		<br>

		Last Name: <form:input path="lastName" />
		<form:errors path="lastName"></form:errors>
		<br>
		<br>
		Email: <form:input path="email" />
		<form:errors path="email"></form:errors>
		<br>
		<br>
		Zip Code: <form:input path="zipCode" />
		<form:errors path="zipCode"></form:errors>
		<br>
		<br>
		no. of ATKT: <form:input path="atkt" />
		<form:errors path="atkt"></form:errors>
		<br>
		<br>
		Admission year: 
		<form:select path="year">
			<form:options items="${theStudent.yearOption}" />
		</form:select>
		<br>
		<br>
		Subjects: 
		<form:checkboxes items="${theStudent.subjects}"
			path="selectedSubjects" />
		<br>
		<br>
	    Gender: 
		<form:radiobuttons items="${theStudent.genders}" path="selectedGender" />
		<br><br>
		<input type="submit" value="Submit">


	</form:form>
</body>
</html>