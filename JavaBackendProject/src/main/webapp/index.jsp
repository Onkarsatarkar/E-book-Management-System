<%@ page session="true" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ebook-index page</title>
<style type="text/css">
.back-img {
	background:
		url(https://images.theconversation.com/files/45159/original/rptgtpxd-1396254731.jpg?ixlib=rb-4.1.0&q=45&auto=format&w=754&fit=clip);
	height: 80vh;
	width: 100%;
	background-size: cover;
	background-repeat: no-repeat;
}

.crd {
	background-color: #e3e6e4;
}

.crd-ho:hover {
	background-color: #f5e6f0;
}

.bookss {
	hieght: 300px;
	width: 200px;
}
</style>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<%@include file="/navbar.jsp"%>
	<div class="container-fluid back-img ">
		<div class="row">
			<div class="col-12 mt-5">
				<h2 class="text-center text-white mt-5">Ebook Management System</h2>
			</div>
		</div>
	</div>
	
	<%@include file="about.jsp"%>
	<!-- Start recent book -->
	<div class="container-fluid bg-light">
		<div class="text-center">
			<h3 class="mt-2">Recent books</h3>
		</div>
		<div class="row">
			<!-- Product Card -->
			<div class="col-md-4">
				<div class="card">
					<img src="books/java.webp" class="w-5 text-center mx-auto p-2"
						style="Width: 200px;" class="card-img-top bookss"
						alt="Product Image">
					<div class="card-body">
						<h5 class="card-title">Java Programming</h5>
						<p class="card-text">E Balagurusamy.</p>
					</div>
					<div class="card-footer">
						<button class="btn btn-primary">Add to Cart</button>
						<button class="btn btn-info">View details</button>
						<button class="btn btn-warning">$99.99</button>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZlZ5VFSeYw68QvImo3awoKvBll0c87Soc3w&s"
						class="w-5 text-center mx-auto p-2" style="Width: 200px;"
						class="card-img-top bookss" alt="Product Image">
					<div class="card-body">
						<h5 class="card-title">War and Peace</h5>
						<p class="card-text">Leo Tolstoy</p>
						<h6 class="card-price">$99.99</h6>
					</div>
					<div class="card-footer">
						<button class="btn btn-primary">Add to Cart</button>
						<button class="btn btn-info">View More</button>
						<button class="btn btn-warning">Rate</button>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card">
					<img
						src="https://images-platform.99static.com//QYWt9hflpp9Iklq4WEqWG-8mKOU=/0x0:1650x1650/fit-in/590x590/99designs-contests-attachments/75/75544/attachment_75544031"
						class="w-5 text-center mx-auto p-2" style="Width: 200px;"
						class="card-img-top bookss" alt="Product Image">
					<div class="card-body">
						<h5 class="card-title">Classic Literature</h5>
						<p class="card-text">George Orwell</p>
						<h6 class="card-price">$96.99</h6>
					</div>
					<div class="card-footer">
						<button class="btn btn-primary">Add to Cart</button>
						<button class="btn btn-info">View More</button>
						<button class="btn btn-warning">Rate</button>
					</div>
				</div>
			</div>

			<!-- You can add more product cards here -->
		</div>
		<div class="text-center">
			<button class="btn btn-danger m-2">View details</button>
		</div>
	</div>
	<hr>
	<!-- end recent book -->


	<!-- Start new book -->
	<div class="container-fluid bg-light">
		<div class="text-center">
			<h3>New books</h3>
		</div>
		<div class="row">
			<!-- Product Card -->
			<div class="col-md-4">
				<div class="card">
					<img
						src="https://www.shutterstock.com/image-vector/modern-annual-report-cover-book-600w-2471685195.jpg"
						class="w-5 text-center mx-auto p-2" style="Width: 200px;"
						class="card-img-top bookss" alt="Product Image">
					<div class="card-body">
						<h5 class="card-title">Utopia</h5>
						<p class="card-text">Sir Thomas Moor</p>
						<h6 class="card-price">$99.99</h6>
					</div>
					<div class="card-footer">
						<button class="btn btn-primary">Add to Cart</button>
						<button class="btn btn-info">View More</button>
						<button class="btn btn-warning">Rate</button>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card">
					<img
						src="https://media.gettyimages.com/id/1329615279/vector/corporate-book-cover-design-template-in-a4.jpg?s=612x612&w=gi&k=20&c=3jEswv5gp4mdrFbs4TNsUwzedogIW9vRYFkwSfGJ-jE="
						class="w-5 text-center mx-auto p-2" style="Width: 200px;"
						class="card-img-top bookss" alt="Product Image">
					<div class="card-body">
						<h5 class="card-title">Waste Land</h5>
						<p class="card-text">T.S Eliot</p>
						<h6 class="card-price">$99.99</h6>
					</div>
					<div class="card-footer">
						<button class="btn btn-primary">Add to Cart</button>
						<button class="btn btn-info">View More</button>
						<button class="btn btn-warning">Rate</button>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card">
					<img
						src="https://5.imimg.com/data5/IU/SQ/GD/SELLER-43618059/book-cover-page-design-500x500.jpg"
						class="w-5 text-center mx-auto p-2" style="Width: 200px;"
						class="card-img-top bookss" alt="Product Image">
					<div class="card-body">
						<h5 class="card-title">The Tempest</h5>
						<p class="card-text">William Shakespeare</p>
						<h6 class="card-price">$99.99</h6>
					</div>
					<div class="card-footer">
						<button class="btn btn-primary">Add to Cart</button>
						<button class="btn btn-info">View More</button>
						<button class="btn btn-warning">Rate</button>
					</div>
				</div>
			</div>

			<!-- You can add more product cards here -->
		</div>
		<div class="text-center">
			<button class="btn btn-danger m-2">View details</button>
		</div>
	</div>
	<hr>
	<!-- end new book -->


	<!-- Start old book -->
	<div class="container-fluid bg-light">
		<div class="text-center">
			<h3>Old books</h3>
		</div>
		<div class="row">
			<!-- Product Card -->
			<div class="col-md-4">
				<div class="card">
					<img
						src="https://images-platform.99static.com//fK2XZvzrGKya-1XE4P8R6xzwVHU=/0x0:1600x1600/fit-in/500x500/99designs-contests-attachments/100/100116/attachment_100116504"
						class="w-5 text-center mx-auto p-2" style="Width: 200px;"
						class="card-img-top bookss" alt="Product Image">
					<div class="card-body">
						<h5 class="card-title">The Merchant of Venice</h5>
						<p class="card-text">William Shakespeare</p>
						<h6 class="card-price">$99.99</h6>
					</div>
					<div class="card-footer">
						<button class="btn btn-primary">Add to Cart</button>
						<button class="btn btn-info">View More</button>
						<button class="btn btn-warning">Rate</button>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card">
					<img
						src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSynymJ7SXAaK0jhpx8m1isxtIwUVJyHYcXIg&s"
						class="w-5 text-center mx-auto p-2" style="Width: 200px;"
						class="card-img-top bookss" alt="Product Image">
					<div class="card-body">
						<h5 class="card-title">The Great Gatsby</h5>
						<p class="card-text">F. Scott Fitzgerald</p>
						<h6 class="card-price">$99.99</h6>
					</div>
					<div class="card-footer">
						<button class="btn btn-primary">Add to Cart</button>
						<button class="btn btn-info">View More</button>
						<button class="btn btn-warning">Rate</button>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card">
					<img
						src="https://cdn.dribbble.com/userupload/8869625/file/original-f8c74ecb98e1d264de6921328169427d.jpg?crop=144x122-1271x967&format=webp&resize=400x300&vertical=center"
						class="w-5 text-center mx-auto p-2" style="Width: 200px;"
						class="card-img-top bookss" alt="Product Image">
					<div class="card-body">
						<h5 class="card-title">The world as I see it</h5>
						<p class="card-text">Albert Einstein</p>
						<h6 class="card-price">$99.99</h6>
					</div>
					<div class="card-footer">
						<button class="btn btn-primary">Add to Cart</button>
						<button class="btn btn-info">View More</button>
						<button class="btn btn-warning">Rate</button>
					</div>
				</div>
			</div>

			<!-- You can add more product cards here -->
		</div>
		<div class="text-center">
			<button class="btn btn-danger m-2">View details</button>
		</div>
	</div>
	<!-- end old book -->
<%@include file="book.jsp"%>
	<%@include file="contact.jsp"%>
	<%@include file="/footer.jsp"%>


</body>
</html>