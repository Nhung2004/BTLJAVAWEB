<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng Nhập</title>

<!-- Favicons -->
<link href="${pageContext.request.contextPath}/assets/img/favicon.png" rel="icon">

<!-- Vendor CSS Files -->
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap-icons/font/bootstrap-icons.min.css" rel="stylesheet">

</head>
<body>
	<%
	String baoloi = request.getAttribute("baoloi") + "";
	baoloi = (baoloi.equals("null")) ? "" : baoloi;
	%>

	<main>
		<div class="container">
			<section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
				<div class="container">
					<div class="row justify-content-center">
						<div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">
							<div class="d-flex justify-content-center py-4"></div>
							<div class="card mb-3">
								<div class="card-body">
									<div class="pt-4 pb-2">
										<h5 class="card-title text-center pb-0 fs-4">Đăng nhập vào trang web</h5>
										<p class="text-center small">Nhập tên đăng nhập và mật khẩu để tiếp tục</p>
									</div>

									<form action="${pageContext.request.contextPath}/dang-nhap" method="post" class="row g-3 needs-validation" novalidate>
										<div class="col-12">
											<div id="baoloi" class="msg text-danger text-center mb-3">
												<%=baoloi%>
											</div>
											<label for="tendangnhap" class="form-label">Tên đăng nhập</label>
											<div class="input-group has-validation">
												<input type="text" name="tendangnhap" class="form-control" id="tendangnhap" required>
												<div class="invalid-feedback">Vui lòng nhập tên đăng nhập.</div>
											</div>
										</div>

										<div class="col-12">
											<label for="matkhau" class="form-label">Mật khẩu</label>
											<input type="password" name="matkhau" class="form-control" id="matkhau" required>
											<div class="invalid-feedback">Vui lòng nhập mật khẩu!</div>
										</div>

										<div class="col-12">
											<div class="form-check">
												<input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe">
												<label class="form-check-label" for="rememberMe">Duy trì đăng nhập</label>
											</div>
										</div>

										<div class="col-12">
											<button class="btn btn-primary w-100" type="submit">Đăng nhập</button>
										</div>
										<div class="col-12">
											<p class="small mb-0">
												Don't have an account?
												<a href="${pageContext.request.contextPath}/Homepage/DangKy.jsp">Create an account</a>
											</p>
										</div>
									</form>
								</div>
							</div>

							<!-- 
							<div class="credits">
								Designed by
								<a href="https://bootstrapmade.com/">BootstrapMade</a>
							</div>  
							-->
						</div>
					</div>
				</div>
			</section>
		</div>
	</main>

	<!-- Vendor JS Files -->
	<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>
</html>