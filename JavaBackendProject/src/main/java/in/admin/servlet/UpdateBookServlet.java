package in.admin.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class UpdateBookServlet
 */
@WebServlet("/updateBook")
public class UpdateBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateBookServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String category = request.getParameter("category");
		double price = Double.parseDouble(request.getParameter("price"));
		String status = request.getParameter("status");

		Connection conn = null;
		PreparedStatement ps = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BookProject", "root", "Onkar@1234");

			String sql = "UPDATE book SET title = ?, author = ?, category = ?, price = ?, status = ? WHERE id = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, title);
			ps.setString(2, author);
			ps.setString(3, category);
			ps.setDouble(4, price);
			ps.setString(5, status);
			ps.setInt(6, id);

			int rowsUpdated = ps.executeUpdate();

			if (rowsUpdated > 0) {
				response.sendRedirect("admin/all_books.jsp?msg=updated");
			} else {
				response.sendRedirect("admin/edit_book.jsp?id=" + id + "&msg=error");
			}

		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("admin/edit_book.jsp?id=" + id + "&msg=exception");
		}
	}

}
