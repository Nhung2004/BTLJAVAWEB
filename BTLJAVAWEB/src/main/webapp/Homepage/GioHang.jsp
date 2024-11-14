<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Trang chủ</title>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta name="description" content="">
<meta name="keywords" content="">

<!-- Favicons -->
<link href="${pageContext.request.contextPath}/assets/img/favicon.png" rel="icon">
<link href="${pageContext.request.contextPath}/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Fonts -->
<link href="https://fonts.googleapis.com" rel="preconnect">
<link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/aos/aos.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

<!-- Main CSS File -->
<link href="${pageContext.request.contextPath}/assets/css/GpMain.css" rel="stylesheet">
</head>
<body class="index-page">
	<!-- Tách riêng header ra file Header.jsp -->
	<jsp:include page="Header.jsp" />

	<main class="main">

		<!-- Hero Section -->
		<section id="hero" class="hero section dark-background">

			<img src="${pageContext.request.contextPath}/assets/img/background/HeroBG.jpg" alt="" data-aos="fade-in">

			<div class="container">
				<div class="row justify-content-center text-center" data-aos="fade-up" data-aos-delay="100">
					<div class="col-xl-6 col-lg-8">
						<h2>Group 13 Books Selling Website</h2>
						<p>Popular books of the store</p>
					</div>
				</div>

				<div class="row gy-4 mt-5 justify-content-center" data-aos="fade-up" data-aos-delay="200">
					<div class="col-xl-2 col-md-4" data-aos="fade-up" data-aos-delay="300">
						<div class="icon-box">
							<i class="bi bi-journal-bookmark"></i>
							<h3>
								<a href="SanPham.jsp">Foreign</a>
							</h3>
						</div>
					</div>

					<div class="col-xl-2 col-md-4" data-aos="fade-up" data-aos-delay="400">
						<div class="icon-box">
							<i class="bi bi-motherboard"></i>
							<h3>
								<a href="">ITs</a>
							</h3>
						</div>
					</div>

					<div class="col-xl-2 col-md-4" data-aos="fade-up" data-aos-delay="500">
						<div class="icon-box">
							<i class="bi bi-vector-pen"></i>
							<h3>
								<a href="">Literature</a>
							</h3>
						</div>
					</div>

					<div class="col-xl-2 col-md-4" data-aos="fade-up" data-aos-delay="600">
						<div class="icon-box">
							<i class="bi bi-pencil-square"></i>
							<h3>
								<a href="">Light Novel</a>
							</h3>
						</div>
					</div>

					<div class="col-xl-2 col-md-4" data-aos="fade-up" data-aos-delay="700">
						<div class="icon-box">
							<i class="bi bi-gem"></i>
							<h3>
								<a href="">Life Skill</a>
							</h3>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- /Hero Section -->

		<!-- Cart Section -->
		<section id="cart" class="cart section">

			<!-- Section Title -->
			<div class="container section-title" data-aos="fade-up">
				<h2>Your Cart</h2>
				<p>Review your selected items before checkout</p>
			</div>
			<!-- End Section Title -->

			<div class="container">
				<div class="row gy-4">

					<!-- Product Item -->
					<div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="100">
						<div class="service-item position-relative border p-3 rounded">
							<div class="image">
								<img src="${pageContext.request.contextPath}/assets/img/masonry-portfolio/masonry-portfolio-1.jpg" alt="Book 1" class="img-fluid" style="width: 100%; height: 200px; object-fit: cover;">
							</div>
							<a href="product-details.html" class="stretched-link">
								<h3>Book Title 1</h3>
							</a>
							<p>Short description of Book 1. Perfect for enthusiasts of genre X.</p>

							<!-- Adjusted Price Display -->
							<p class="price">
								<span style="font-size: larger; font-weight: bold;">$9.99 </span>
								&nbsp;&nbsp;
								<span style="text-decoration: line-through; color: gray;">$10.99</span>
								&nbsp;&nbsp;
								<span style="color: green; font-weight: bold;">| Save 9%</span>
							</p>
						</div>
					</div>
					<!-- End Product Item -->

					<!-- Product Item -->
					<div class="col-lg-3 col-md-6" data-aos="fade-up" data-aos-delay="100">
						<div class="service-item position-relative border p-3 rounded">
							<div class="image">
								<img src="${pageContext.request.contextPath}/assets/img/masonry-portfolio/masonry-portfolio-2.jpg" alt="Book 1" class="img-fluid" style="width: 100%; height: 200px; object-fit: cover;">
							</div>
							<a href="product-details.html" class="stretched-link">
								<h3>Book Title 2</h3>
							</a>
							<p>Short description of Book 2. Perfect for enthusiasts of genre X.</p>

							<!-- Adjusted Price Display -->
							<p class="price">
								<span style="font-size: larger; font-weight: bold;">$19.99 </span>
								&nbsp;&nbsp;
								<span style="text-decoration: line-through; color: gray;">$30.99</span>
								&nbsp;&nbsp;
								<span style="color: green; font-weight: bold;">| Save 29%</span>
							</p>
						</div>
					</div>
					<!-- End Product Item -->

				</div>

				<!-- Buy Now Button -->
				<div class="d-flex justify-content-center mt-5">
					<a href="ThanhToan.jsp" class="btn btn-primary">Buy Now</a>
				</div>
			</div>
		</section>

		<!-- /Cart Section -->

	</main>

	<!-- Scroll Top -->
	<a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center">
		<i class="bi bi-arrow-up-short"></i>
	</a>

	<!-- Preloader -->
	<div id="preloader"></div>

	<!-- Vendor JS Files -->
	<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/php-email-form/validate.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/aos/aos.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/purecounter/purecounter_vanilla.js"></script>

	<!-- Main JS File -->
	<script src="${pageContext.request.contextPath}/assets/js/GpMain.js"></script>
</body>
</html>