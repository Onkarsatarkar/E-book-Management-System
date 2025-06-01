<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%
int bookId = Integer.parseInt(request.getParameter("id"));
Connection conn = null;
PreparedStatement ps = null;
ResultSet rs = null;

String title = "", author = "", category = "", status = "";
double price = 0.0;

try {
	Class.forName("com.mysql.cj.jdbc.Driver");
	conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BookProject", "root", "Onkar@1234");

	ps = conn.prepareStatement("SELECT * FROM book WHERE id = ?");
	ps.setInt(1, bookId);
	rs = ps.executeQuery();

	if (rs.next()) {
		title = rs.getString("title");
		author = rs.getString("author");
		category = rs.getString("category");
		price = rs.getDouble("price");
		status = rs.getString("status");
	}
} catch (Exception e) {
	e.printStackTrace();
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Book</title>
<%@include file="allCss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
	<div class="container mt-5">
		<h2>Edit Book</h2>
		<form action="updateBook" method="post">
			<input type="hidden" name="id" value="<%=bookId%>">

			<div class="mb-3">
				<label class="form-label">Title</label> <input type="text"
					name="title" class="form-control" value="<%=title%>" required>
			</div>

			<div class="mb-3">
				<label class="form-label">Author</label> <input type="text"
					name="author" class="form-control" value="<%=author%>" required>
			</div>

			<div class="mb-3">
				<label class="form-label">Category</label> <input type="text"
					name="category" class="form-control" value="<%=category%>"
					required>
			</div>

			<div class="mb-3">
				<label class="form-label">Price</label> <input type="number"
					name="price" step="0.01" class="form-control" value="<%=price%>"
					required>
			</div>

			<div class="mb-3">
				<label class="form-label">Status</label> <select name="status"
					class="form-control">
					<option <%="Active".equals(status) ? "selected" : ""%>>Active</option>
					<option <%="Inactive".equals(status) ? "selected" : ""%>>Inactive</option>
				</select>
			</div>

			<button  type="submit" class="btn btn-primary">Update Book</button>
			<a href="../all_books.jsp" class="btn btn-secondary">Cancel</a>
		</form>
	</div>
</body>
</html>