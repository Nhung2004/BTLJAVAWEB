<!-- Tách riêng Sidebar của trang Dashboard ra để tiện quản lý và sửa đổi -->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">
	<ul class="sidebar-nav" id="sidebar-nav">
		<!-- Dashboard Nav -->
		<li class="nav-item">
			<a class="nav-link collapsed" href="${pageContext.request.contextPath}/Dashboard/Index.jsp">
				<i class="bi bi-house-door"></i>
				<span>Dashboard</span>
			</a>
		</li>
		<!-- End Dashboard Nav -->

		<!-- Account Management Nav -->
		<li class="nav-item">
			<a class="nav-link collapsed" href="/BTLJAVAWEB/ManageKhachHang"> 
				<i class="bi bi-people"></i>
				<span>Account Management</span>
			</a>
		</li>
		<!-- End Account Management Nav -->

		<!-- Products Management Page Nav -->
		<li class="nav-item">
			<a class="nav-link collapsed" href="/BTLJAVAWEB/ViewSanPham">
				<i class="bi bi-box"></i>
				<span>Product Management</span>
			</a>
		</li>
		<!-- End Products Management Page Nav -->

		<!-- Orders Management Page Nav -->
		<li class="nav-item">
			<a class="nav-link collapsed" href="/BTLJAVAWEB/ViewDonHang">
				<i class="bi bi-cart-check"></i>
				<span>Order Management</span>
			</a>
		</li>
		<!-- End Orders Management Page Nav -->

		<!-- Promotions Management Page Nav -->
		<li class="nav-item">
			<a class="nav-link collapsed" href="${pageContext.request.contextPath}/Dashboard/Promotion.jsp">
				<i class="bi bi-gift"></i>
				<span>Promotions</span>
			</a>
		</li>
		<!-- End Promotions Management Page Nav -->

		<!-- Register Page Nav -->
		<li class="nav-item">
			<a class="nav-link collapsed" href="${pageContext.request.contextPath}/Dashboard/Register.jsp">
				<i class="bi bi-person-add"></i>
				<span>Register</span>
			</a>
		</li>
		<!-- End Register Page Nav -->

		<!-- Login Page Nav -->
		<li class="nav-item">
			<a class="nav-link collapsed" href="${pageContext.request.contextPath}/Dashboard/Login.jsp">
				<i class="bi bi-box-arrow-in-right"></i>
				<span>Login</span>
			</a>
		</li>
		<!-- End Login Page Nav -->
	</ul>
</aside>

<!-- End Sidebar-->