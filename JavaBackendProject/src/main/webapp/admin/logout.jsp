<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    // Invalidate the session
    session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Logout</title>
<meta http-equiv="refresh" content="3;URL=../index.jsp"> <!-- Redirect after 3 seconds -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<%@include file="allCss.jsp"%>
</head>
<body>
<body class="bg-light d-flex justify-content-center align-items-center" style="height: 100vh;">
    <div class="text-center">
        <h2 class="text-success">You have been logged out successfully!</h2>
        <p class="text-muted">Redirecting to home page in a moment...</p>
        <div class="spinner-border text-primary mt-3" role="status">
            <span class="sr-only">Loading...</span>
        </div>
    </div>
</body>
</body>
</html>