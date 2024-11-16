<!-- Tách riêng Sidebar của trang Dashboard ra để tiện quản lý và sửa đổi -->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">

		<li class="nav-item">
			<a class="nav-link " href="Index.jsp">
				<i class="bi bi-grid"></i>
				<span>Dashboard</span>
			</a>
		</li>
		<!-- End Dashboard Nav -->

		<!--  
		<li class="nav-heading">Pages</li>
		-->

		<li class="nav-item">
			<a class="nav-link collapsed" href="Profile.jsp">
				<i class="bi bi-person"></i>
				<span>Profile</span>
			</a>
		</li>
		<!-- End Profile Page Nav -->

		<li class="nav-item">
			<a class="nav-link collapsed" href="Contact.jsp">
				<i class="bi bi-envelope"></i>
				<span>Contact</span>
			</a>
		</li>
		<!-- End Contact Page Nav -->

		<li class="nav-item">
			<a class="nav-link collapsed" href="Register.jsp">
				<i class="bi bi-card-list"></i>
				<span>Register</span>
			</a>
		</li>
		<!-- End Register Page Nav -->

		<li class="nav-item">
			<a class="nav-link collapsed" href="Login.jsp">
				<i class="bi bi-box-arrow-in-right"></i>
				<span>Login</span>
			</a>
		</li>
		<!-- End Login Page Nav -->

		<li class="nav-item">
			<a class="nav-link collapsed" href="Products.jsp">
				<i class="bi bi-file-earmark"></i>
				<span>Products</span>
			</a>
		</li>
		<!-- End Products Page Nav -->

	</ul>
</aside>
<!-- End Sidebar-->