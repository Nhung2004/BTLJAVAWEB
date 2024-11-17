<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<header id="header" class="header d-flex align-items-center fixed-top">
	<div class="container-fluid container-xl position-relative d-flex align-items-center justify-content-between">

		<!-- ======= Logo ======= -->
		<a href="${pageContext.request.contextPath}/Dashboard/Index.jsp" class="logo d-flex align-items-center me-auto me-lg-0">
			<h1 class="sitename">G13</h1>
			<span></span>
		</a>

		<nav id="navmenu" class="navmenu">
			<ul>
				<li>
					<a href="${pageContext.request.contextPath}/Homepage/TrangChu.jsp" class="active">
						Home
						<br>
					</a>
				</li>

				<li class="dropdown">
					<a href="#">
						<span>Book Categories</span>
						<i class="bi bi-chevron-down toggle-dropdown"></i>
					</a>
					<ul>
						<li class="dropdown">
							<a href="#">
								<span>Best Sellers</span>
								<i class="bi bi-chevron-down toggle-dropdown"></i>
							</a>
							<ul>
								<li>
									<a href="${pageContext.request.contextPath}/Homepage/BestSeller.jsp">2024 Best Sellers</a>
								</li>

								<li>
									<a href="#">Best Offers</a>
								</li>
							</ul>
						</li>

						<li class="dropdown">
							<a href="#">
								<span>Recommend</span>
								<i class="bi bi-chevron-down toggle-dropdown"></i>
							</a>
							<ul>
								<li>
									<a href="#">Best Books for 2024</a>
								</li>

								<li>
									<a href="#">G13 Monthly Picks</a>
								</li>

								<li>
									<a href="#">G13 Exclusive</a>
								</li>

								<li>
									<a href="#">G13 Books of the Years</a>
								</li>
							</ul>
						</li>

						<li class="dropdown">
							<a href="#">
								<span>Customer Favourites</span>
								<i class="bi bi-chevron-down toggle-dropdown"></i>
							</a>
							<ul>
								<li>
									<a href="#">New Release</a>
								</li>

								<li>
									<a href="#">Comming Soon</a>
								</li>

								<li>
									<a href="#">Pre-order</a>
								</li>

								<li>
									<a href="#">Special Editions</a>
								</li>
							</ul>
						</li>

						<li class="dropdown">
							<a href="#">
								<span>Top Gernes</span>
								<i class="bi bi-chevron-down toggle-dropdown"></i>
							</a>
							<ul>
								<li>
									<a href="#">Foreign</a>
								</li>

								<li>
									<a href="#">Information and Technology</a>
								</li>

								<li>
									<a href="#">Life Skills</a>
								</li>

								<li>
									<a href="#">Light Novels</a>
								</li>

								<li>
									<a href="#">Literatures</a>
								</li>

								<li>
									<a href="#">Novels</a>
								</li>
							</ul>
						</li>

						<li class="dropdown">
							<a href="#">
								<span>Browse</span>
								<i class="bi bi-chevron-down toggle-dropdown"></i>
							</a>
							<ul>
								<li>
									<a href="#">Books List by Gernes</a>
								</li>

								<li>
									<a href="#">Books List by Authors</a>
								</li>
							</ul>
						</li>
					</ul>
				</li>

				<li>
					<a href="${pageContext.request.contextPath}/Homepage/TrangChu.jsp#about">About us</a>
				</li>

				<li>
					<a href="${pageContext.request.contextPath}/Homepage/TrangChu.jsp#services">Top gernes</a>
				</li>

				<li>
					<a href="${pageContext.request.contextPath}/Homepage/TrangChu.jsp#portfolio">Preview</a>
				</li>

				<li>
					<a href="${pageContext.request.contextPath}/Homepage/TrangChu.jsp#team">Events</a>
				</li>

				<li>
					<a href="${pageContext.request.contextPath}/Homepage/TrangChu.jsp#subscription-plans">Subscription</a>
				</li>

				<li>
					<a href="${pageContext.request.contextPath}/Homepage/TrangChu.jsp#contact">Contact</a>
				</li>
			</ul>
			<i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
		</nav>

		<a href="${pageContext.request.contextPath}/Homepage/DangKy.jsp" class="btn-getstarted" style="padding: 6px 12px; font-size: 0.9rem;">Register</a>
		<a href="${pageContext.request.contextPath}/Homepage/DangNhap.jsp" class="btn-getstarted" style="padding: 6px 12px; font-size: 0.9rem;">Login</a>

		<a href="${pageContext.request.contextPath}/Homepage/GioHang.jsp" class="btn-getstarted" style="padding: 6px 12px; font-size: 0.9rem;">
			<i class="bi bi-cart-fill" style="font-size: 1.3rem;"></i>
		</a>
	</div>
</header>