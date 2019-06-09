<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SUCCESS</title>
</head>
<body>

	<h2>Student Save successfully</h2>

	<p>
		Student Id: ${student.id}<br> Student FirstName:
		${student.firstName}<br> Student LastName: ${student.lastName}<br>
		Student Email: ${student.email}<br> Student Phone:
		${student.phone.area}-${student.phone.prefix}-${student.phone.number}<br>
	<div class="col-md-5">
		<img alt="${student.firstName}"
			src='<c:url value="/resources/images/${student.firstName}.png"></c:url>'
			style="width:100%" />
			</div>
       
  </p>
	
</body>
</html>