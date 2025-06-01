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
 * Servlet implementation class DeleteBook
 */
@WebServlet("/admin/DeleteBook")
public class DeleteBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 int id = Integer.parseInt(request.getParameter("id"));
	        try {
	            Class.forName("com.mysql.cj.jdbc.Driver");
	            Connection conn = DriverManager.getConnection(
	                    "jdbc:mysql://localhost:3306/BookProject", "root", "Onkar@1234");
	            PreparedStatement ps = conn.prepareStatement("DELETE FROM book WHERE bookId = ?");
	            ps.setInt(1, id);
	            ps.executeUpdate();
	            response.sendRedirect("all_books.jsp");
	        } catch (Exception e) {
	            e.printStackTrace();
	            response.getWriter().println("Error deleting book.");
	        }
	    }
	

}
