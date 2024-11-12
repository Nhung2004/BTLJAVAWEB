<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Components / Accordion - NiceAdmin Bootstrap Template</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- fontsomeaws -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">


<!-- Favicons -->
<link href="../assets/img/favicon.png" rel="icon">
<link href="../assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
<link href="../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="../assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="../assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="../assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="../assets/vendor/simple-datatables/style.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../assets/css/NiceAdminMain.css" rel="stylesheet">

<!-- =======================================================
  * Template Name: NiceAdmin
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Updated: Apr 20 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>
	<!-- Tách riêng header ra file Header.jsp -->
	<jsp:include page="Header.jsp" />

	<!-- Tách riêng sidebar ra file Sidebar.jsp -->
	<jsp:include page="Sidebar.jsp" />

	<main id="main" class="main">

		<div class="pagetitle">
			<h1>Book Store</h1>

			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="index.jsp">
							<i class="fa-solid fa-house"></i>
						</a>
					</li>
					<li class="breadcrumb-item"></li>
					<li class="breadcrumb-item active">
						<i class="bi bi-book"></i>
					</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->
		
		<!-- main -->
		<div class="pagetitle">
			<h1>Thêm Sản Phẩm</h1>
		</div>
		<form action="product?action=add" method="post" enctype="multipart/form-data">
			<div class="row">
				<div class="col-md-6">
					<div class="mb-3">
						<label for="tensanpham" class="form-label">Tên Sản Phẩm</label>
						<input type="text" class="form-control" id="tensanpham" name="tensanpham" required>
					</div>
					<div class="mb-3">
						<label for="giaban" class="form-label">Giá Bán</label>
						<input type="number" class="form-control" id="giaban" name="giaban" required>
					</div>
					<div class="mb-3">
						<label for="soluong" class="form-label">Số Lượng</label>
						<input type="number" class="form-control" id="soluong" name="soluong" required>
					</div>
					<div class="mb-3">
						<label for="hinhanh" class="form-label">Ảnh Sản Phẩm</label>
						<input type="file" class="form-control" id="hinhanh" name="hinhanh" accept="image/*" required onchange="previewImage(event)">
					</div>
					<!-- Thẻ img hiển thị ảnh xem trước -->
					<div class="mb-3">
						<img id="preview" src="#" alt="Xem trước ảnh" style="display: none; width: 100%; max-height: 300px; margin-top: 10px;">
					</div>
					<div class="mt-3">
						<button type="submit" class="btn btn-primary">Thêm Sản Phẩm</button>
						<button type="reset" class="btn btn-secondary">Đặt lại</button>
					</div>
				</div>
			</div>
		</form>

		<script>
			function previewImage(event) {
				const preview = document.getElementById('preview');
				const file = event.target.files[0];

				if (file) {
					preview.src = URL.createObjectURL(file);
					preview.style.display = 'block';
				} else {
					preview.src = '#';
					preview.style.display = 'none';
				}
			}
		</script>

		<hr>
		<br>
		<br>


		<div class="row mt-4">
			<h4 class="text-center">
				<b>Danh Sách Sản Phẩm</b>
			</h4>
			<div class="table-responsive mt-3">
				<table class="table table-bordered table-hover">
					<thead class="table-dark text-center">
						<tr>
							<th>Mã Sản Phẩm</th>
							<th>Tên Sản Phẩm</th>
							<th>Giá</th>
							<th>Số Lượng</th>
							<th>Ảnh</th>
							<th>Hành Động</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="product" items="${products}">
							<tr>
								<td class="text-center">${product.masanpham}</td>
								<td>${product.tensanpham}</td>
								<td class="text-end">${product.giaban}₫</td>
								<td class="text-center">${product.soluong}</td>
								<td class="text-center">
									<img src="${product.imagePath}" alt="${product.tensanpham}" width="80" height="80" class="rounded" />
								</td>
								<td class="text-center">
									<a href="product?action=edit&id=${product.masanpham}" class="btn btn-sm btn-primary">Sửa</a>
									<a href="product?action=delete&id=${product.masanpham}" class="btn btn-sm btn-danger">Xóa</a>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
		</section>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer"> </footer>
	<!-- End Footer -->

	<a href="#" class="back-to-top d-flex align-items-center justify-content-center">
		<i class="bi bi-arrow-up-short"></i>
	</a>

	<!-- Vendor JS Files -->
	<script src="../assets/vendor/apexcharts/apexcharts.min.js"></script>
	<script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="../assets/vendor/chart.js/chart.umd.js"></script>
	<script src="../assets/vendor/echarts/echarts.min.js"></script>
	<script src="../assets/vendor/quill/quill.js"></script>
	<script src="../assets/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="../assets/vendor/tinymce/tinymce.min.js"></script>
	<script src="../assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="../assets/js/NiceAdminMain.js"></script>

</body>
</html>