<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Payment</title>
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

	<main class="mt-5 pt-4">
		<div class="container">
			<!-- Heading -->
			<h2 class="my-5 text-center">Payment</h2>

			<!-- Grid row -->
			<div class="row">
				<!-- Left Column -->
				<div class="col-md-8 mb-4">
					<!-- Thành viên -->
					<div class="card p-4 mb-4 shadow-sm">
						<h4>
							Already a member?
							<a href="#">Login now</a>
						</h4>
					</div>

					<!-- Địa chỉ giao hàng -->
					<div class="card p-4 mb-4 shadow-sm">
						<h4>Address</h4>
						<hr>
						<div class="row mb-3">
							<div class="col-md-6 mb-2">
								<div class="form-outline">
									<input type="text" class="form-control" id="receiverName" placeholder="Enter receiver name" />
									<label class="form-label" for="receiverName">Receiver name</label>
								</div>
							</div>
							<div class="col-md-6 mb-2">
								<div class="form-outline">
									<input type="email" class="form-control" id="email" placeholder="Enter your email" />
									<label class="form-label" for="email">Email</label>
								</div>
							</div>
						</div>

						<div class="row mb-3">
							<div class="col-md-6 mb-2">
								<div class="form-outline">
									<input type="tel" class="form-control" id="phone" placeholder="Enter your phone number" />
									<label class="form-label" for="phone">Phone number</label>
								</div>
							</div>
							<div class="col-md-6 mb-2">
								<div class="form-outline">
									<input type="text" class="form-control" id="country" placeholder="Enter your nationality" />
									<label class="form-label" for="country">Nationality</label>
								</div>
							</div>
						</div>

						<div class="row mb-3">
							<div class="col-md-6 mb-2">
								<div class="form-outline">
									<input type="text" class="form-control" id="state" placeholder="Enter your Province/City" />
									<label class="form-label" for="state">Province/City</label>
								</div>
							</div>
							<div class="col-md-6 mb-2">
								<div class="form-outline">
									<input type="text" class="form-control" id="district" placeholder="Enter your district" />
									<label class="form-label" for="district">District</label>
								</div>
							</div>
						</div>

						<div class="row mb-3">
							<div class="col-md-6 mb-2">
								<div class="form-outline">
									<input type="text" class="form-control" id="ward" placeholder="Enter your Ward/Commune" />
									<label class="form-label" for="ward">Ward/Commune</label>
								</div>
							</div>
							<div class="col-md-6 mb-2">
								<div class="form-outline">
									<input type="text" class="form-control" id="address" placeholder="Enter your delivery address" />
									<label class="form-label" for="address">Delivery address</label>
								</div>
							</div>
						</div>
					</div>

					<!-- Phương thức vận chuyển -->
					<div class="card p-4 mb-4 shadow-sm">
						<h4>Shipping method</h4>
						<hr>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="shippingMethod" id="standardShipping" />
							<label class="form-check-label" for="standardShipping">Standard</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="shippingMethod" id="expressShipping" />
							<label class="form-check-label" for="expressShipping">Fast</label>
						</div>
					</div>

					<!-- Phương thức thanh toán -->
					<div class="card p-4 mb-4 shadow-sm">
						<h4>Payment method</h4>
						<hr>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="paymentMethod" id="vnpWallet" />
							<label class="form-check-label" for="vnpWallet">
								<img src="vnp_logo.png" alt="VNP" class="payment-logo" />
								VNP Wallet
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="paymentMethod" id="shopeePay" />
							<label class="form-check-label" for="shopeePay">
								<img src="shopee_pay_logo.png" alt="ShopeePay" class="payment-logo" />
								ShopeePay
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="paymentMethod" id="momoWallet" />
							<label class="form-check-label" for="momoWallet">
								<img src="momo_logo.png" alt="Momo" class="payment-logo" />
								Momo wallet
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="paymentMethod" id="cashOnDelivery" />
							<label class="form-check-label" for="cashOnDelivery">Cash-on Delivery</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="paymentMethod" id="atmBanking" />
							<label class="form-check-label" for="atmBanking">
								<img src="atm_logo.png" alt="ATM" class="payment-logo" />
								ATM/Internet Banking
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="paymentMethod" id="creditCard" />
							<label class="form-check-label" for="creditCard">
								<img src="visa_logo.png" alt="Visa" class="payment-logo" />
								Visa/Master/JCB
							</label>
						</div>
					</div>

					<!-- Xác nhận thanh toán Button -->
					<hr />
					<form action="#" method="POST">
						<button class="btn btn-primary w-100" type="submit">Confirm</button>
					</form>
				</div>

				<!-- Right Column -->
				<div class="col-md-4 mb-4">
					<!-- Cart Summary -->
					<div class="card p-4 shadow-sm">
						<h4 class="d-flex justify-content-between align-items-center mb-3">
							<span class="text-muted">Your cart</span>
							<span class="badge rounded-pill badge-primary">3</span>
						</h4>

						<ul class="list-group mb-3">
							<li class="list-group-item d-flex justify-content-between">
								<div>
									<h6 class="my-0">Product name</h6>
									<small class="text-muted">Short description</small>
								</div>
								<span class="text-muted">$12</span>
							</li>
							<li class="list-group-item d-flex justify-content-between">
								<div>
									<h6 class="my-0">Product name</h6>
									<small class="text-muted">Short description</small>
								</div>
								<span class="text-muted">$8</span>
							</li>
							<li class="list-group-item d-flex justify-content-between">
								<div>
									<h6 class="my-0">Product name</h6>
									<small class="text-muted">Short description</small>
								</div>
								<span class="text-muted">$5</span>
							</li>
							<li class="list-group-item d-flex justify-content-between bg-light">
								<div class="text-success">
									<h6 class="my-0">Coupons</h6>
									<small>EXAMPLECODE</small>
								</div>
								<span class="text-success">-$5</span>
							</li>
							<li class="list-group-item d-flex justify-content-between">
								<span>Total price (USD)</span>
								<strong>$20</strong>
							</li>
						</ul>

						<!-- Promo code -->
						<form class="card p-2 shadow-sm">
							<div class="input-group mb-3">
								<input type="text" class="form-control" placeholder="Your coupon goes here" aria-label="Promo code" />
								<button class="btn btn-secondary" type="button">Apply</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
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