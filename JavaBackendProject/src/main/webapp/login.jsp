<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebooks-login</title>
<style>
    .container {
      max-width: 400px;
      margin-top: 100px;
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
      <h2>Login to Your Account</h2>
    </div>
    <form id="loginForm" action="loginServlet" method="post" onsubmit="return validateLogin()">
      <div class="mb-3">
        <label for="email" class="form-label">Email address</label>
        <input type="email" class="form-control" id="email" name="email" required>
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" name="password" required>
      </div>
      <div class="form-check">
        <input type="checkbox" class="form-check-input" id="rememberMe" name="rememberMe">
        <label class="form-check-label" for="rememberMe" required>Remember me</label>
      </div>
      <div class="d-grid gap-2">
        <button type="submit" class="btn btn-primary">Login</button>
      </div>
    </form>
    <p class="text-center mt-3">Don't have an account? <a href="Register.jsp">Register here</a></p>
    <p class="text-center"><a href="#">Forgot your password?</a></p>
  </div>

</body>
</html>