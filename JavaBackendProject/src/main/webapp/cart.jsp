<%@ page import="java.util.*, in.eb.entity.CartItem"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>Your Cart</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />
</head>
<body>
	<div class="container mt-5">
		<h2 class="mb-4">Your Cart</h2>
		<%
		List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
		double total = 0;
		%>
		<div class="table-responsive">
			<table class="table table-bordered text-center align-middle">
				<thead class="table-dark">
					<tr>
						<th>Book Name</th>
						<th>Author</th>
						<th>Price</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
					<%
					if (cart != null && !cart.isEmpty()) {
						for (int i = 0; i < cart.size(); i++) {
							CartItem item = cart.get(i);
							total += item.getPrice();
					%>
					<tr>
						<td><%=item.getBookName()%></td>
						<td><%=item.getAuthor()%></td>
						<td>$<%=item.getPrice()%></td>
						<td>
							<form action="RemoveFromCartServlet" method="post">
								<input type="hidden" name="index" value="<%=i%>" />
								<button type="submit" class="btn btn-danger btn-sm">Remove</button>
							</form>
						</td>
					</tr>
					<%
					}
					} else {
					%>
					<tr>
						<td colspan="4">Your cart is empty.</td>
					</tr>
					<%
					}
					%>
				</tbody>
				<%
				if (cart != null && !cart.isEmpty()) {
				%>
				<tfoot>
					<tr>
						<td colspan="2"><strong>Total</strong></td>
						<td colspan="2"><strong>$<%=total%></strong></td>
					</tr>
				</tfoot>
				<%
				}
				%>
			</table>
		</div>
		<div class="d-flex justify-content-between">
			<a href="index.jsp" class="btn btn-secondary">Continue Shopping</a> <a
				href="#" class="btn btn-success">Checkout</a>
		</div>
	</div>
</body>
</html>