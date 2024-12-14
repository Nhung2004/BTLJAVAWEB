<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Colo Shop</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/bootstrap4/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/vendor/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/main_styles.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/responsive.css">

    <script src="${pageContext.request.contextPath}/assets/js/cart.js"></script>

</head>

<body>
	<div class="super_container">
		<!-- Tách riêng header ra file Header.jsp -->
		<jsp:include page="Header.jsp" />

		<!-- Slider -->
		<div class="main_slider" style="background-image: url(${pageContext.request.contextPath}/assets/img/coloshop/slider_1.jpg)">
			<div class="container fill_height">
				<div class="row align-items-center fill_height">
					<div class="col">
						<div class="main_slider_content">
							<h6>Spring / Summer Collection 2017</h6>
							<h1>Get up to 30% Off New Arrivals</h1>
							<div class="red_button shop_now_button">
								<a href="#">shop now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Book categories -->
		<div class="banner">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<div class="banner_item align-items-center" style="background-image: url(${pageContext.request.contextPath}/assets/img/coloshop/banner_1.jpg)">
							<div class="banner_category">
								<a href="${pageContext.request.contextPath}/Homepage/TheLoai.jsp">Foreigns</a>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="banner_item align-items-center" style="background-image: url(${pageContext.request.contextPath}/assets/img/coloshop/banner_2.jpg)">
							<div class="banner_category">
								<a href="${pageContext.request.contextPath}/Homepage/TheLoai.jsp">ITs</a>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="banner_item align-items-center" style="background-image: url(${pageContext.request.contextPath}/assets/img/coloshop/banner_2.jpg)">
							<div class="banner_category">
								<a href="${pageContext.request.contextPath}/Homepage/TheLoai.jsp">Life Skills</a>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="banner_item align-items-center" style="background-image: url(${pageContext.request.contextPath}/assets/img/coloshop/banner_2.jpg)">
							<div class="banner_category">
								<a href="${pageContext.request.contextPath}/Homepage/TheLoai.jsp">Light Novels</a>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="banner_item align-items-center" style="background-image: url(${pageContext.request.contextPath}/assets/img/coloshop/banner_2.jpg)">
							<div class="banner_category">
								<a href="${pageContext.request.contextPath}/Homepage/TheLoai.jsp">Literatures</a>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="banner_item align-items-center" style="background-image: url(${pageContext.request.contextPath}/assets/img/coloshop/banner_3.jpg)">
							<div class="banner_category">
								<a href="${pageContext.request.contextPath}/Homepage/TheLoai.jsp">Novels</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- New Arrivals -->
		<div class="new_arrivals">
    <div class="container">
        <!-- Tiêu đề -->
        <div class="row mb-4">
            <div class="col text-center">
                <h2 class="section_title new_arrivals_title">New Arrivals</h2>
            </div>
        </div>

        <!-- Bộ lọc -->
        <div class="row mb-4">
            <div class="col text-center">
                <ul class="arrivals_grid_sorting list-inline">
                    <li class="list-inline-item"><button class="btn btn-outline-primary active" data-filter="*">All</button></li>
                    <li class="list-inline-item"><button class="btn btn-outline-primary" data-filter=".foreign">Foreign</button></li>
                    <li class="list-inline-item"><button class="btn btn-outline-primary" data-filter=".it">IT</button></li>
                    <li class="list-inline-item"><button class="btn btn-outline-primary" data-filter=".lifeskill">Life Skill</button></li>
                    <li class="list-inline-item"><button class="btn btn-outline-primary" data-filter=".lightnovel">Light Novel</button></li>
                    <li class="list-inline-item"><button class="btn btn-outline-primary" data-filter=".literature">Literature</button></li>
                    <li class="list-inline-item"><button class="btn btn-outline-primary" data-filter=".novel">Novel</button></li>
                </ul>
            </div>
        </div>

        <!-- Danh sách sản phẩm -->
        <div class="row g-4">
            <c:if test="${not empty listP}">
                <c:forEach items="${listP}" var="item">
                    <div class="col-lg-3 col-md-4 col-sm-6">
                        <div class="card product-item shadow-sm h-100">
                            <img src="${item.imageProduct}" class="card-img-top" alt="${item.nameProduct}" style="height: 220px; object-fit: contain;">
                            <div class="card-body text-center d-flex flex-column justify-content-between">
                                <h6 class="card-title text-truncate">
                                    <a href="${pageContext.request.contextPath}/Homepage/SanPham.jsp" class="text-decoration-none">${item.descriptions}</a>
                                </h6>
                                <p class="card-text text-success fw-bold">$${item.priceProduct}</p>
                                <form action="${pageContext.request.contextPath}/addGioHang" method="post">
                                    <input type="hidden" name="productId" value="${item.idProduct}">
                                    <input type="hidden" name="productName" value="${item.nameProduct}">
                                    <input type="hidden" name="price" value="${item.priceProduct}">
                                    <input type="hidden" name="quantity" value="1">
                                    <input type="hidden" name="image" value="${item.imageProduct}">
                                    <button type="submit" class="btn btn-primary w-100">Add to Cart</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </c:if>
            <c:if test="${empty listP}">
                <div class="col text-center">
                    <p class="text-muted">No products available</p>
                </div>
            </c:if>
        </div>
    </div>
