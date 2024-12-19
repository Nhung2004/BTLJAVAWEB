<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="java.sql.*"%>
<%@ page import="database.KhachHangDAO"%>
<%@ page import="model.KhachHang"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords" content="">
<title>Users Management</title>

<!-- Favicons -->
<link href="${pageContext.request.contextPath}/assets/img/favicon.png" rel="icon">
<link href="${pageContext.request.contextPath}/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/simple-datatables/style.css" rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${pageContext.request.contextPath}/assets/css/NiceAdminMain.css" rel="stylesheet">
</head>
<body>
	<!-- Include Header and Sidebar -->
	<jsp:include page="Parts/Header.jsp" />
	<jsp:include page="Parts/Sidebar.jsp" />

	<!-- Nội dung chính (Account Management) -->
	<main id="main" class="main">
		<div class="pagetitle">
			<h1>Users Management</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="Index.jsp">Home</a>
					</li>
					<li class="breadcrumb-item active">Users Management</li>
				</ol>
			</nav>
		</div>

		<section class="account-management">
			<div class="container py-4">
				<h2 class="text-center mb-4">Users Management</h2>

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
							<th>Customer ID</th>
							<th>Username</th>
							<th>Password</th>
							<th>Phone</th>
							<th>Email</th>
							<th class="text-center">Actions</th>
						</tr>
					</thead>
					<%
					ArrayList<KhachHang> khachHangs = null;
					try
					{
						// Create DAO and fetch list of customers
						KhachHangDAO khDAO = new KhachHangDAO();
						khachHangs = khDAO.selectAll(); // Call selectAll to fetch all customers
					}
					catch (Exception e)
					{
						e.printStackTrace();
					}
					%>
					<tbody id="accountTableBody">
					<%
					
					try {
					    KhachHangDAO khDAO = new KhachHangDAO();
					 
					} catch (Exception e) {
					    e.printStackTrace();
					}
					%>
					
						<%
						if(khachHangs != null)
						{
							for (KhachHang kh : khachHangs)
							{
						%>
						<tr>
							<td><%=kh.getMakhachhang()%></td>
							<td><%=kh.getTendangnhap()%></td>
							<td><%=kh.getMatkhau()%></td>
							<td><%=kh.getSodienthoai()%></td>
							<td><%=kh.getEmail()%></td>
							<td class="text-center">
							    <button type="button" class="btn btn-sm btn-outline-danger" data-bs-toggle="modal" data-bs-target="#deleteAccountModal_<%=kh.getMakhachhang()%>">
							        <i class="bi bi-trash"></i>
							    </button>
							    <button type="button" class="btn btn-sm btn-outline-success" data-bs-toggle="modal" data-bs-target="#editAccountModal_<%=kh.getMakhachhang()%>">
							        <i class="bi bi-pencil-square"></i>
							    </button>
							</td>

						</tr>

						<!-- Modal Delete -->
						<div class="modal fade" id="deleteAccountModal_<%=kh.getMakhachhang()%>" tabindex="-1" aria-labelledby="deleteAccountModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header bg-danger text-white">
										<h5 class="modal-title">
											<i class="fas fa-exclamation-triangle me-2"></i>
											Confirm deletion
										</h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
									</div>
									<div class="modal-body text-center">
										<p>
											Are you sure you want to delete your account:
											<strong><%=kh.getTendangnhap()%></strong>
											?
										</p>
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
										<!-- Form gửi yêu cầu xóa tài khoản -->
										<form action="Quanlytaikhoan" method="POST" id="deleteAccountForm_<%=kh.getMakhachhang()%>">
											<input type="hidden" name="makhachhang" value="<%=kh.getMakhachhang()%>" />
											<input type="hidden" name="chucNang" value="Xoa" />
											<button type="submit" class="btn btn-danger">Agree</button>
										</form>
									</div>
								</div>
							</div>
						</div>


						<!-- Modal Edit -->
						<div class="modal fade" id="editAccountModal_<%=kh.getMakhachhang()%>" tabindex="-1" aria-labelledby="editAccountModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header bg-primary text-white">
										<h5 class="modal-title">
											<i class="fas fa-user-edit me-2"></i>
											Edit Account
										</h5>
										<button type="button" class="btn-close" data-bs-dismiss="modal"></button>
									</div>
									<div class="modal-body">
										<form action="Quanlytaikhoan" method="post">
											<input type="hidden" name="makhachhang" value="<%=kh.getMakhachhang()%>">
											<div class="mb-3">
												<label for="editUsername" class="form-label">Username</label>
												<input type="text" class="form-control" name="tendangnhap" value="<%=kh.getTendangnhap()%>" required>
											</div>
											<div class="mb-3">
												<input type="password" class="form-control" name="matkhau" value="<%=kh.getMatkhau()%>" required>
											</div>
											<div class="mb-3">
												<label for="sodienthoai" class="form-label">Phone</label>
												<input type="number" class="form-control" name="sodienthoai" value="<%=kh.getSodienthoai()%>" required>
											</div>
											<div class="mb-3">
												<label for="email" class="form-label">Email</label>
												<input type="email" class="form-control" name="email" value="<%=kh.getEmail()%>" required>
											</div>
											<button type="submit" name="chucNang" value="Sua" class="btn btn-primary w-100">Save Changes</button>
										</form>
									</div>
								</div>
							</div>
						</div>
						<%
						}
						}
						%>
					</tbody>
				</table>
				<div class="d-flex justify-content-center">
			</div>
		</section>
	</main>
	<!-- Modal Add Account -->
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
					<form action="Quanlytaikhoan" method="POST">
						<input type="hidden" name="chucNang" value="Them">
						<div class="mb-3">
							<label for="newmakhachhang" class="form-label">Customer id</label>
							<input type="text" class="form-control" name="makhachhang" id="newmakhachhang" required>
						</div>
						<div class="mb-3">
							<label for="newUsername" class="form-label">Username</label>
							<input type="text" class="form-control" name="tendangnhap" id="newUsername" required>
						</div>
						<div class="mb-3">
							<label for="newPassword" class="form-label">Password</label>
							<input type="password" class="form-control" name="matkhau" id="newPassword" required>
						</div>
						<div class="mb-3">
							<label for="sodienthoai" class="form-label">Phone</label>
							<input type="number" class="form-control" name="sodienthoai" id="sodienthaoi" required>
						</div>
						<div class="mb-3">
							<label for="email" class="form-label">Email</label>
							<input type="email" class="form-control" name="email" id="email" required>
						</div>
						<button type="submit" class="btn btn-primary w-100">Add Account</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Back to Top Button -->
	<a href="#" class="back-to-top d-flex align-items-center justify-content-center">
		<i class="bi bi-arrow-up-short"></i>
	</a>

	<!-- Footer -->
	<footer id="footer" class="footer">
		<div class="credits">
			Designed by
			<a href="https://bootstrapmade.com/">BootstrapMade</a>
		</div>
		<div class="copyright">
			&copy; Copyright
			<strong>
				<span>NiceAdmin</span>
			</strong>
			. All Rights Reserved
		</div>
	</footer>



	<!-- Back to Top Button -->
	<a href="#" class="back-to-top d-flex align-items-center justify-content-center">
		<i class="bi bi-arrow-up-short"></i>
	</a>

	<!-- Vendor JS Files -->
	<script>
    document.addEventListener("DOMContentLoaded", function () {
        const rowsPerPage = 5; // Số dòng mỗi trang
        const tableBody = document.getElementById("accountTableBody");
        const rows = tableBody.getElementsByTagName("tr");
        const totalRows = rows.length;
        const totalPages = Math.ceil(totalRows / rowsPerPage);

        const pagination = document.createElement("ul");
        pagination.className = "pagination";

        function renderTable(page) {
            const start = (page - 1) * rowsPerPage;
            const end = start + rowsPerPage;

            // Hiển thị các dòng tương ứng
            for (let i = 0; i < totalRows; i++) {
                rows[i].style.display = i >= start && i < end ? "" : "none";
            }
        }

        function renderPagination() {
            for (let i = 1; i <= totalPages; i++) {
                const li = document.createElement("li");
                li.className = "page-item";
                li.innerHTML = `<a class="page-link" href="#">${i}</a>`;

                li.addEventListener("click", function (e) {
                    e.preventDefault();
                    renderTable(i);
                    document.querySelectorAll(".page-item").forEach(el => el.classList.remove("active"));
                    li.classList.add("active");
                });

                if (i === 1) li.classList.add("active"); // Trang đầu tiên được chọn mặc định
                pagination.appendChild(li);
            }
        }

        const paginationContainer = document.createElement("nav");
        paginationContainer.appendChild(pagination);
        tableBody.parentElement.insertAdjacentElement("afterend", paginationContainer);

        renderTable(1); // Hiển thị trang đầu tiên
        renderPagination();
    });
</script>
	
	<script src="${pageContext.request.contextPath}/assets/vendor/apexcharts/apexcharts.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/chart.js/chart.umd.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/echarts/echarts.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/quill/quill.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/simple-datatables/simple-datatables.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/tinymce/tinymce.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/php-email-form/validate.js"></script>

	<!-- Template Main JS File -->
	<script src="${pageContext.request.contextPath}/assets/js/NiceAdminMain.js"></script>
</body>

</html>