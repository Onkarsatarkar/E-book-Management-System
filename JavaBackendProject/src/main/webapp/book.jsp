<%@ page import="java.util.List" %>
<%@ page import="in.eb.entity.Book" %>
<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    List<Book> bookList = (List<Book>) request.getAttribute("bookList");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Books - E-Book Store</title>

    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .card-img-top {
            height: 250px;
            object-fit: cover;
        }
    </style>
</head>
<body style="background-color: #f0f2f5;">

    <div class="container my-5">
        <h2 class="text-center mb-4">Available Books</h2>

        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 row-cols-lg-4 g-4">
            <%
                if (bookList != null && !bookList.isEmpty()) {
                    for (Book book : bookList) {
            %>
                <div class="col">
                    <div class="card h-100 shadow-sm">
                        <img src="img/<%= book.getPhoto() %>" class="card-img-top" alt="Book image">
                        <div class="card-body">
                            <h5 class="card-title"><%= book.getTitle() %></h5>
                            <p class="card-text mb-1">Author: <strong><%= book.getAuthor() %></strong></p>
                            <p class="card-text text-success mb-3">Price: ₹<%= book.getPrice() %></p>
                        </div>
                        <div class="card-footer d-flex justify-content-between">
                            <form action="AddToCartServlet" method="post">
                                <input type="hidden" name="bookId" value="<%= book.getId() %>">
                                <button type="submit" class="btn btn-primary btn-sm">Add to Cart</button>
                            </form>
                            <a href="view_details.jsp?id=<%= book.getId() %>" class="btn btn-outline-secondary btn-sm">View Details</a>
                        </div>
                    </div>
                </div>
            <%
                    }
                } else {
            %>
                <div class="col-12">
                    <div class="alert alert-warning text-center">No books found.</div>
                </div>
            <%
                }
            %>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>