</div>


		<div class="deal_ofthe_week">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-6">
						<div class="deal_ofthe_week_img">
							<img src="${pageContext.request.contextPath}/assets/img/coloshop/deal_ofthe_week.png" alt="">
						</div>
					</div>
					<div class="col-lg-6 text-right deal_ofthe_week_col">
						<div class="deal_ofthe_week_content d-flex flex-column align-items-center float-right">
							<div class="section_title">
								<h2>Deal Of The Week</h2>
							</div>
							<ul class="timer">
								<li class="d-inline-flex flex-column justify-content-center align-items-center">
									<div id="day" class="timer_num">03</div>
									<div class="timer_unit">Day</div>
								</li>
								<li class="d-inline-flex flex-column justify-content-center align-items-center">
									<div id="hour" class="timer_num">15</div>
									<div class="timer_unit">Hours</div>
								</li>
								<li class="d-inline-flex flex-column justify-content-center align-items-center">
									<div id="minute" class="timer_num">45</div>
									<div class="timer_unit">Mins</div>
								</li>
								<li class="d-inline-flex flex-column justify-content-center align-items-center">
									<div id="second" class="timer_num">23</div>
									<div class="timer_unit">Sec</div>
								</li>
							</ul>
							<div class="red_button deal_ofthe_week_button">
								<a href="#">shop now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="best_sellers">
			<div class="container">
				<div class="row">
					<div class="col text-center">
						<div class="section_title new_arrivals_title">
							<h2>Best Sellers</h2>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col">
						<div class="product_slider_container">
							<div class="owl-carousel owl-theme product_slider">

								<div class="owl-item product_slider_item">
									<div class="product-item">
										<div class="product">
											<div class="product_image" style="width: 100%; height: 220px; overflow: hidden; display: flex; justify-content: center; align-items: center; background-color: #f9f9f9;">
												<img src="${pageContext.request.contextPath}/assets/img/books/Life Skill/tu-duy-phan-bien-trong-the-gioi.jpg" alt="" style="max-width: 100%; max-height: 100%; object-fit: contain;">
											</div>
											<div class="favorite"></div>
											<div class="product_info">
												<h6 class="product_name">
													<a href="${pageContext.request.contextPath}/Homepage/SanPham.jsp">Pryma Headphones, Rose Gold and Grey</a>
												</h6>
												<div class="product_price">$180.00</div>
											</div>
										</div>
									</div>
								</div>

								<div class="owl-item product_slider_item">
									<div class="product-item">
										<div class="product">
											<div class="product_image" style="width: 100%; height: 220px; overflow: hidden; display: flex; justify-content: center; align-items: center; background-color: #f9f9f9;">
												<img src="${pageContext.request.contextPath}/assets/img/books/Life Skill/bia_hoc_cach_yeu_duong_voi_cong.jpg" alt="" style="max-width: 100%; max-height: 100%; object-fit: contain;">
											</div>
											<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center">
												<span>sale</span>
											</div>
											<div class="favorite favorite_left"></div>
											<div class="product_info">
												<h6 class="product_name">
													<a href="${pageContext.request.contextPath}/Homepage/SanPham.jsp">DYMO LabelWriter 450 Turbo Thermal Label Printer</a>
												</h6>
												<div class="product_price">$410.00</div>
											</div>
										</div>
									</div>
								</div>

								<div class="owl-item product_slider_item">
									<div class="product-item">
										<div class="product">
											<div class="product_image" style="width: 100%; height: 220px; overflow: hidden; display: flex; justify-content: center; align-items: center; background-color: #f9f9f9;">
												<img src="${pageContext.request.contextPath}/assets/img/books/IT/tụ-học-c-bàng-hình-ảnh-_224.jpg" alt="" style="max-width: 100%; max-height: 100%; object-fit: contain;">
											</div>
											<div class="favorite"></div>
											<div class="product_info">
												<h6 class="product_name">
													<a href="${pageContext.request.contextPath}/Homepage/SanPham.jsp">Blue Yeti USB Microphone Blackout Edition</a>
												</h6>
												<div class="product_price">$120.00</div>
											</div>
										</div>
									</div>
								</div>

								<div class="owl-item product_slider_item">
									<div class="product-item">
										<div class="product">
											<div class="product_image" style="width: 100%; height: 220px; overflow: hidden; display: flex; justify-content: center; align-items: center; background-color: #f9f9f9;">
												<img src="${pageContext.request.contextPath}/assets/img/books/IT/chat-gpt-va-10-ung-dung-ai-dinh.jpg" alt="" style="max-width: 100%; max-height: 100%; object-fit: contain;">
											</div>
											<div class="favorite"></div>
											<div class="product_info">
												<h6 class="product_name">
													<a href="${pageContext.request.contextPath}/Homepage/SanPham.jsp">Samsung CF591 Series Curved 27-Inch FHD Monitor</a>
												</h6>
												<div class="product_price">$610.00</div>
											</div>
										</div>
									</div>
								</div>

								<div class="owl-item product_slider_item">
									<div class="product-item">
										<div class="product discount">
											<div class="product_image" style="width: 100%; height: 220px; overflow: hidden; display: flex; justify-content: center; align-items: center; background-color: #f9f9f9;">
												<img src="${pageContext.request.contextPath}/assets/img/books/Foreign/-25-chuyen-de-ngu-phap-tieng-anh.jpg" alt="" style="max-width: 100%; max-height: 100%; object-fit: contain;">
											</div>
											<div class="favorite favorite_left"></div>
											<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center">
												<span>-$20</span>
											</div>
											<div class="product_info">
												<h6 class="product_name">
													<a href="${pageContext.request.contextPath}/Homepage/SanPham.jsp">Fujifilm X100T 16 MP Digital Camera (Silver)</a>
												</h6>
												<div class="product_price">
													$520.00
													<span>$590.00</span>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="owl-item product_slider_item">
									<div class="product-item">
										<div class="product">
											<div class="product_image" style="width: 100%; height: 220px; overflow: hidden; display: flex; justify-content: center; align-items: center; background-color: #f9f9f9;">
												<img src="${pageContext.request.contextPath}/assets/img/books/IT/hanh-trang-lap-trinh_105192_1.jpg" alt="" style="max-width: 100%; max-height: 100%; object-fit: contain;">
											</div>
											<div class="favorite"></div>
											<div class="product_info">
												<h6 class="product_name">
													<a href="${pageContext.request.contextPath}/Homepage/SanPham.jsp">Pryma Headphones, Rose Gold and Grey</a>
												</h6>
												<div class="product_price">$180.00</div>
											</div>
										</div>
									</div>
								</div>

								<div class="owl-item product_slider_item">
									<div class="product-item">
										<div class="product">
											<div class="product_image" style="width: 100%; height: 220px; overflow: hidden; display: flex; justify-content: center; align-items: center; background-color: #f9f9f9;">
												<img src="${pageContext.request.contextPath}/assets/img/books/Novel/bia_thuong_toan_cau_tien_hoa_1_5.jpg" alt="" style="max-width: 100%; max-height: 100%; object-fit: contain;">
											</div>
											<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center">
												<span>sale</span>
											</div>
											<div class="favorite favorite_left"></div>
											<div class="product_info">
												<h6 class="product_name">
													<a href="${pageContext.request.contextPath}/Homepage/SanPham.jsp">DYMO LabelWriter 450 Turbo Thermal Label Printer</a>
												</h6>
												<div class="product_price">$410.00</div>
											</div>
										</div>
									</div>
								</div>

								<div class="owl-item product_slider_item">
									<div class="product-item">
										<div class="product discount">
											<div class="product_image" style="width: 100%; height: 220px; overflow: hidden; display: flex; justify-content: center; align-items: center; background-color: #f9f9f9;">
												<img src="${pageContext.request.contextPath}/assets/img/books/Literature/8935278607373_1.jpg" alt="" style="max-width: 100%; max-height: 100%; object-fit: contain;">
											</div>
											<div class="favorite favorite_left"></div>
											<div class="product_bubble product_bubble_right product_bubble_red d-flex flex-column align-items-center">
												<span>-$20</span>
											</div>
											<div class="product_info">
												<h6 class="product_name">
													<a href="${pageContext.request.contextPath}/Homepage/SanPham.jsp">Fujifilm X100T 16 MP Digital Camera (Silver)</a>
												</h6>
												<div class="product_price">
													$520.00
													<span>$590.00</span>
												</div>
											</div>
										</div>
									</div>
								</div>

								<div class="owl-item product_slider_item">
									<div class="product-item">
										<div class="product">
											<div class="product_image" style="width: 100%; height: 220px; overflow: hidden; display: flex; justify-content: center; align-items: center; background-color: #f9f9f9;">
												<img src="${pageContext.request.contextPath}/assets/img/books/Light Novel/bia_ngoai_ari1_1994aeafbbd9452fa.jpg" alt="" style="max-width: 100%; max-height: 100%; object-fit: contain;">
											</div>
											<div class="favorite"></div>
											<div class="product_info">
												<h6 class="product_name">
													<a href="${pageContext.request.contextPath}/Homepage/SanPham.jsp">Blue Yeti USB Microphone Blackout Edition</a>
												</h6>
												<div class="product_price">$120.00</div>
											</div>
										</div>
									</div>
								</div>

								<div class="owl-item product_slider_item">
									<div class="product-item men">
										<div class="product">
											<div class="product_image" style="width: 100%; height: 220px; overflow: hidden; display: flex; justify-content: center; align-items: center; background-color: #f9f9f9;">
												<img src="${pageContext.request.contextPath}/assets/img/books/Literature/8935235240308.jpg" alt="" style="max-width: 100%; max-height: 100%; object-fit: contain;">
											</div>
											<div class="favorite"></div>
											<div class="product_info">
												<h6 class="product_name">
													<a href="${pageContext.request.contextPath}/Homepage/SanPham.jsp">Pryma Headphones, Rose Gold & Grey</a>
												</h6>
												<div class="product_price">$180.00</div>
											</div>
										</div>
									</div>
								</div>
							</div>

							<!-- Slider Navigation -->

							<div class="product_slider_nav_left product_slider_nav d-flex align-items-center justify-content-center flex-column">
								<i class="fa fa-chevron-left" aria-hidden="true"></i>
							</div>
							<div class="product_slider_nav_right product_slider_nav d-flex align-items-center justify-content-center flex-column">
								<i class="fa fa-chevron-right" aria-hidden="true"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Benefit -->

		<div class="benefit">
			<div class="container">
				<div class="row benefit_row">
					<div class="col-lg-3 benefit_col">
						<div class="benefit_item d-flex flex-row align-items-center">
							<div class="benefit_icon">
								<i class="fa fa-truck" aria-hidden="true"></i>
							</div>
							<div class="benefit_content">
								<h6>free shipping</h6>
								<p>Suffered Alteration in Some Form</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 benefit_col">
						<div class="benefit_item d-flex flex-row align-items-center">
							<div class="benefit_icon">
								<i class="fa fa-money" aria-hidden="true"></i>
							</div>
							<div class="benefit_content">
								<h6>cach on delivery</h6>
								<p>The Internet Tend To Repeat</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 benefit_col">
						<div class="benefit_item d-flex flex-row align-items-center">
							<div class="benefit_icon">
								<i class="fa fa-undo" aria-hidden="true"></i>
							</div>
							<div class="benefit_content">
								<h6>45 days return</h6>
								<p>Making it Look Like Readable</p>
							</div>
						</div>
					</div>
					<div class="col-lg-3 benefit_col">
						<div class="benefit_item d-flex flex-row align-items-center">
							<div class="benefit_icon">
								<i class="fa fa-clock-o" aria-hidden="true"></i>
							</div>
							<div class="benefit_content">
								<h6>opening all week</h6>
								<p>8AM - 09PM</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Blogs -->

		<div class="blogs">
			<div class="container">
				<div class="row">
					<div class="col text-center">
						<div class="section_title">
							<h2>Latest Blogs</h2>
						</div>
					</div>
				</div>
				<div class="row blogs_container">
					<div class="col-lg-4 blog_item_col">
						<div class="blog_item">
							<div class="blog_background" style="background-image: url(${pageContext.request.contextPath}/assets/img/coloshop/blog_1.jpg)"></div>
							<div class="blog_content d-flex flex-column align-items-center justify-content-center text-center">
								<h4 class="blog_title">Here are the trends I see coming this fall</h4>
								<span class="blog_meta">by admin | dec 01, 2017</span>
								<a class="blog_more" href="#">Read more</a>
							</div>
						</div>
					</div>
					<div class="col-lg-4 blog_item_col">
						<div class="blog_item">
							<div class="blog_background" style="background-image: url(${pageContext.request.contextPath}/assets/img/coloshop/blog_2.jpg)"></div>
							<div class="blog_content d-flex flex-column align-items-center justify-content-center text-center">
								<h4 class="blog_title">Here are the trends I see coming this fall</h4>
								<span class="blog_meta">by admin | dec 01, 2017</span>
								<a class="blog_more" href="#">Read more</a>
							</div>
						</div>
					</div>
					<div class="col-lg-4 blog_item_col">
						<div class="blog_item">
							<div class="blog_background" style="background-image: url(${pageContext.request.contextPath}/assets/img/coloshop/blog_3.jpg)"></div>
							<div class="blog_content d-flex flex-column align-items-center justify-content-center text-center">
								<h4 class="blog_title">Here are the trends I see coming this fall</h4>
								<span class="blog_meta">by admin | dec 01, 2017</span>
								<a class="blog_more" href="#">Read more</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- Newsletter -->

		<div class="newsletter">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="newsletter_text d-flex flex-column justify-content-center align-items-lg-start align-items-md-center text-center">
							<h4>Newsletter</h4>
							<p>Subscribe to our newsletter and get 20% off your first purchase</p>
						</div>
					</div>
					<div class="col-lg-6">
						<form action="post">
							<div class="newsletter_form d-flex flex-md-row flex-column flex-xs-column align-items-center justify-content-lg-end justify-content-center">
								<input id="newsletter_email" type="email" placeholder="Your email" required="required" data-error="Valid email is required.">
								<button id="newsletter_submit" type="submit" class="newsletter_submit_btn trans_300" value="Submit">subscribe</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- Footer -->

		<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<div class="footer_nav_container d-flex flex-sm-row flex-column align-items-center justify-content-lg-start justify-content-center text-center">
							<ul class="footer_nav">
								<li>
									<a href="#">Blog</a>
								</li>
								<li>
									<a href="#">FAQs</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/Homepage/LienHe.jsp">Contact us</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="footer_social d-flex flex-row align-items-center justify-content-lg-end justify-content-center">
							<ul>
								<li>
									<a href="#">
										<i class="fa fa-facebook" aria-hidden="true"></i>
									</a>
								</li>
								<li>
									<a href="#">
										<i class="fa fa-twitter" aria-hidden="true"></i>
									</a>
								</li>
								<li>
									<a href="#">
										<i class="fa fa-instagram" aria-hidden="true"></i>
									</a>
								</li>
								<li>
									<a href="#">
										<i class="fa fa-skype" aria-hidden="true"></i>
									</a>
								</li>
								<li>
									<a href="#">
										<i class="fa fa-pinterest" aria-hidden="true"></i>
									</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="footer_nav_container">
							<div class="cr">
								©2018 All Rights Reserverd. Made with
								<i class="fa fa-heart-o" aria-hidden="true"></i>
								by
								<a href="#">Colorlib</a>
								&amp; distributed by
								<a href="https://themewagon.com">ThemeWagon</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>

	</div>

	<script src="${pageContext.request.contextPath}/assets/js/jquery-3.2.1.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/css/bootstrap4/popper.js"></script>
	<script src="${pageContext.request.contextPath}/assets/css/bootstrap4/bootstrap.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/Isotope/isotope.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/OwlCarousel2-2.2.1/owl.carousel.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/easing/easing.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/custom.js"></script>
</body>

</html>
