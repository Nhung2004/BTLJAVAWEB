<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>Dashboard</title>
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

		<div class="pagetitle">
			<h1>Dashboard</h1>
			<nav>
				<ol class="breadcrumb">
					<li class="breadcrumb-item">
						<a href="Index.jsp">Home</a>
					</li>
					<li class="breadcrumb-item active">Dashboard</li>
				</ol>
			</nav>
		</div>
		<!-- End Page Title -->

		<section class="section dashboard">
			<div class="row">

				<!-- Left side columns -->
				<div class="col-lg-8">
					<div class="row">

						<!-- Sales Card -->
						<div class="col-xxl-4 col-md-6">
							<div class="card info-card sales-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown">
										<i class="bi bi-three-dots"></i>
									</a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li>
											<a class="dropdown-item" href="#">Today</a>
										</li>
										<li>
											<a class="dropdown-item" href="#">This Month</a>
										</li>
										<li>
											<a class="dropdown-item" href="#">This Year</a>
										</li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Sales
										<span>| Today</span>
									</h5>

									<div class="d-flex align-items-center">
										<div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-cart"></i>
										</div>
										<div class="ps-3">
											<h6>145</h6>
											<span class="text-success small pt-1 fw-bold">12%</span>
											<span class="text-muted small pt-2 ps-1">increase</span>

										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Sales Card -->

						<!-- Revenue Card -->
						<div class="col-xxl-4 col-md-6">
							<div class="card info-card revenue-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown">
										<i class="bi bi-three-dots"></i>
									</a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li>
											<a class="dropdown-item" href="#">Today</a>
										</li>
										<li>
											<a class="dropdown-item" href="#">This Month</a>
										</li>
										<li>
											<a class="dropdown-item" href="#">This Year</a>
										</li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Revenue
										<span>| This Month</span>
									</h5>

									<div class="d-flex align-items-center">
										<div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-currency-dollar"></i>
										</div>
										<div class="ps-3">
											<h6>$3,264</h6>
											<span class="text-success small pt-1 fw-bold">8%</span>
											<span class="text-muted small pt-2 ps-1">increase</span>

										</div>
									</div>
								</div>

							</div>
						</div>
						<!-- End Revenue Card -->

						<!-- Customers Card -->
						<div class="col-xxl-4 col-xl-12">

							<div class="card info-card customers-card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown">
										<i class="bi bi-three-dots"></i>
									</a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li>
											<a class="dropdown-item" href="#">Today</a>
										</li>
										<li>
											<a class="dropdown-item" href="#">This Month</a>
										</li>
										<li>
											<a class="dropdown-item" href="#">This Year</a>
										</li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Customers
										<span>| This Year</span>
									</h5>

									<div class="d-flex align-items-center">
										<div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
											<i class="bi bi-people"></i>
										</div>
										<div class="ps-3">
											<h6>1244</h6>
											<span class="text-danger small pt-1 fw-bold">12%</span>
											<span class="text-muted small pt-2 ps-1">decrease</span>

										</div>
									</div>

								</div>
							</div>

						</div>
						<!-- End Customers Card -->

						<div class="row">

							<!-- Revenue Card -->
							<div class="col-xxl-4 col-md-6">
								<div class="card info-card sales-card">
									<div class="filter">
										<a class="icon" href="#" data-bs-toggle="dropdown">
											<i class="bi bi-three-dots"></i>
										</a>
										<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
											<li class="dropdown-header text-start">
												<h6>Filter</h6>
											</li>
											<li>
												<a class="dropdown-item" href="#">Today</a>
											</li>
											<li>
												<a class="dropdown-item" href="#">This Month</a>
											</li>
											<li>
												<a class="dropdown-item" href="#">This Year</a>
											</li>
										</ul>
									</div>
									<div class="card-body">
										<h5 class="card-title">
											Total Revenue
											<span>| Today</span>
										</h5>
										<div class="d-flex align-items-center">
											<div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
												<i class="bi bi-cash"></i>
												<!-- Icon for revenue -->
											</div>
											<div class="ps-3">
												<h6>${totalRevenue}VNĐ</h6>
												<!-- Replace with revenue variable -->
												<span class="text-success small pt-1 fw-bold">12%</span>
												<span class="text-muted small pt-2 ps-1">increase</span>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- Total Orders Card -->
							<div class="col-xxl-4 col-md-6">
								<div class="card info-card sales-card">
									<div class="filter">
										<a class="icon" href="#" data-bs-toggle="dropdown">
											<i class="bi bi-three-dots"></i>
										</a>
										<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
											<li class="dropdown-header text-start">
												<h6>Filter</h6>
											</li>
											<li>
												<a class="dropdown-item" href="#">Today</a>
											</li>
											<li>
												<a class="dropdown-item" href="#">This Month</a>
											</li>
											<li>
												<a class="dropdown-item" href="#">This Year</a>
											</li>
										</ul>
									</div>
									<div class="card-body">
										<h5 class="card-title">
											Total Orders
											<span>| Today</span>
										</h5>
										<div class="d-flex align-items-center">
											<div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
												<i class="bi bi-file-earmark-text"></i>
												<!-- Icon for orders -->
											</div>
											<div class="ps-3">
												<h6>${totalOrders}</h6>
												<!-- Replace with total orders variable -->
												<span class="text-success small pt-1 fw-bold">5%</span>
												<span class="text-muted small pt-2 ps-1">increase</span>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- Total Products Sold Card -->
							<div class="col-xxl-4 col-md-6">
								<div class="card info-card sales-card">
									<div class="filter">
										<a class="icon" href="#" data-bs-toggle="dropdown">
											<i class="bi bi-three-dots"></i>
										</a>
										<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
											<li class="dropdown-header text-start">
												<h6>Filter</h6>
											</li>
											<li>
												<a class="dropdown-item" href="#">Today</a>
											</li>
											<li>
												<a class="dropdown-item" href="#">This Month</a>
											</li>
											<li>
												<a class="dropdown-item" href="#">This Year</a>
											</li>
										</ul>
									</div>
									<div class="card-body">
										<h5 class="card-title">
											Total Products Sold
											<span>| Today</span>
										</h5>
										<div class="d-flex align-items-center">
											<div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
												<i class="bi bi-box"></i>
												<!-- Icon for products -->
											</div>
											<div class="ps-3">
												<h6>${totalProductsSold}</h6>
												<!-- Replace with total products sold variable -->
												<span class="text-success small pt-1 fw-bold">8%</span>
												<span class="text-muted small pt-2 ps-1">increase</span>
											</div>
										</div>
									</div>
								</div>
							</div>



						</div>
						<div class="row">
							<div class="col-12">
								<h2>Order Management</h2>
								<div class="mb-3">
									<a href="add_order.jsp" class="btn btn-primary">Add New Order</a>
								</div>
								<div class="table-responsive">
									<table class="table table-bordered table-striped w-100">
										<thead>
											<tr>
												<th>Order ID</th>
												<th>Customer Name</th>
												<th>Total Amount</th>
												<th>Status</th>
												<th>Order Date</th>
												<th>Delivery Address</th>
												<th>Actions</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>001</td>
												<td>Nguyễn Hưng</td>
												<td>500,000 VNĐ</td>
												<td>Completed</td>
												<td>2024-11-05</td>
												<td>123 Đường ABC, Quận 1, TP.HCM</td>
												<td>
													<a href="view_order.jsp?id=001" class="btn btn-info btn-sm">View</a>
													<a href="edit_order.jsp?id=001" class="btn btn-warning btn-sm">Edit</a>
													<button class="btn btn-danger btn-sm" onclick="deleteOrder('001')">Delete</button>
												</td>
											</tr>
											<tr>
												<td>002</td>
												<td>Hải Ly</td>
												<td>300,000 VNĐ</td>
												<td>Pending</td>
												<td>2024-11-05</td>
												<td>456 Đường XYZ, Quận 3, TP.HCM</td>
												<td>
													<a href="view_order.jsp?id=002" class="btn btn-info btn-sm">View</a>
													<a href="edit_order.jsp?id=002" class="btn btn-warning btn-sm">Edit</a>
													<button class="btn btn-danger btn-sm" onclick="deleteOrder('002')">Delete</button>
												</td>
											</tr>
											<!-- Add more orders as needed -->
										</tbody>
									</table>
								</div>
							</div>
						</div>

						<script>
    function deleteOrder(orderId) {
        if (confirm('Are you sure you want to delete this order?')) {
            // Call the delete order API or redirect to the delete action
            window.location.href = `delete_order.jsp?id=${orderId}`;
        }
    }
