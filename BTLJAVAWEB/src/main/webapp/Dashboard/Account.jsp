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
</head>
<body>
	<!-- Tách riêng header ra file Header.jsp -->
	<jsp:include page="Parts/Header.jsp" />

	<!-- Tách riêng sidebar ra file Sidebar.jsp -->
	<jsp:include page="Parts/Sidebar.jsp" />

	<main id="main" class="main">
		<!-- Page Title -->
		<div class="pagetitle">
			<h1>Account management</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="Index.jsp">Home</a>
					</li>
					<li class="breadcrumb-item">Account Management</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="account-management">
			<!-- Account Management Table -->
			<div class="row">
				<div class="col-12">
					<div class="table-responsive">
						<div class="card card-block card-stretch card-height">
							<div class="card-header d-flex justify-content-between align-items-center mb-0">
								<div class="header-title">
									<h5 class="card-title">Accounts Management</h5>
								</div>
								<div class="card-header-toolbar d-flex justify-content-between align-items-center">
									<!-- Search Bar on the Left -->
									<div class="d-flex align-items-center me-3">
										<label class="me-2 mb-0">Search:</label>
										<input type="search" class="form-control form-control-sm" placeholder="Search Accounts..." aria-controls="datatable">
									</div>
									<!-- "Add Account" Button on the Right -->
									<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#addAccountModal">
										<i class="fas fa-plus-circle me-2"></i>
										Add Account
									</button>
								</div>
							</div>
							<div class="card-body">
								<!-- Account Table -->
								<div class="table-responsive">
									<table class="table mb-0 table-borderless table-striped">
										<thead>
											<tr>
												<!-- Center-align column titles -->
												<th scope="col" class="text-center" style="border-right: 1px solid #ddd;">Username</th>
												<th scope="col" class="text-center" style="border-right: 1px solid #ddd;">Password</th>
												<th scope="col" class="text-center" style="border-right: 1px solid #ddd;">Role</th>
												<th scope="col" class="text-center" style="border-right: 1px solid #ddd;">Action</th>
											</tr>
										</thead>
										<tbody>
											<!-- Account 001 -->
											<jsp:include page="Parts/AccountRow.jsp">
												<jsp:param name="username" value="john.doe@gmail.com" />
												<jsp:param name="password" value="********" />
												<jsp:param name="role" value="Admin" />
												<jsp:param name="roleClass" value="bg-success" />
											</jsp:include>

											<!-- Account 002 -->
											<jsp:include page="Parts/AccountRow.jsp">
												<jsp:param name="username" value="alex.ray@gmail.com" />
												<jsp:param name="password" value="********" />
												<jsp:param name="role" value="User" />
												<jsp:param name="roleClass" value="bg-primary" />
											</jsp:include>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
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

			<!-- Delete Account Model -->
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