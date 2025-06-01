<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>e-book:Register</title>
<style>
.container {
	max-width: 500px;
	margin-top: 50px;
}

.form-title {
	text-align: center;
	margin-bottom: 30px;
}
</style>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<%@include file="/navbar.jsp"%>
	<div class="container">
		<div class="form-title">
			<h2>Create an Account</h2>
		</div>
		<form id="registrationForm" action="aaa" method="post">
			<div class="mb-3">
				<label for="username" class="form-label">Username</label> <input
					type="text" class="form-control" id="username" name="username"
					required>
			</div>
			<div class="mb-3">
				<label for="email" class="form-label">Email address</label> <input
					type="email" class="form-control" id="email" name="email" required>
			</div>
			<div class="mb-3">
				<label for="password" class="form-label">Password</label> <input
					type="password" class="form-control" id="password" name="password"
					required>
			</div>
			<div class="mb-3">
				<label for="confirmPassword" class="form-label">Confirm
					Password</label> <input type="password" class="form-control"
					id="confirmPassword" name="confirmPassword" required>
			</div>
			<div class="d-grid gap-2">
				<button type="submit" value="register" class="btn btn-primary">Register</button>
			</div>
		</form>
		<p class="text-center mt-3">
			Already have an account? <a href="login.jsp" class="submit">Login
				here</a>
		</p>
	</div>
</body>
</html>