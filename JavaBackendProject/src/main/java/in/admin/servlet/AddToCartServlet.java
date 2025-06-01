package in.admin.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import in.eb.entity.CartItem;

/**
 * Servlet implementation class AddToCartServlet
 */
@WebServlet("/AddToCartServlet")
public class AddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddToCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  int bookId = Integer.parseInt(request.getParameter("bookId"));
	        String bookName = request.getParameter("bookName");
	        String author = request.getParameter("author");
	        double price = Double.parseDouble(request.getParameter("price"));

	        HttpSession session = request.getSession();
	        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");

	        if (cart == null) {
	            cart = new ArrayList<>();
	        }

	        cart.add(new CartItem(bookId, bookName, author, price));
	        session.setAttribute("cart", cart);

	        response.sendRedirect("cart.jsp");
	    }
	}


