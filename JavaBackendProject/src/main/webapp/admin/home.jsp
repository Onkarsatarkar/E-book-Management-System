<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook-admin page</title>
<style>
  .dashboard-card {
            transition: all 0.3s ease-in-out;
            text-align: center;
            cursor: pointer;
            border: none;
        }

        .dashboard-card:hover {
            box-shadow: 0 0 12px rgba(0, 0, 0, 0.2);
            transform: scale(1.05);
        }

        .dashboard-icon {
            font-size: 40px;
            margin-bottom: 10px;
        }
        .footer{
        margin-top:190px;
        }
</style>
<%@include file="allCss.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container my-5">
    <h3 class="text-center mb-4">Hello, Admin</h3>
    <div class="row g-4 justify-content-center">
        <div class="col-md-3 col-sm-6">
            <a href="add_books.jsp" class="text-decoration-none text-dark">
                <div class="card dashboard-card p-3">
                    <div class="dashboard-icon text-primary">
                        <i class="fas fa-plus-square"></i>
                    </div>
                    <h5>Add Books</h5>
                </div>
            </a>
        </div>

        <div class="col-md-3 col-sm-6">
            <a href="all_books.jsp" class="text-decoration-none text-dark">
                <div class="card dashboard-card p-3">
                    <div class="dashboard-icon text-danger">
                        <i class="fas fa-book"></i>
                    </div>
                    <h5>All Books</h5>
                </div>
            </a>
        </div>

        <div class="col-md-3 col-sm-6">
            <a href="orders.jsp" class="text-decoration-none text-dark">
                <div class="card dashboard-card p-3">
                    <div class="dashboard-icon text-warning">
                        <i class="fas fa-box"></i>
                    </div>
                    <h5>Order</h5>
                </div>
            </a>
        </div>

        <div class="col-md-3 col-sm-6">
            <a href="logout.jsp" class="text-decoration-none text-dark">
                <div class="card dashboard-card p-3">
                    <div class="dashboard-icon text-info">
                        <i class="fas fa-sign-out-alt"></i>
                    </div>
                    <h5>Logout</h5>
                </div>
            </a>
        </div>
    </div>
</div>

<div class="footer">
<%@include file="/footer.jsp"%>
</div>
	


</body>
</html>