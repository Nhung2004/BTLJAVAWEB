<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Users Management</title>
<meta content="" name="description">
<meta content="" name="keywords">

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
		<!-- Page Title -->
		<div class="pagetitle">
			<h1>Users management</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="Index.jsp">Home</a>
					</li>
					<li class="breadcrumb-item">Users management</li>

				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="account-management">
			<div class="container py-4">
				<h2 class="text-center mb-4">Account Management</h2>
				<!-- Add Account Button -->
				<div class="text-end mb-3">
					<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addAccountModal">
						<i class="fas fa-plus-circle me-2"></i>
						Add Account
					</button>
				</div>
				<!-- Account Table -->
				<table class="table table-hover align-middle bg-white shadow-sm rounded">
					<thead class="bg-primary text-white">
						<tr>
							<th>Username</th>
							<th>Password</th>
							<th>Role</th>
							<th class="text-center">Actions</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>john.doe@gmail.com</td>
							<td>********</td>
							<td>
								<span class="badge bg-success text-uppercase">Admin</span>
							</td>
							<td class="text-center">
								<button class="btn btn-sm btn-outline-success me-2" data-bs-toggle="modal" data-bs-target="#editAccountModal">
									<i class="fas fa-edit"></i>
									Edit
								</button>
								<button class="btn btn-sm btn-outline-danger" data-bs-toggle="modal" data-bs-target="#deleteAccountModal">
									<i class="fas fa-trash-alt"></i>
									Delete
								</button>
							</td>
						</tr>
						<tr>
							<td>alex.ray@gmail.com</td>
							<td>********</td>
							<td>
								<span class="badge bg-primary text-uppercase">User</span>
							</td>
							<td class="text-center">
								<button class="btn btn-sm btn-outline-success me-2" data-bs-toggle="modal" data-bs-target="#editAccountModal">
									<i class="fas fa-edit"></i>
									Edit
								</button>
								<button class="btn btn-sm btn-outline-danger" data-bs-toggle="modal" data-bs-target="#deleteAccountModal">
									<i class="fas fa-trash-alt"></i>
									Delete
								</button>
							</td>
						</tr>
					</tbody>
				</table>
			</div>

			<!-- Add Account Modal -->
			<div class="modal fade" id="addAccountModal" tabindex="-1" aria-labelledby="addAccountModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header bg-primary text-white">
							<h5 class="modal-title" id="addAccountModalLabel">
								<i class="fas fa-user-plus me-2"></i>
								Add New Account
							</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form id="addAccountForm">
								<div class="mb-3">
									<label for="addUsername" class="form-label">Username</label>
									<input type="email" class="form-control" id="addUsername" placeholder="Enter email" required>
								</div>
								<div class="mb-3">
									<label for="addPassword" class="form-label">Password</label>
									<input type="password" class="form-control" id="addPassword" placeholder="Enter password" required>
								</div>
								<div class="mb-3">
									<label for="addRole" class="form-label">Role</label>
									<select class="form-select" id="addRole">
										<option value="User">User</option>
										<option value="Admin">Admin</option>
									</select>
								</div>
								<button type="submit" class="btn btn-primary w-100">Add Account</button>
							</form>
						</div>
					</div>
				</div>
			</div>

			<!-- Edit Account Modal -->
			<div class="modal fade" id="editAccountModal" tabindex="-1" aria-labelledby="editAccountModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header bg-primary text-white">
							<h5 class="modal-title" id="editAccountModalLabel">
								<i class="fas fa-user-edit me-2"></i>
								Edit Account
							</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body">
							<form id="editAccountForm">
								<div class="mb-3">
									<label for="editUsername" class="form-label">Username</label>
									<input type="email" class="form-control" id="editUsername" placeholder="Enter email" required>
								</div>
								<div class="mb-3">
									<label for="editPassword" class="form-label">Password</label>
									<input type="password" class="form-control" id="editPassword" placeholder="Enter password" required>
								</div>
								<div class="mb-3">
									<label for="editRole" class="form-label">Role</label>
									<select class="form-select" id="editRole">
										<option value="User">User</option>
										<option value="Admin">Admin</option>
									</select>
								</div>
								<button type="submit" class="btn btn-primary w-100">Save Changes</button>
							</form>
						</div>
					</div>
				</div>
			</div>

			<!-- Delete Account Modal -->
			<div class="modal fade" id="deleteAccountModal" tabindex="-1" aria-labelledby="deleteAccountModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header bg-danger text-white">
							<h5 class="modal-title" id="deleteAccountModalLabel">
								<i class="fas fa-exclamation-triangle me-2"></i>
								Confirm Deletion
							</h5>
							<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
						</div>
						<div class="modal-body text-center">
							<p>Are you sure you want to delete this account?</p>
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

	<!-- ======= Footer ======= -->
	<footer id="footer" class="footer">
		<div class="copyright">
			&copy; Copyright
			<strong>
				<span>NiceAdmin</span>
			</strong>
			. All Rights Reserved
		</div>
		<div class="credits">
			<!-- All the links in the footer should remain intact. -->
			<!-- You can delete the links only if you purchased the pro version. -->
			<!-- Licensing information: https://bootstrapmade.com/license/ -->
			<!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
			Designed by
			<a href="https://bootstrapmade.com/">BootstrapMade</a>
		</div>
	</footer>
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