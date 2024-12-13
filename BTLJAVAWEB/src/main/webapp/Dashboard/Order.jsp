<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Order Management</title>
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
			<h1>Order management</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="Index.jsp">Home</a>
					</li>
					<li class="breadcrumb-item">Order Management</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="order-management">
			<!-- Orders List Table -->
			<div class="row">
				<div class="col-12">
					<div class="table-responsive">
						<div class="card card-block card-stretch card-height">
							<div class="card-header d-flex justify-content-between align-items-center mb-0">
								<div class="header-title">
									<h5 class="card-title">Orders Management</h5>
								</div>
								<div class="card-header-toolbar d-flex justify-content-between align-items-center">
									<!-- Search Bar on the Left -->
									<div class="d-flex align-items-center me-3">
										<label class="me-2 mb-0">Search:</label>
										<input type="search" class="form-control form-control-sm" placeholder="Search Orders..." aria-controls="datatable">
									</div>
								</div>
							</div>
							<div class="card-body">
								<div class="table-responsive">
									<table class="table mb-0 table-borderless table-striped">
										<thead>
											<tr>
												<th scope="col" class="text-center" style="border-right: 1px solid #ddd;">Order ID</th>
												<th scope="col" class="text-center" style="border-right: 1px solid #ddd;">Client</th>
												<th scope="col" class="text-center" style="border-right: 1px solid #ddd;">Total Price</th>
												<th scope="col" class="text-center" style="border-right: 1px solid #ddd;">Status</th>
												<th scope="col" class="text-center" style="border-right: 1px solid #ddd;">Order Date</th>
												<th scope="col" class="text-center">Action</th>
											</tr>
										</thead>
										<tbody>
											<!-- Order 001 -->
											<jsp:include page="Parts/OrderRow.jsp">
												<jsp:param name="orderId" value="001" />
												<jsp:param name="client" value="Nguyen Hung" />
												<jsp:param name="totalPrice" value="500,000 VND" />
												<jsp:param name="status" value="Completed" />
												<jsp:param name="statusClass" value="bg-success" />
												<jsp:param name="orderDate" value="05-10-2024" />
											</jsp:include>

											<!-- Order 002 -->
											<jsp:include page="Parts/OrderRow.jsp">
												<jsp:param name="orderId" value="002" />
												<jsp:param name="client" value="Hai Ly" />
												<jsp:param name="totalPrice" value="300,000 VND" />
												<jsp:param name="status" value="Pending" />
												<jsp:param name="statusClass" value="bg-warning" />
												<jsp:param name="orderDate" value="06-11-2024" />
											</jsp:include>

											<!-- Order 003 -->
											<jsp:include page="Parts/OrderRow.jsp">
												<jsp:param name="orderId" value="003" />
												<jsp:param name="client" value="Pham Hung" />
												<jsp:param name="totalPrice" value="450,000 VND" />
												<jsp:param name="status" value="Canceled" />
												<jsp:param name="statusClass" value="bg-danger" />
												<jsp:param name="orderDate" value="07-12-2024" />
											</jsp:include>

											<!-- Order 004 -->
											<jsp:include page="Parts/OrderRow.jsp">
												<jsp:param name="orderId" value="004" />
												<jsp:param name="client" value="John Doe" />
												<jsp:param name="totalPrice" value="500,000 VND" />
												<jsp:param name="status" value="Completed" />
												<jsp:param name="statusClass" value="bg-success" />
												<jsp:param name="orderDate" value="10-12-2024" />
											</jsp:include>

											<!-- Order 005 -->
											<jsp:include page="Parts/OrderRow.jsp">
												<jsp:param name="orderId" value="005" />
												<jsp:param name="client" value="Jane Smith" />
												<jsp:param name="totalPrice" value="300,000 VND" />
												<jsp:param name="status" value="Pending" />
												<jsp:param name="statusClass" value="bg-warning" />
												<jsp:param name="orderDate" value="09-12-2024" />
											</jsp:include>

											<!-- Order 006 -->
											<jsp:include page="Parts/OrderRow.jsp">
												<jsp:param name="orderId" value="006" />
												<jsp:param name="client" value="Alice Nguyen" />
												<jsp:param name="totalPrice" value="400,000 VND" />
												<jsp:param name="status" value="Canceled" />
												<jsp:param name="statusClass" value="bg-danger" />
												<jsp:param name="orderDate" value="08-12-2024" />
											</jsp:include>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- View Order Modal -->
			<div class="modal fade" id="viewOrderModal" tabindex="-1" aria-labelledby="viewOrderModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header bg-info text-white">
							<h5 class="modal-title" id="viewOrderModalLabel">
								<i class="fas fa-eye me-2"></i>
								View Order Details
							</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<div class="mb-3">
								<label class="form-label">Order ID:</label>
								<p id="viewOrderId" class="form-control-plaintext"></p>
							</div>
							<div class="mb-3">
								<label class="form-label">Customer Name:</label>
								<p id="viewCustomerName" class="form-control-plaintext"></p>
							</div>
							<div class="mb-3">
								<label class="form-label">Order Date:</label>
								<p id="viewOrderDate" class="form-control-plaintext"></p>
							</div>
							<div class="mb-3">
								<label class="form-label">Status:</label>
								<p id="viewOrderStatus" class="form-control-plaintext"></p>
							</div>
							<div class="mb-3">
								<label class="form-label">Total Amount:</label>
								<p id="viewOrderTotal" class="form-control-plaintext"></p>
							</div>
						</div>
					</div>
				</div>
			</div>

			<!-- Edit Order Modal -->
			<div class="modal fade" id="editOrderModal" tabindex="-1" aria-labelledby="editOrderModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header bg-warning text-white">
							<h5 class="modal-title" id="editOrderModalLabel">
								<i class="fas fa-edit me-2"></i>
								Edit Order
							</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form id="editOrderForm">
								<div class="mb-3">
									<label for="editOrderId" class="form-label">Order ID</label>
									<input type="text" class="form-control" id="editOrderId" name="editOrderId" readonly>
								</div>
								<div class="mb-3">
									<label for="editCustomerName" class="form-label">Customer Name</label>
									<input type="text" class="form-control" id="editCustomerName" name="editCustomerName" required>
								</div>
								<div class="mb-3">
									<label for="editOrderDate" class="form-label">Order Date</label>
									<input type="date" class="form-control" id="editOrderDate" name="editOrderDate" required>
								</div>
								<div class="mb-3">
									<label for="editOrderStatus" class="form-label">Status</label>
									<select class="form-select" id="editOrderStatus" name="editOrderStatus" required>
										<option value="Pending">Pending</option>
										<option value="Processing">Processing</option>
										<option value="Shipped">Shipped</option>
										<option value="Delivered">Delivered</option>
										<option value="Completed">Completed</option>
										<option value="Cancelled">Cancelled</option>
									</select>
								</div>
								<button type="submit" class="btn btn-warning w-100">Save Changes</button>
							</form>
						</div>
					</div>
				</div>
			</div>

			<!-- Delete Order Modal -->
			<div class="modal fade" id="deleteOrderModal" tabindex="-1" aria-labelledby="deleteOrderModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header bg-danger text-white">
							<h5 class="modal-title" id="deleteOrderModalLabel">
								<i class="fas fa-trash me-2"></i>
								Confirm Order Deletion
							</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body text-center">
							<p>Are you sure you want to delete this order?</p>
							<p>
								<strong>
									Order ID:
									<span id="deleteOrderId"></span>
								</strong>
							</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
							<button type="button" class="btn btn-danger" id="confirmDeleteOrder">Delete</button>
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