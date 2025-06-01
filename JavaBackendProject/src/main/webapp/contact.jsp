<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact me</title>
<%@include file="all_component/allCss.jsp"%>
</head>
<body>
	<section class="contact py-5 bg-light" id="contact">
		<div class="container">
			<h2 class="text-center mb-4">Contact Us</h2>
			<div class="row justify-content-center">
				<div class="col-md-8">
					<form action="rrr" method="post">
						<div class="mb-3">
							<label for="name" class="form-label">Your Name</label> <input
								type="text" class="form-control" id="name" name="name"
								placeholder="Enter your name" required>
						</div>
						<div class="mb-3">
							<label for="email" class="form-label">Email Address</label> <input
								type="email" class="form-control" id="email" name="email"
								placeholder="Enter your email" required>
						</div>
						<div class="mb-3">
							<label for="message" class="form-label">Your Message</label>
							<textarea class="form-control" id="message" name="message"
								rows="5" placeholder="Type your message" required></textarea>
						</div>
						<div class="text-center">
							<button type="submit" class="btn btn-primary px-4">Send
								Message</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
</body>
</html>