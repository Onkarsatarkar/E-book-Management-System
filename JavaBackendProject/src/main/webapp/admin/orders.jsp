
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer orders</title>
<style type="text/css">
 .footer{
        margin-top:190px;
        }
</style>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container-fluid">

    <div class="container mt-4">
        <h2 class="text-center mb-4">Customer Orders</h2>

        <div class="mb-3">
            <label for="filterStatus" class="form-label">Filter by Status:</label>
            <select class="form-select w-auto" id="filterStatus">
                <option>All</option>
                <option>Pending</option>
                <option>Delivered</option>
                <option>Cancelled</option>
            </select>
        </div>

        <div class="table-responsive">
            <table class="table table-bordered table-striped text-center">
                <thead class="table-dark">
                    <tr>
                        <th>Order ID</th>
                        <th>Customer</th>
                        <th>Book</th>
                        <th>Quantity</th>
                        <th>Order Date</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        Connection conn = null;
                        PreparedStatement ps = null;
                        ResultSet rs = null;
                        try {
                            Class.forName("com.mysql.cj.jdbc.Driver");
                            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/BookProject", "root", "Onkar@1234");

                            ps = conn.prepareStatement("SELECT * FROM orders");
                            rs = ps.executeQuery();

                            while (rs.next()) {
                    %>
                    <tr>
                        <td><%= rs.getInt("order_id") %></td>
                        <td><%= rs.getString("customer_name") %></td>
                        <td><%= rs.getString("book_name") %></td>
                        <td><%= rs.getInt("quantity") %></td>
                        <td><%= rs.getDate("order_date") %></td>
                        <td><%= rs.getString("status") %></td>
                        <td>
                            <a href="markDelivered?id=<%= rs.getInt("order_id") %>" class="btn btn-success btn-sm">Mark Delivered</a>
                            <a href="cancelOrder?id=<%= rs.getInt("order_id") %>" class="btn btn-danger btn-sm">Cancel</a>
                        </td>
                    </tr>
                    <%
                            }
                        } catch (Exception e) {
                            out.println("<tr><td colspan='7' class='text-danger'>Error: " + e.getMessage() + "</td></tr>");
                        } finally {
                            if (conn != null) conn.close();
                        }
                    %>
                </tbody>
            </table>
        </div>
    </div>

    <footer class="bg-dark text-light text-center py-3 mt-5">
        &copy; EbookManagement System. All rights reserved.
    </footer>
</div>
	
</body>
</html>