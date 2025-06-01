<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin: Add books</title>
<style type="text/css">
.footer {
	margin-top: 40px;
}
</style>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
	rel="stylesheet">
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>

	<div class="container mt-5">
		<h3 class="text-center mb-4">Add New Book</h3>

		<form id="booksAddingForm"
			action="${pageContext.request.contextPath}/nnn" method="post">
			<div class="mb-3">
				<label for="bookTitle" class="form-label">Book Title</label> <input
					type="text" class="form-control" id="bookTitle" name="title"
					required>
			</div>

			<div class="mb-3">
				<label for="author" class="form-label">Author</label> <input
					type="text" class="form-control" id="author" name="author" required>
			</div>

			<div class="mb-3">
				<label for="price" class="form-label">Price (INR)</label> <input
					type="number" class="form-control" id="price" name="price" required>
			</div>
			<div class="mb-3">
				<label for="category" class="form-label">Category</label> <select
					class="form-select" id="category" name="category" required>
					<option value="">Select</option>
					<option value="Programming">Programming</option>
					<option value="Novel">Novel</option>
					<option value="Business">Business</option>
					<option value="Science">Science</option>
				</select>
			</div>

			<div class="mb-3">
				<label for="status" class="form-label">Status</label> <select
					class="form-select" id="status" name="status" required>
					<option value="Active">Active</option>
					<option value="Inactive">Inactive</option>
				</select>
			</div>

			<button type="submit" class="btn btn-primary">
				<i class="fas fa-plus"></i> Add Book
			</button>
		</form>
	</div>

	<div class="footer">
		<%@include file="/footer.jsp"%>
	</div>
</body>
</html>