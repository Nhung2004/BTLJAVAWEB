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
<link href="../assets/vendor/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
<link href="../assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="../assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="../assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="../assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="../assets/vendor/simple-datatables/style.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="../assets/css/NiceAdminMain.css" rel="stylesheet">
</head>

<body>
	<!-- Tách riêng header ra file Header.jsp -->
	<jsp:include page="Parts/Header.jsp" />

	<!-- Tách riêng sidebar ra file Sidebar.jsp -->
	<jsp:include page="Parts/Sidebar.jsp" />

	<main id="main" class="main">

		<!-- Page Title -->
		<div class="pagetitle">
			<h1>Products management</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="Index.jsp">Home</a>
					</li>
					<li class="breadcrumb-item">Products Management</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<!--  
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
		-->

		<section class="product-management">
			<!-- Products List Table -->
			<div class="row">
				<div class="col-12">
					<div class="table-responsive">
						<div class="card card-block card-stretch card-height">
							<div class="card-header d-flex justify-content-between align-items-center mb-0">
								<div class="header-title">
									<h5 class="card-title">Products Management</h5>
								</div>
								<div class="card-header-toolbar d-flex justify-content-between align-items-center">
									<!-- Search Bar on the Left -->
									<div class="d-flex align-items-center me-3">
										<label class="me-2 mb-0">Search:</label>
										<input type="search" class="form-control form-control-sm" placeholder="Search Products..." aria-controls="datatable">
									</div>
									<!-- "Add Product" Button -->
									<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addProductModal">
										<i class="fas fa-plus-circle me-2"></i>
										Add Product
									</button>
								</div>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table mb-0 table-borderless table-striped">
										<thead>
											<tr>
												<!-- Center-align column titles with borders -->
												<th scope="col" class="text-center" style="border-right: 1px solid #ddd;">Product ID</th>
												<th scope="col" class="text-center" style="border-right: 1px solid #ddd;">Product Name</th>
												<th scope="col" class="text-center" style="border-right: 1px solid #ddd;">Price</th>
												<th scope="col" class="text-center" style="border-right: 1px solid #ddd;">Stock</th>
												<th scope="col" class="text-center" style="border-right: 1px solid #ddd;">Preview Picture</th>
												<th scope="col" class="text-center">Action</th>
											</tr>
										</thead>
										<tbody>
											<!-- Product 001 -->
											<jsp:include page="Parts/ProductRow.jsp">
												<jsp:param name="productId" value="001" />
												<jsp:param name="productName" value="Product A" />
												<jsp:param name="price" value="100,000 VND" />
												<jsp:param name="stock" value="20" />
												<jsp:param name="imagePath" value="../assets/img/books/Foreign/10-000-cau-dam-thoai-tieng-anh-k.jpg" />
											</jsp:include>

											<!-- Product 002 -->
											<jsp:include page="Parts/ProductRow.jsp">
												<jsp:param name="productId" value="002" />
												<jsp:param name="productName" value="Product B" />
												<jsp:param name="price" value="200,000 VND" />
												<jsp:param name="stock" value="15" />
												<jsp:param name="imagePath" value="../assets/img/books/Light Novel/arifureta-tap-3_5e53504b3a43441d.jpg" />
											</jsp:include>

											<!-- Product 003 -->
											<jsp:include page="Parts/ProductRow.jsp">
												<jsp:param name="productId" value="003" />
												<jsp:param name="productName" value="Product C" />
												<jsp:param name="price" value="150,000 VND" />
												<jsp:param name="stock" value="10" />
												<jsp:param name="imagePath" value="/assets/img/products/product-c.jpg" />
											</jsp:include>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Add Product Modal -->
			<div class="modal fade" id="addProductModal" tabindex="-1" aria-labelledby="addProductModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header bg-primary text-white">
							<h5 class="modal-title" id="addProductModalLabel">
								<i class="fas fa-box-open me-2"></i>
								Add New Product
							</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form id="addProductForm" enctype="multipart/form-data">
								<div class="mb-3">
									<label for="productName" class="form-label">Product Name</label>
									<input type="text" class="form-control" id="productName" name="productName" placeholder="Enter product name" required>
								</div>
								<div class="mb-3">
									<label for="productPrice" class="form-label">Price</label>
									<input type="number" class="form-control" id="productPrice" name="productPrice" placeholder="Enter price" required>
								</div>
								<div class="mb-3">
									<label for="productQuantity" class="form-label">Quantity</label>
									<input type="number" class="form-control" id="productQuantity" name="productQuantity" placeholder="Enter quantity" required>
								</div>
								<div class="mb-3">
									<label for="productImage" class="form-label">Product Image</label>
									<input type="file" class="form-control" id="productImage" name="productImage" accept="image/*" required>
								</div>
								<button type="submit" class="btn btn-primary w-100">Add Product</button>
							</form>
						</div>
					</div>
				</div>
			</div>

			<!-- Edit Product Modal -->
			<div class="modal fade" id="editProductModal" tabindex="-1" aria-labelledby="editProductModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header bg-primary text-white">
							<h5 class="modal-title" id="editProductModalLabel">
								<i class="fas fa-box-edit me-2"></i>
								Edit Product
							</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form id="editProductForm" enctype="multipart/form-data">
								<div class="mb-3">
									<label for="editProductName" class="form-label">Product Name</label>
									<input type="text" class="form-control" id="editProductName" name="editProductName" placeholder="Enter product name" required>
								</div>
								<div class="mb-3">
									<label for="editProductPrice" class="form-label">Price</label>
									<input type="number" class="form-control" id="editProductPrice" name="editProductPrice" placeholder="Enter price" required>
								</div>
								<div class="mb-3">
									<label for="editProductQuantity" class="form-label">Quantity</label>
									<input type="number" class="form-control" id="editProductQuantity" name="editProductQuantity" placeholder="Enter quantity" required>
								</div>
								<div class="mb-3">
									<label for="editProductImage" class="form-label">Product Image</label>
									<input type="file" class="form-control" id="editProductImage" name="editProductImage" accept="image/*">
								</div>
								<button type="submit" class="btn btn-primary w-100">Save Changes</button>
							</form>
						</div>
					</div>
				</div>
			</div>

			<!-- Delete Product Modal -->
			<div class="modal fade" id="deleteProductModal" tabindex="-1" aria-labelledby="deleteProductModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header bg-danger text-white">
							<h5 class="modal-title" id="deleteProductModalLabel">
								<i class="fas fa-exclamation-triangle me-2"></i>
								Confirm Deletion
							</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body text-center">
							<p>Are you sure you want to delete this product?</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
							<button type="button" class="btn btn-danger">Delete</button>
						</div>
					</div>
				</div>
			</div>
		</section>
	</main>
	<!-- End #main -->

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