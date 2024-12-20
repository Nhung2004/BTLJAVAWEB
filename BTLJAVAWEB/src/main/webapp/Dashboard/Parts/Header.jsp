<!-- Tách riêng Header của trang Dashboard ra để tiện quản lý và sửa đổi -->
<%@page import="model.KhachHang"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">

	<div class="d-flex align-items-center justify-content-between">
		<a href="${pageContext.request.contextPath}/Homepage/TrangChu.jsp" class="logo d-flex align-items-center">
			<img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="">
			<span class="d-none d-lg-block">Group13</span>
		</a>
		<i class="bi bi-list toggle-sidebar-btn"></i>
	</div>
	<!-- End Logo -->

	<div class="search-bar">
		<form class="search-form d-flex align-items-center" method="POST" action="#">
			<input type="text" name="query" placeholder="Search" title="Enter search keyword">
			<button type="submit" title="Search">
				<i class="bi bi-search"></i>
			</button>
		</form>
	</div>
	<!-- End Search Bar -->

	<nav class="header-nav ms-auto">
		<ul class="d-flex align-items-center">

			<li class="nav-item d-block d-lg-none">
				<a class="nav-link nav-icon search-bar-toggle " href="#">
					<i class="bi bi-search"></i>
				</a>
			</li>
			<!-- End Search Icon-->

			<li class="nav-item dropdown">

				<a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
					<i class="bi bi-bell"></i>
					<span class="badge bg-primary badge-number">4</span>
				</a>
				<!-- End Notification Icon -->

				<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
					<li class="dropdown-header">
						You have 4 new notifications
						<a href="#">
							<span class="badge rounded-pill bg-primary p-2 ms-2">View all</span>
						</a>
					</li>
					<li>
						<hr class="dropdown-divider">
					</li>

					<li class="notification-item">
						<i class="bi bi-exclamation-circle text-warning"></i>
						<div>
							<h4>Lorem Ipsum</h4>
							<p>Quae dolorem earum veritatis oditseno</p>
							<p>30 min. ago</p>
						</div>
					</li>

					<li>
						<hr class="dropdown-divider">
					</li>

					<li class="notification-item">
						<i class="bi bi-x-circle text-danger"></i>
						<div>
							<h4>Atque rerum nesciunt</h4>
							<p>Quae dolorem earum veritatis oditseno</p>
							<p>1 hr. ago</p>
						</div>
					</li>

					<li>
						<hr class="dropdown-divider">
					</li>

					<li class="notification-item">
						<i class="bi bi-check-circle text-success"></i>
						<div>
							<h4>Sit rerum fuga</h4>
							<p>Quae dolorem earum veritatis oditseno</p>
							<p>2 hrs. ago</p>
						</div>
					</li>

					<li>
						<hr class="dropdown-divider">
					</li>

					<li class="notification-item">
						<i class="bi bi-info-circle text-primary"></i>
						<div>
							<h4>Dicta reprehenderit</h4>
							<p>Quae dolorem earum veritatis oditseno</p>
							<p>4 hrs. ago</p>
						</div>
					</li>

					<li>
						<hr class="dropdown-divider">
					</li>
					<li class="dropdown-footer">
						<a href="#">Show all notifications</a>
					</li>

				</ul>
				<!-- End Notification Dropdown Items -->

			</li>
			<!-- End Notification Nav -->

			<li class="nav-item dropdown">

				<a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
					<i class="bi bi-chat-left-text"></i>
					<span class="badge bg-success badge-number">3</span>
				</a>
				<!-- End Messages Icon -->

				<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
					<li class="dropdown-header">
						You have 3 new messages
						<a href="#">
							<span class="badge rounded-pill bg-primary p-2 ms-2">View all</span>
						</a>
					</li>
					<li>
						<hr class="dropdown-divider">
					</li>

					<li class="message-item">
						<a href="#">
							<img src="../assets/img/dashboard/Profile.jpg" alt="" class="rounded-circle">
							<div>
								<h4>Maria Hudson</h4>
								<p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
								<p>4 hrs. ago</p>
							</div>
						</a>
					</li>
					<li>
						<hr class="dropdown-divider">
					</li>

					<li class="message-item">
						<a href="#">
							<img src="../assets/img/dashboard/Profile.jpg" alt="" class="rounded-circle">
							<div>
								<h4>Anna Nelson</h4>
								<p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
								<p>6 hrs. ago</p>
							</div>
						</a>
					</li>
					<li>
						<hr class="dropdown-divider">
					</li>

					<li class="message-item">
						<a href="#">
							<img src="../assets/img/dashboard/Profile.jpg" alt="" class="rounded-circle">
							<div>
								<h4>David Muldon</h4>
								<p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
								<p>8 hrs. ago</p>
							</div>
						</a>
					</li>
					<li>
						<hr class="dropdown-divider">
					</li>

					<li class="dropdown-footer">
						<a href="#">Show all messages</a>
					</li>

				</ul>
				<!-- End Messages Dropdown Items -->

			</li>
			<!-- End Messages Nav -->

			<li class="nav-item dropdown pe-3">
				<%
				Object                obj       = session.getAttribute("KhachHang");
				KhachHang             khachHang = null;

				if(obj != null)
				{
					khachHang = (KhachHang) obj; // Gán nếu không null
				}

				if(khachHang == null)
				{
				%>
				<a class="btn btn-primary" style="white-space: nowrap;" href="${pageContext.request.contextPath}/Homepage/DangNhap.jsp">Login</a>
				<%
				}
				else if("admin".equals(khachHang.getRole()))
				{
				// Nếu là admin
				%>
				<a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
					<img src="${pageContext.request.contextPath}/assets/img/dashboard/admin1.png" alt="Profile" class="rounded-circle">
					<span class="d-none d-md-block dropdown-toggle ps-2"><%=khachHang.getTendangnhap()%>
					</span>
				</a>

				<ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
					<li class="dropdown-header">
						<h6><%=khachHang.getTendangnhap()%></h6>
					</li>
					<li>
						<hr class="dropdown-divider">
					</li>
					<li>
						<a class="dropdown-item d-flex align-items-center" href="${pageContext.request.contextPath}/Dashboard/Profile.jsp">
							<i class="bi bi-person"></i>
							<span>My Profile</span>
						</a>
					</li>
					<li>
						<hr class="dropdown-divider">
					</li>
					<li>
						<hr class="dropdown-divider">
					</li>
					<li>
						<a class="dropdown-item d-flex align-items-center" href="${pageContext.request.contextPath}/dang-xuat">
							<i class="bi bi-box-arrow-right"></i>
							<span>Sign Out</span>
						</a>
					</li>
				</ul>
				<%
				}
				else
				{
				// Nếu là user thông thường
				%>
				<a class="btn btn-primary" href="${pageContext.request.contextPath}/Homepage/TrangChu.jsp"> Trang chủ </a>
				<%
				}
				%>
				<!-- End Profile Dropdown Items -->
			</li>
			<!-- End Profile Nav -->
		</ul>
	</nav>
	<!-- End Icons Navigation -->
</header>
<!-- End Header -->