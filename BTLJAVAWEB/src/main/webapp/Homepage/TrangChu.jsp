<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Colo Shop</title>
<meta charset="UTF-8">
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
		<jsp:include page="Parts/Header.jsp" />

		<!-- Slider -->
		<div class="main_slider" style="background-image: url(${pageContext.request.contextPath}/assets/img/background/HeroBG.jpg)">
			<div class="container fill_height">
				<div class="row align-items-center fill_height">
					<div class="col">
						<div class="main_slider_content">
							<h6 style="color: white;">Best Selling Books Collection 2024</h6>
							<h1 style="color: white;">Get up to 20% off for new customers</h1>
							<div class="red_button shop_now_button">
								<a href="#" style="color: black;">shop now</a>
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
						<div class="banner_item align-items-center" style="background-image: url(${pageContext.request.contextPath}/assets/img/coloshop/banner/foreign.jpg">
							<div class="banner_category">
								<a href="${pageContext.request.contextPath}/Homepage/TheLoai.jsp">Foreigns</a>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="banner_item align-items-center" style="background-image: url(${pageContext.request.contextPath}/assets/img/coloshop/banner/it.jpg)">
							<div class="banner_category">
								<a href="${pageContext.request.contextPath}/Homepage/TheLoai.jsp">ITs</a>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="banner_item align-items-center" style="background-image: url(${pageContext.request.contextPath}/assets/img/coloshop/banner/lifeskill.jpg)">
							<div class="banner_category">
								<a href="${pageContext.request.contextPath}/Homepage/TheLoai.jsp">Life Skills</a>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="banner_item align-items-center" style="background-image: url(${pageContext.request.contextPath}/assets/img/coloshop/banner/lightnovel.jpg)">
							<div class="banner_category">
								<a href="${pageContext.request.contextPath}/Homepage/TheLoai.jsp">Light Novels</a>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="banner_item align-items-center" style="background-image: url(${pageContext.request.contextPath}/assets/img/coloshop/banner/literature.jpg)">
							<div class="banner_category">
								<a href="${pageContext.request.contextPath}/Homepage/TheLoai.jsp">Literatures</a>
							</div>
						</div>
					</div>

					<div class="col-md-4">
						<div class="banner_item align-items-center" style="background-image: url(${pageContext.request.contextPath}/assets/img/coloshop/banner/novel.jpg)">
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
				<div class="row">
					<div class="col text-center">
						<div class="section_title new_arrivals_title">
							<h2>New Arrivals</h2>
						</div>
					</div>
				</div>
				<div class="row align-items-center">
					<div class="col text-center">
						<div class="new_arrivals_sorting">
							<ul class="arrivals_grid_sorting clearfix button-group filters-button-group">
								<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center active is-checked" data-filter="*">all</li>
								<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".foreign">Foreign</li>
								<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".it">IT</li>
								<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".lifeskill">Life Skill</li>
								<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".lightnovel">Light Novel</li>
								<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".literature">Literature</li>
								<li class="grid_sorting_button button d-flex flex-column justify-content-center align-items-center" data-filter=".novel">Novel</li>
							</ul>
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col">
						<div class="product-grid" data-isotope='{ "itemSelector": ".product-item", "layoutMode": "fitRows" }'>
							<jsp:include page="Parts/BookCard.jsp">
								<jsp:param name="category" value="literature" />
								<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/Literature/8935278607373_1.jpg" />
								<jsp:param name="productName" value="Phố xưa người cũ" />
								<jsp:param name="price" value="10.00" />
								<jsp:param name="newPrice" value="8.00" />
								<jsp:param name="productId" value="121" />
								<jsp:param name="bubbleText" value="-20%" />
								<jsp:param name="bubbleType" value="red" />
								<jsp:param name="addToCart" value="true" />
							</jsp:include>

							<jsp:include page="Parts/BookCard.jsp">
								<jsp:param name="category" value="literature" />
								<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/Literature/8935235240308.jpg" />
								<jsp:param name="productName" value="Những chuyện lạ ở Tokyo" />
								<jsp:param name="price" value="12.00" />
								<jsp:param name="productId" value="122" />
								<jsp:param name="bubbleText" value="new" />
								<jsp:param name="bubbleType" value="green" />
								<jsp:param name="addToCart" value="true" />
							</jsp:include>

							<jsp:include page="Parts/BookCard.jsp">
								<jsp:param name="category" value="lightnovel" />
								<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/Light Novel/bia_ngoai_ari1_1994aeafbbd9452fa.jpg" />
								<jsp:param name="productName" value="Arifureta – Từ tầm thường đến bất khả chiến bại" />
								<jsp:param name="price" value="12.00" />
								<jsp:param name="productId" value="123" />
								<jsp:param name="addToCart" value="true" />
							</jsp:include>

							<jsp:include page="Parts/BookCard.jsp">
								<jsp:param name="category" value="novel" />
								<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/Novel/bia_thuong_toan_cau_tien_hoa_1_5.jpg" />
								<jsp:param name="productName" value="Toàn cầu tiến hoá" />
								<jsp:param name="price" value="10.00" />
								<jsp:param name="productId" value="124" />
								<jsp:param name="bubbleText" value="sale" />
								<jsp:param name="bubbleType" value="red" />
								<jsp:param name="addToCart" value="true" />
							</jsp:include>

							<jsp:include page="Parts/BookCard.jsp">
								<jsp:param name="category" value="it" />
								<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/IT/hanh-trang-lap-trinh_105192_1.jpg" />
								<jsp:param name="productName" value="Hành trang lập trình" />
								<jsp:param name="price" value="18.00" />
								<jsp:param name="productId" value="125" />
								<jsp:param name="addToCart" value="true" />
							</jsp:include>

							<jsp:include page="Parts/BookCard.jsp">
								<jsp:param name="category" value="foreign" />
								<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/Foreign/-25-chuyen-de-ngu-phap-tieng-anh.jpg" />
								<jsp:param name="productName" value="25 chuyên đề ngữ pháp Tiếng Anh" />
								<jsp:param name="price" value="15.00" />
								<jsp:param name="newPrice" value="10.00" />
								<jsp:param name="productId" value="126" />
								<jsp:param name="bubbleText" value="-33%" />
								<jsp:param name="bubbleType" value="red" />
								<jsp:param name="addToCart" value="true" />
							</jsp:include>

							<jsp:include page="Parts/BookCard.jsp">
								<jsp:param name="category" value="it" />
								<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/IT/chat-gpt-va-10-ung-dung-ai-dinh.jpg" />
								<jsp:param name="productName" value="ChatGPT và 10 ứng dụng AI đình đám" />
								<jsp:param name="price" value="20.00" />
								<jsp:param name="productId" value="127" />
								<jsp:param name="addToCart" value="true" />
							</jsp:include>

							<jsp:include page="Parts/BookCard.jsp">
								<jsp:param name="category" value="it" />
								<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/IT/tu-hoc-c-va-sql-server-2008_1434.jpg" />
								<jsp:param name="productName" value="Tự học C# và hệ CSDL SQL Server" />
								<jsp:param name="price" value="25.00" />
								<jsp:param name="productId" value="128" />
								<jsp:param name="addToCart" value="true" />
							</jsp:include>

							<jsp:include page="Parts/BookCard.jsp">
								<jsp:param name="category" value="lifeskill" />
								<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/Life Skill/bia_hoc_cach_yeu_duong_voi_cong.jpg" />
								<jsp:param name="productName" value="Học cách yêu đương với công việc" />
								<jsp:param name="price" value="15.00" />
								<jsp:param name="productId" value="129" />
								<jsp:param name="bubbleText" value="sale" />
								<jsp:param name="bubbleType" value="red" />
								<jsp:param name="addToCart" value="true" />
							</jsp:include>

							<jsp:include page="Parts/BookCard.jsp">
								<jsp:param name="category" value="lifeskill" />
								<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/Life Skill/tu-duy-phan-bien-trong-the-gioi.jpg" />
								<jsp:param name="productName" value="Tư duy phản biện trong thế giới VUCA" />
								<jsp:param name="price" value="18.00" />
								<jsp:param name="productId" value="130" />
								<jsp:param name="addToCart" value="true" />
							</jsp:include>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- DOTW Start 
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
		DOTW End -->

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
									<jsp:include page="Parts/BookCard.jsp">
										<jsp:param name="category" value="literature" />
										<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/Literature/8935278607373_1.jpg" />
										<jsp:param name="productName" value="Phố xưa người cũ" />
										<jsp:param name="price" value="10.00" />
										<jsp:param name="newPrice" value="8.00" />
										<jsp:param name="productId" value="121" />
										<jsp:param name="bubbleText" value="-20%" />
										<jsp:param name="bubbleType" value="red" />
									</jsp:include>
								</div>

								<div class="owl-item product_slider_item">
									<jsp:include page="Parts/BookCard.jsp">
										<jsp:param name="category" value="literature" />
										<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/Literature/8935235240308.jpg" />
										<jsp:param name="productName" value="Những chuyện lạ ở Tokyo" />
										<jsp:param name="price" value="12.00" />
										<jsp:param name="productId" value="122" />
										<jsp:param name="bubbleText" value="new" />
										<jsp:param name="bubbleType" value="green" />
									</jsp:include>
								</div>

								<div class="owl-item product_slider_item">
									<jsp:include page="Parts/BookCard.jsp">
										<jsp:param name="category" value="lightnovel" />
										<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/Light Novel/bia_ngoai_ari1_1994aeafbbd9452fa.jpg" />
										<jsp:param name="productName" value="Arifureta – Từ tầm thường đến bất khả chiến bại" />
										<jsp:param name="price" value="12.00" />
										<jsp:param name="productId" value="123" />
									</jsp:include>
								</div>

								<div class="owl-item product_slider_item">
									<jsp:include page="Parts/BookCard.jsp">
										<jsp:param name="category" value="novel" />
										<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/Novel/bia_thuong_toan_cau_tien_hoa_1_5.jpg" />
										<jsp:param name="productName" value="Toàn cầu tiến hoá" />
										<jsp:param name="price" value="10.00" />
										<jsp:param name="productId" value="124" />
										<jsp:param name="bubbleText" value="sale" />
										<jsp:param name="bubbleType" value="red" />
									</jsp:include>
								</div>

								<div class="owl-item product_slider_item">
									<jsp:include page="Parts/BookCard.jsp">
										<jsp:param name="category" value="it" />
										<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/IT/hanh-trang-lap-trinh_105192_1.jpg" />
										<jsp:param name="productName" value="Hành trang lập trình" />
										<jsp:param name="price" value="18.00" />
										<jsp:param name="productId" value="125" />
									</jsp:include>
								</div>

								<div class="owl-item product_slider_item">
									<jsp:include page="Parts/BookCard.jsp">
										<jsp:param name="category" value="foreign" />
										<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/Foreign/-25-chuyen-de-ngu-phap-tieng-anh.jpg" />
										<jsp:param name="productName" value="25 chuyên đề ngữ pháp Tiếng Anh" />
										<jsp:param name="price" value="15.00" />
										<jsp:param name="newPrice" value="10.00" />
										<jsp:param name="productId" value="126" />
										<jsp:param name="bubbleText" value="-33%" />
										<jsp:param name="bubbleType" value="red" />
									</jsp:include>
								</div>

								<div class="owl-item product_slider_item">
									<jsp:include page="Parts/BookCard.jsp">
										<jsp:param name="category" value="it" />
										<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/IT/chat-gpt-va-10-ung-dung-ai-dinh.jpg" />
										<jsp:param name="productName" value="ChatGPT và 10 ứng dụng AI đình đám" />
										<jsp:param name="price" value="20.00" />
										<jsp:param name="productId" value="127" />
									</jsp:include>
								</div>

								<div class="owl-item product_slider_item">
									<jsp:include page="Parts/BookCard.jsp">
										<jsp:param name="category" value="it" />
										<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/IT/tu-hoc-c-va-sql-server-2008_1434.jpg" />
										<jsp:param name="productName" value="Tự học C# và hệ CSDL SQL Server" />
										<jsp:param name="price" value="25.00" />
										<jsp:param name="productId" value="128" />
									</jsp:include>
								</div>

								<div class="owl-item product_slider_item">
									<jsp:include page="Parts/BookCard.jsp">
										<jsp:param name="category" value="lifeskill" />
										<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/Life Skill/bia_hoc_cach_yeu_duong_voi_cong.jpg" />
										<jsp:param name="productName" value="Học cách yêu đương với công việc" />
										<jsp:param name="price" value="15.00" />
										<jsp:param name="productId" value="129" />
										<jsp:param name="bubbleText" value="sale" />
										<jsp:param name="bubbleType" value="red" />
									</jsp:include>
								</div>

								<div class="owl-item product_slider_item">
									<jsp:include page="Parts/BookCard.jsp">
										<jsp:param name="category" value="lifeskill" />
										<jsp:param name="image" value="${pageContext.request.contextPath}/assets/img/books/Life Skill/tu-duy-phan-bien-trong-the-gioi.jpg" />
										<jsp:param name="productName" value="Tư duy phản biện trong thế giới VUCA" />
										<jsp:param name="price" value="18.00" />
										<jsp:param name="productId" value="130" />
									</jsp:include>
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

		<!-- Blogs 
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
		End Blogs -->

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
