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

	<main class="mt-5 pt-4">
		<div class="container">
			<!-- Heading -->
			<h2 class="my-5 text-center">Thanh Toán</h2>

			<!-- Grid row -->
			<div class="row">
				<!-- Left Column -->
				<div class="col-md-8 mb-4">
					<!-- Thành viên -->
					<div class="card p-4 mb-4 shadow-sm">
						<h4>
							Bạn đã là thành viên?
							<a href="#">Đăng nhập ngay</a>
						</h4>
					</div>

					<!-- Địa chỉ giao hàng -->
					<div class="card p-4 mb-4 shadow-sm">
						<h4>Địa chỉ giao hàng</h4>
						<hr>
						<div class="row mb-3">
							<div class="col-md-6 mb-2">
								<div class="form-outline">
									<input type="text" class="form-control" id="receiverName" placeholder="Nhập tên người nhận" />
									<label class="form-label" for="receiverName">Tên người nhận</label>
								</div>
							</div>
							<div class="col-md-6 mb-2">
								<div class="form-outline">
									<input type="email" class="form-control" id="email" placeholder="Nhập email của bạn" />
									<label class="form-label" for="email">Email</label>
								</div>
							</div>
						</div>

						<div class="row mb-3">
							<div class="col-md-6 mb-2">
								<div class="form-outline">
									<input type="tel" class="form-control" id="phone" placeholder="Nhập số điện thoại" />
									<label class="form-label" for="phone">Số điện thoại</label>
								</div>
							</div>
							<div class="col-md-6 mb-2">
								<div class="form-outline">
									<input type="text" class="form-control" id="country" placeholder="Nhập quốc gia" />
									<label class="form-label" for="country">Quốc gia</label>
								</div>
							</div>
						</div>

						<div class="row mb-3">
							<div class="col-md-6 mb-2">
								<div class="form-outline">
									<input type="text" class="form-control" id="state" placeholder="Nhập tỉnh/thành phố" />
									<label class="form-label" for="state">Tỉnh/Thành phố</label>
								</div>
							</div>
							<div class="col-md-6 mb-2">
								<div class="form-outline">
									<input type="text" class="form-control" id="district" placeholder="Nhập quận/huyện" />
									<label class="form-label" for="district">Quận/Huyện</label>
								</div>
							</div>
						</div>

						<div class="row mb-3">
							<div class="col-md-6 mb-2">
								<div class="form-outline">
									<input type="text" class="form-control" id="ward" placeholder="Nhập phường/xã" />
									<label class="form-label" for="ward">Phường/Xã</label>
								</div>
							</div>
							<div class="col-md-6 mb-2">
								<div class="form-outline">
									<input type="text" class="form-control" id="address" placeholder="Nhập địa chỉ nhận hàng" />
									<label class="form-label" for="address">Địa chỉ nhận hàng</label>
								</div>
							</div>
						</div>
					</div>

					<!-- Phương thức vận chuyển -->
					<div class="card p-4 mb-4 shadow-sm">
						<h4>Phương thức vận chuyển</h4>
						<hr>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="shippingMethod" id="standardShipping" />
							<label class="form-check-label" for="standardShipping">Vận chuyển tiêu chuẩn</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="shippingMethod" id="expressShipping" />
							<label class="form-check-label" for="expressShipping">Vận chuyển nhanh</label>
						</div>
					</div>

					<!-- Phương thức thanh toán -->
					<div class="card p-4 mb-4 shadow-sm">
						<h4>Phương thức thanh toán</h4>
						<hr>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="paymentMethod" id="vnpWallet" />
							<label class="form-check-label" for="vnpWallet">
								<img src="vnp_logo.png" alt="VNP" class="payment-logo" />
								Ví VNP
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
								Ví Momo
							</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="paymentMethod" id="cashOnDelivery" />
							<label class="form-check-label" for="cashOnDelivery">Thanh toán khi nhận hàng</label>
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
						<button class="btn btn-primary w-100" type="submit">Xác nhận thanh toán</button>
					</form>
				</div>

				<!-- Right Column -->
				<div class="col-md-4 mb-4">
					<!-- Cart Summary -->
					<div class="card p-4 shadow-sm">
						<h4 class="d-flex justify-content-between align-items-center mb-3">
							<span class="text-muted">Giỏ hàng của bạn</span>
							<span class="badge rounded-pill badge-primary">3</span>
						</h4>

						<ul class="list-group mb-3">
							<li class="list-group-item d-flex justify-content-between">
								<div>
									<h6 class="my-0">Tên sản phẩm</h6>
									<small class="text-muted">Mô tả ngắn</small>
								</div>
								<span class="text-muted">$12</span>
							</li>
							<li class="list-group-item d-flex justify-content-between">
								<div>
									<h6 class="my-0">Sản phẩm thứ hai</h6>
									<small class="text-muted">Mô tả ngắn</small>
								</div>
								<span class="text-muted">$8</span>
							</li>
							<li class="list-group-item d-flex justify-content-between">
								<div>
									<h6 class="my-0">Mặt hàng thứ ba</h6>
									<small class="text-muted">Mô tả ngắn</small>
								</div>
								<span class="text-muted">$5</span>
							</li>
							<li class="list-group-item d-flex justify-content-between bg-light">
								<div class="text-success">
									<h6 class="my-0">Mã khuyến mãi</h6>
									<small>EXAMPLECODE</small>
								</div>
								<span class="text-success">-$5</span>
							</li>
							<li class="list-group-item d-flex justify-content-between">
								<span>Tổng cộng (VND)</span>
								<strong>$20</strong>
							</li>
						</ul>

						<!-- Promo code -->
						<form class="card p-2 shadow-sm">
							<div class="input-group mb-3">
								<input type="text" class="form-control" placeholder="Mã khuyến mãi" aria-label="Promo code" />
								<button class="btn btn-secondary" type="button">Áp dụng</button>
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