package in.sp.backend;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;



/**
 * Servlet implementation class Register
 */
@WebServlet("/aaa")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		String userName= request.getParameter("username");
		String email= request.getParameter("email");
		String password= request.getParameter("password");
		String confirmPassword= request.getParameter("confirmPassword");
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/BookProject" ,"root", "Onkar@1234");
			
			PreparedStatement ps = con.prepareStatement("insert into register values(?,?,?,?)");
			ps.setString(1,userName );
			ps.setString(2, email);
			ps.setString(3,  password);
			ps.setString(4, confirmPassword);
			
			
			
			int count=ps.executeUpdate();
			if(count>0) {
				
				request.setAttribute("msg", "registration succesfull. please login.");
				request.getRequestDispatcher("/Register.jsp").forward(request, response);
				
			}else {
				request.setAttribute("error", "Something wrong");
				request.getRequestDispatcher("/Register.jsp").forward(request, response);
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.setContentType("text/html");
			out.print("<h3>user not registered successfully1</h3>");
			RequestDispatcher rd = request.getRequestDispatcher("/Register.jsp");
			rd.include(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			response.setContentType("text/html");
			out.print("<h3>user not registered successfully2</h3>");
			RequestDispatcher rd = request.getRequestDispatcher("/Register.jsp");
			rd.include(request, response);
		}
	}

}
