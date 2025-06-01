<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="navbar.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>All Books</title>
<link rel="stylesheet" href="../style.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<%@include file="allCss.jsp"%>
</head>
<body>
	<div class="container mt-4">
		<h3 class="text-center mb-4">All Books Added by Admin</h3>
		<div class="row">

			<%
			Connection conn = null;
			PreparedStatement ps = null;
			ResultSet rs = null;

			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BookProject", "root", "Onkar@1234");
				String sql = "SELECT * FROM book";
				ps = conn.prepareStatement(sql);
				rs = ps.executeQuery();

				while (rs.next()) {
			%>
			<div class="col-md-4 mb-4">
				<div class="card shadow">
					<div class="card-body">
						<h5 class="card-title"><%=rs.getString("title")%></h5>
						<p>
							<strong>Author:</strong>
							<%=rs.getString("author")%><br> <strong>Category:</strong>
							<%=rs.getString("category")%><br> <strong>Price:</strong> ₹<%=rs.getString("price")%><br>
							<strong>Status:</strong>
							<%=rs.getString("status")%>
						</p>
						<div class="d-flex justify-content-between">
							<a href="edit_book.jsp?id=<%=rs.getInt("bookId")%>"
								class="btn btn-sm btn-primary"> <i class="fa-solid fa-pen-to-square"></i> Edit</a> <a
								href="${pageContext.request.contextPath}/admin/DeleteBook?id=<%=rs.getInt("bookId")%>"
								class="btn btn-danger btn-sm"
								onclick="return confirm('Are you sure you want to delete this book?');">
								<i class="fa-solid fa-trash"></i> Delete </a>
						</div>
					</div>
				</div>
			</div>
			<%
			}
			} catch (Exception e) {
			out.println("<p class='text-danger'>Error: " + e.getMessage() + "</p>");
			} finally {
			if (rs != null)
			rs.close();
			if (ps != null)
			ps.close();
			if (conn != null)
			conn.close();
			}
			%>

		</div>
	</div>

</body>
</html>