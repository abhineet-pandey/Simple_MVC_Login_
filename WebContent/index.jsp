<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<link rel="stylesheet" href="style.css">
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script>
	function validateForm() {
		var name = document.myForm.name.value;
		var password = document.myForm.password.value;
		if (name == null || name == "") {
			if (password == null || password == "") {
				alert("Enter UserName and Password.");
				return false;
			}
			alert("UserName can't be blank.");
			return false;
		} else if (password == null || password == "") {
			alert("Password can not  be blank.");
			return false;
		}
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<div class="index-page">
	<div class="form">
		<form name="myForm" action="LoginServlet"
			onsubmit="return validateForm()" method="post">
			<input type="text" name="name" placeholder="UserName"><br>
			<input type="password" name="password" placeholder="Password"><br>
			<select name="role" placeholder="Role">
				<option value="Supplier">Supplier</option>
				<option value="Retailer">Retailer</option>
				<option value="Customer">Customer</option>
				<option value="wholesaler"> wholesaler</option>
			</select><br> <input type="submit" value="login" />
		</form>

	</div>
</div>

</head>
<body>

</body>
</html>