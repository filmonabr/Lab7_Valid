<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<html>
<head>

<meta http-equiv="Content-Type" content="text/html; utf-8">
<title>Registration</title>
</head>
<body>

	<h1>Registration Form</h1>
	<br />
	<a href="?locale=zh">Chinese</a>
	<a href="?locale=en">English</a>
	<form:form method="post" action="registration" modelAttribute="student" enctype="multipart/form-data">
		<fieldset>
			<legend> Student information </legend>
			<p>
				<form:errors path="*" cssStyle="color:red" />
			</p>
			<p>
				<form:input type="text" path="firstName" placeholder="First Name" />
			<div style="text-align: center;">
				<form:errors path="firstName" cssStyle="color : red;" />
			</div>
			</p>
			<p>
				<form:input type="text" path="lastName" placeholder="Last Name" />
			<div style="text-align: center;">
				<form:errors path="lastName" cssStyle="color : red;" />
			</div>
			</p>
			<p>
				<form:input type="text" path="email" placeholder="email"/>
			<div style="text-align: center;">
				<form:errors path="email" cssStyle="color : red;" />
			</div>
			</p>

			<p>
				<label for="phonenumber">Phone Number</label> <span id="phonenumber">
					<form:input type="text" path="phone.area" />- <form:input
						type="text" path="phone.prefix" />- <form:input type="text"
						path="phone.number" />
				</span>
			<div style="text-align: center;">
				<div>
					<form:errors path="phone.area" cssStyle="color : red;" />
				</div>
				<div>
					<form:errors path="phone.prefix" cssStyle="color : red;" />
				</div>
				<div>
					<form:errors path="phone.number" cssStyle="color : red;" />
				</div>

			</div>
			</p>
			<p>
				<label for="gender">Gender</label>
				<form:select path="gender" id="gender">
					<form:option value="" label="----" />
					<form:options items="${genderList}" />
				</form:select>
				<div>
				<form:errors path="gender" cssStyle="color : red;" />
				</div>
			</p>
			
			<p>
				<label for="birthday">Birthday</label>
				<form:input type="text" path="birthday" id="birthday"
					placeholder="MM/dd/yyyy" />
				<form:errors path="birthday" cssStyle="color : red;" />
			</p>
			<p>
			 <form:input type="file" path="imageFile" />
			</p>
			<input type="reset" value="reset" /> <input type="submit"
				value="submit" />
		</fieldset>
	</form:form>

</body>
</html>