</script>


						<!-- Reports -->
						<div class="col-12">
							<div class="card">

								<div class="filter">
									<a class="icon" href="#" data-bs-toggle="dropdown">
										<i class="bi bi-three-dots"></i>
									</a>
									<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
										<li class="dropdown-header text-start">
											<h6>Filter</h6>
										</li>

										<li>
											<a class="dropdown-item" href="#">Today</a>
										</li>
										<li>
											<a class="dropdown-item" href="#">This Month</a>
										</li>
										<li>
											<a class="dropdown-item" href="#">This Year</a>
										</li>
									</ul>
								</div>

								<div class="card-body">
									<h5 class="card-title">
										Reports
										<span>/Today</span>
									</h5>

									<!-- Line Chart -->
									<div id="reportsChart"></div>

									<script>
                    document.addEventListener("DOMContentLoaded", () => {
                      new ApexCharts(document.querySelector("#reportsChart"), {
                        series: [{
                          name: 'Sales',
                          data: [31, 40, 28, 51, 42, 82, 56],
                        }, {
                          name: 'Revenue',
                          data: [11, 32, 45, 32, 34, 52, 41]
                        }, {
                          name: 'Customers',
                          data: [15, 11, 32, 18, 9, 24, 11]
                        }],
                        chart: {
                          height: 350,
                          type: 'area',
                          toolbar: {
                            show: false
                          },
                        },
                        markers: {
                          size: 4
                        },
                        colors: ['#4154f1', '#2eca6a', '#ff771d'],
                        fill: {
                          type: "gradient",
                          gradient: {
                            shadeIntensity: 1,
                            opacityFrom: 0.3,
                            opacityTo: 0.4,
                            stops: [0, 90, 100]
                          }
                        },
                        dataLabels: {
                          enabled: false
                        },
                        stroke: {
                          curve: 'smooth',
                          width: 2
                        },
                        xaxis: {
                          type: 'datetime',
                          categories: ["2018-09-19T00:00:00.000Z", "2018-09-19T01:30:00.000Z", "2018-09-19T02:30:00.000Z", "2018-09-19T03:30:00.000Z", "2018-09-19T04:30:00.000Z", "2018-09-19T05:30:00.000Z", "2018-09-19T06:30:00.000Z"]
                        },
                        tooltip: {
                          x: {
                            format: 'dd/MM/yy HH:mm'
                          },
                        }
                      }).render();
                    });
                  </script>
									<!-- End Line Chart -->

								</div>

							</div>
						</div>
						<!-- End Reports -->

					</div>
				</div>
				<!-- End Left side columns -->

				<!-- Right side columns -->
				<div class="col-lg-4">

					<!-- Best Selling Products -->
					<div class="card">
						<div class="filter">
							<a class="icon" href="#" data-bs-toggle="dropdown">
								<i class="bi bi-three-dots"></i>
							</a>
							<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
								<li class="dropdown-header text-start">
									<h6>Filter</h6>
								</li>
								<li>
									<a class="dropdown-item" href="#">Today</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">This Month</a>
								</li>
								<li>
									<a class="dropdown-item" href="#">This Year</a>
								</li>
							</ul>
						</div>

						<div class="card-body">
							<h5 class="card-title">
								Best Selling Products
								<span>| This Month</span>
							</h5>

							<div class="activity">
								<div class="activity-item d-flex">
									<div class="activite-label">1. Romantic Book</div>
									<div class="activity-content">
										<span class="text-success fw-bold">100 sold</span>
									</div>
								</div>
								<!-- End activity item-->

								<div class="activity-item d-flex">
									<div class="activite-label">2. Action Book</div>
									<div class="activity-content">
										<span class="text-success fw-bold">85 sold</span>
									</div>
								</div>
								<!-- End activity item-->

								<div class="activity-item d-flex">
									<div class="activite-label">3. Math Book</div>
									<div class="activity-content">
										<span class="text-success fw-bold">70 sold</span>
									</div>
								</div>
								<!-- End activity item-->

								<div class="activity-item d-flex">
									<div class="activite-label">4. History Book</div>
									<div class="activity-content">
										<span class="text-success fw-bold">60 sold</span>
									</div>
								</div>
								<!-- End activity item-->

								<div class="activity-item d-flex">
									<div class="activite-label">5. Film Book</div>
									<div class="activity-content">
										<span class="text-success fw-bold">55 sold</span>
									</div>
								</div>
								<!-- End activity item-->

							</div>
						</div>
					</div>
					<!-- End Best Selling Products -->

				</div>
				<!-- End Right side columns -->

			</div>
		</section>

	</main>
	<!-- End #main -->

	<!-- ======= Footer ======= -->

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