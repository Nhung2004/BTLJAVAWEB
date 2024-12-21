<%@page import="model.KhachHang"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<header class="header trans_300">
	<!-- Top Navigation -->
	<div class="top_nav">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="top_nav_left">Free shipping for all orders over 199.000 VNĐ</div>
				</div>
				<div class="col-md-8 text-right">
					<div class="top_nav_right">
						<ul class="top_nav_menu">
							<li class="account">
								<a href="#">
									My Account
									<i class="fa fa-angle-down"></i>
								</a>
								                    <%
	               		KhachHang khachHang = (KhachHang) session.getAttribute("KhachHang");
						if(khachHang == null){		
					%>					
								<ul class="account_selection">
									<li>
										<a href="${pageContext.request.contextPath}/Homepage/DangNhap.jsp">
											<i class="fa fa-sign-in" aria-hidden="true"></i>
											Sign In
										</a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath}/Homepage/DangKy.jsp">
											<i class="fa fa-user-plus" aria-hidden="true"></i>
											Register
										</a>
									</li>
								</ul>
								<%
								}
								else if("user".equals(khachHang.getRole()))
								{
								// Nếu là user
								%>
								<ul class="account_selection">																
									<li>
									    <a href="${pageContext.request.contextPath}/Homepage/ProfileClient.jsp">
									        <i class="fa fa-user" aria-hidden="true"></i>
									        Profile
									    </a>
									</li>
									<li>
									    <a href="${pageContext.request.contextPath}/Homepage/ChangeAvatar.jsp">
									        <i class="fa fa-image" aria-hidden="true"></i>
									        Change avatar
									    </a>
									</li>
									<li>
									    <a href="${pageContext.request.contextPath}/Homepage/ChangePassword.jsp">
									        <i class="fa fa-key" aria-hidden="true"></i>
									        Change password
									    </a>
									</li>
									<li>
										<a href="${pageContext.request.contextPath}/dang-xuat">
											<i class="fa fa-sign-in" aria-hidden="true"></i>
											Sign Out
										</a>
									</li>
								</ul>
								<%
								}
								else
								{
								// Nếu là admin
								%>
								<a class="btn btn-primary" href="${pageContext.request.contextPath}/Dashboard/Index.jsp"> Trang chủ </a>
								<%
								}
								%>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Main Navigation -->

	<div class="main_nav_container">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-right">
					<div class="logo_container">
						<a href="${pageContext.request.contextPath}/Homepage/Home.jsp">
							Group
							<span>13</span>
						</a>
					</div>
					<nav class="navbar">
						<ul class="navbar_menu">
							<li>
								<a href="${pageContext.request.contextPath}/Homepage/Home.jsp">home</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/Homepage/TheLoai.jsp">shop</a>
							</li>
							<li>
								<a href="#">promotion</a>
							</li>
							<li>
								<a href="${pageContext.request.contextPath}/Homepage/LienHe.jsp">contact</a>
							</li>
						</ul>
						<ul class="navbar_user">
							<li>
								<!-- Tìm kiếm -->
								<form action="Search" method="get" style="display: inline;">
									<input type="text" name="query" placeholder="Search..." style="padding: 5px; border-radius: 4px; border: 1px solid #ccc;">
									<button type="submit" style="background-color: transparent; border: none; cursor: pointer;">
										<i class="fa fa-search" aria-hidden="true"></i>
									</button>
								</form>
							</li>
							<li class="checkout">
								<a href="${pageContext.request.contextPath}/Homepage/GioHang.jsp">
									<i class="fa fa-shopping-cart" aria-hidden="true"></i>
									<span id="checkout_items" class="checkout_items">${totalQuantity}</span>
								</a>
							</li>
						</ul>
						<div class="hamburger_container">
							<i class="fa fa-bars" aria-hidden="true"></i>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>
<style>
/* Đặt chiều rộng mặc định cho menu */
.top_nav_menu .account .account_selection {
    width: 150px; /* Chiều rộng mặc định */
    transition: all 0.3s ease; /* Hiệu ứng mượt */
    overflow: hidden; /* Ẩn phần thừa nếu có */
}

/* Khi di chuột vào menu, mở rộng chiều rộng */
.top_nav_menu .account:hover .account_selection {
    width: 220px; /* Chiều rộng khi di chuột */
}

/* Căn chỉnh các mục trong menu */
.top_nav_menu .account .account_selection li a {
    white-space: nowrap; /* Ngăn xuống dòng */
    display: block;
    padding: 5px 10px;
}

</style>
</header>

<div class="fs_menu_overlay"></div>
<div class="hamburger_menu">
	<div class="hamburger_close">
		<i class="fa fa-times" aria-hidden="true"></i>
	</div>
	<div class="hamburger_menu_content text-right">
		<ul class="menu_top_nav">
			<li class="menu_item has-children">
				<a href="#">
					My Account
					<i class="fa fa-angle-down"></i>
				</a>
				<ul class="menu_selection">
					<li>
						<a href="${pageContext.request.contextPath}/Homepage/DangNhap.jsp">
							<i class="fa fa-sign-in" aria-hidden="true"></i>
							Sign In
						</a>
					</li>
					<li>
						<a href="${pageContext.request.contextPath}/Homepage/DangKy.jsp">
							<i class="fa fa-user-plus" aria-hidden="true"></i>
							Register
						</a>
					</li>
				</ul>
			</li>
			<li class="menu_item">
				<a href="${pageContext.request.contextPath}/Homepage/Home.jsp">home</a>
			</li>
			<li class="menu_item">
				<a href="${pageContext.request.contextPath}/Homepage/TheLoai.jsp">shop</a>
			</li>
			<li class="menu_item">
				<a href="#">promotion</a>
			</li>
			<li class="menu_item">
				<a href="${pageContext.request.contextPath}/Homepage/LienHe.jsp">contact</a>
			</li>
		</ul>
	</div>
</div>