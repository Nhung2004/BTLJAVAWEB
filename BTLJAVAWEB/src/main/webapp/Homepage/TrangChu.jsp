<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Trang chủ</title>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta name="description" content="">
<meta name="keywords" content="">

<!-- Favicons -->
<link href="${pageContext.request.contextPath}/assets/img/favicon.png" rel="icon">
<link href="${pageContext.request.contextPath}/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Fonts -->
<link href="https://fonts.googleapis.com" rel="preconnect">
<link href="https://fonts.gstatic.com" rel="preconnect" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/aos/aos.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">

<!-- Main CSS File -->
<link href="${pageContext.request.contextPath}/assets/css/GpMain.css" rel="stylesheet">
</head>

<body class="index-page">
	<!-- Tách riêng header ra file Header.jsp -->
	<jsp:include page="Header.jsp" />

	<main class="main">
		<!-- Blank Section -->
		<section id="about" class="about section">
			<!-- Section Title -->
			<div class="container section-title" data-aos="fade-up">
				<!-- Title here -->
			</div>

			<div class="container" data-aos="fade-up" data-aos-delay="100">
				<div class="row gy-4">
					<div class="col-lg-6 order-1 order-lg-2">
						<!-- Picture here -->
					</div>
					<div class="col-lg-6 order-2 order-lg-1 content">
						<!-- Content here -->
					</div>
				</div>
			</div>
		</section> 
		<!-- /Blank Section -->

		<!-- About Section -->
		<section id="about" class="about section">

			<!-- Section Title -->
			<div class="container section-title" data-aos="fade-up">
				<h2>About us</h2>
			</div>

			<div class="container" data-aos="fade-up" data-aos-delay="100">
				<div class="row gy-4">
					<div class="col-lg-6 order-1 order-lg-2">
						<img src="${pageContext.request.contextPath}/assets/img/about.jpg" class="img-fluid" alt="About Us">
					</div>
					<div class="col-lg-6 order-2 order-lg-1 content">
						<h3>Welcome to G13</h3>
						<p class="fst-italic">Your one-stop destination for books across all genres! Whether you’re looking for the latest bestsellers, timeless classics, or hidden gems, we’re here to help you find the perfect read.</p>
						<ul>
							<li>
								<i class="bi bi-check2-all"></i>
								<span>Discover a curated selection of books that caters to every interest and age.</span>
							</li>
							<li>
								<i class="bi bi-check2-all"></i>
								<span>Connect with fellow book enthusiasts through our platform.</span>
							</li>
							<li>
								<i class="bi bi-check2-all"></i>
								<span>Explore categories, manage your favorites, and inspire a love for reading.</span>
							</li>
						</ul>
						<p>At G13, every book is a gateway to new worlds, and we’re thrilled to be part of your reading journey.</p>
					</div>
				</div>
			</div>
		</section>
		<!-- /About Section -->

		<!-- Client Section -->
		<section id="clients" class="clients section">
			<div class="container" data-aos="fade-up" data-aos-delay="100">
				<div class="swiper init-swiper">

					<!-- Client Script -->
					<script type="application/json" class="swiper-config">
            {
              "loop": true,
              "speed": 500,
              "autoplay": {
                "delay": 2500
              },
              "slidesPerView": "auto",
              "pagination": {
                "el": ".swiper-pagination",
                "type": "bullets",
                "clickable": true
              },
              "breakpoints": {
                "320": {
                  "slidesPerView": 2,
                  "spaceBetween": 40
                },
                "480": {
                  "slidesPerView": 3,
                  "spaceBetween": 60
                },
                "640": {
                  "slidesPerView": 4,
                  "spaceBetween": 80
                },
                "992": {
                  "slidesPerView": 6,
                  "spaceBetween": 120
                }
              }
            }
          </script>
					<div class="swiper-wrapper align-items-center">
						<div class="swiper-slide">
							<img src="${pageContext.request.contextPath}/assets/img/clients/client-1.png" class="img-fluid" alt="">
						</div>

						<div class="swiper-slide">
							<img src="${pageContext.request.contextPath}/assets/img/clients/client-2.png" class="img-fluid" alt="">
						</div>

						<div class="swiper-slide">
							<img src="${pageContext.request.contextPath}/assets/img/clients/client-3.png" class="img-fluid" alt="">
						</div>

						<div class="swiper-slide">
							<img src="${pageContext.request.contextPath}/assets/img/clients/client-4.png" class="img-fluid" alt="">
						</div>

						<div class="swiper-slide">
							<img src="${pageContext.request.contextPath}/assets/img/clients/client-5.png" class="img-fluid" alt="">
						</div>

						<div class="swiper-slide">
							<img src="${pageContext.request.contextPath}/assets/img/clients/client-6.png" class="img-fluid" alt="">
						</div>

						<div class="swiper-slide">
							<img src="${pageContext.request.contextPath}/assets/img/clients/client-7.png" class="img-fluid" alt="">
						</div>

						<div class="swiper-slide">
							<img src="${pageContext.request.contextPath}/assets/img/clients/client-8.png" class="img-fluid" alt="">
						</div>
					</div>
					<div class="swiper-pagination"></div>
				</div>
			</div>
		</section>
		<!-- /Clients Section -->

		<!-- Features Section -->
		<section id="features" class="features section">

			<div class="container">

				<div class="row gy-4">
					<div class="features-image col-lg-6" data-aos="fade-up" data-aos-delay="100">
						<img src="${pageContext.request.contextPath}/assets/img/features-bg.jpg" alt="Features">
					</div>
					<div class="col-lg-6">

						<div class="features-item d-flex ps-0 ps-lg-3 pt-4 pt-lg-0" data-aos="fade-up" data-aos-delay="200">
							<i class="bi bi-bookmark-heart flex-shrink-0"></i>
							<div>
								<h4>Personalized Recommendations</h4>
								<p>Discover books that match your interests based on your reading history and favorite genres.</p>
							</div>
						</div>
						<!-- End Features Item-->

						<div class="features-item d-flex mt-5 ps-0 ps-lg-3" data-aos="fade-up" data-aos-delay="300">
							<i class="bi bi-collection flex-shrink-0"></i>
							<div>
								<h4>Extensive Book Collections</h4>
								<p>Browse an extensive library of bestsellers, new releases, and timeless classics, all in one place.</p>
							</div>
						</div>
						<!-- End Features Item-->

						<div class="features-item d-flex mt-5 ps-0 ps-lg-3" data-aos="fade-up" data-aos-delay="400">
							<i class="bi bi-cash-stack flex-shrink-0"></i>
							<div>
								<h4>Exclusive Discounts & Deals</h4>
								<p>Enjoy special discounts and deals on select titles, with new offers added regularly.</p>
							</div>
						</div>
						<!-- End Features Item-->

						<div class="features-item d-flex mt-5 ps-0 ps-lg-3" data-aos="fade-up" data-aos-delay="500">
							<i class="bi bi-star flex-shrink-0"></i>
							<div>
								<h4>Verified Customer Reviews</h4>
								<p>Read honest reviews from our community to help you make the best choice for your next read.</p>
							</div>
						</div>
						<!-- End Features Item-->

						<div class="features-item d-flex mt-5 ps-0 ps-lg-3" data-aos="fade-up" data-aos-delay="600">
							<i class="bi bi-truck flex-shrink-0"></i>
							<div>
								<h4>Fast and Reliable Shipping</h4>
								<p>Get your books delivered quickly and securely, with real-time order tracking available.</p>
							</div>
						</div>
						<!-- End Features Item-->

					</div>
				</div>

			</div>

		</section>
		<!-- /Features Section -->

		<!-- Top Gernes Section -->
		<section id="services" class="services section">

			<!-- Section Title -->
			<div class="container section-title" data-aos="fade-up">
				<h2>Top Genres</h2>
				<p>Discover the most popular genres at our bookstore</p>
			</div>
			<!-- End Section Title -->
			<div class="container">
				<div class="row gy-4">
					<div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="100">
						<div class="service-item position-relative">
							<div class="icon">
								<i class="bi bi-book-half"></i>
							</div>
							<a href="genre-details.html" class="stretched-link">
								<h3>Foreign</h3>
							</a>
							<p>Explore a world of knowledge with foreign books from various cultures and authors around the globe.</p>
						</div>
					</div>
					<!-- End Top Gernes Item -->

					<div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="200">
						<div class="service-item position-relative">
							<div class="icon">
								<i class="bi bi-code-slash"></i>
							</div>
							<a href="genre-details.html" class="stretched-link">
								<h3>IT</h3>
							</a>
							<p>Stay updated with the latest advancements in technology, coding, and software development.</p>
						</div>
					</div>
					<!-- End Top Gernes Item -->

					<div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="300">
						<div class="service-item position-relative">
							<div class="icon">
								<i class="bi bi-lightbulb"></i>
							</div>
							<a href="genre-details.html" class="stretched-link">
								<h3>Life Skills</h3>
							</a>
							<p>Enhance your personal and professional life with books on self-improvement, leadership, and communication.</p>
						</div>
					</div>
					<!-- End Top Gernes Item -->

					<div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="400">
						<div class="service-item position-relative">
							<div class="icon">
								<i class="bi bi-book"></i>
							</div>
							<a href="genre-details.html" class="stretched-link">
								<h3>Novel</h3>
							</a>
							<p>Dive into captivating stories and complex characters in our collection of contemporary and classic novels.</p>
						</div>
					</div>
					<!-- End Top Gernes Item -->

					<div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="500">
						<div class="service-item position-relative">
							<div class="icon">
								<i class="bi bi-bookmark-star"></i>
							</div>
							<a href="genre-details.html" class="stretched-link">
								<h3>Light Novel</h3>
							</a>
							<p>Enjoy engaging, easy-to-read light novels that transport you to fantastical worlds with every page.</p>
						</div>
					</div>
					<!-- End Top Gernes Item -->

					<div class="col-lg-4 col-md-6" data-aos="fade-up" data-aos-delay="600">
						<div class="service-item position-relative">
							<div class="icon">
								<i class="bi bi-pen"></i>
							</div>
							<a href="genre-details.html" class="stretched-link">
								<h3>Literature</h3>
							</a>
							<p>Experience the beauty of language and timeless themes in our curated literature collection.</p>
						</div>
					</div>
					<!-- End Top Gernes Item -->
				</div>
			</div>
		</section>
		<!-- /Top Gernes Section -->

		<!-- Preview Section -->
		<section id="portfolio" class="portfolio section">

			<!-- Section Title -->
			<div class="container section-title" data-aos="fade-up">
				<h2>Preview</h2>
				<p>Check out some of our favorite books</p>
			</div>
			<!-- End Section Title -->

			<div class="container">
				<div class="isotope-layout" data-default-filter="*" data-layout="masonry" data-sort="original-order">
					<ul class="portfolio-filters isotope-filters" data-aos="fade-up" data-aos-delay="100">
						<li data-filter="*" class="filter-active">All</li>
						<li data-filter=".filter-literature">Literature</li>
						<li data-filter=".filter-it">IT</li>
						<li data-filter=".filter-novel">Novel</li>
					</ul>
					<!-- End Portfolio Filters -->

					<div class="row gy-4 isotope-container" data-aos="fade-up" data-aos-delay="200">

						<div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-literature" style="border: 1px solid #ddd; border-radius: 5px; padding: 10px; box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);">
							<img src="${pageContext.request.contextPath}/assets/img/masonry-portfolio/masonry-portfolio-1.jpg" class="img-fluid" alt="" style="width: 100%; height: 500px; object-fit: contain;">
							<div class="portfolio-info">
								<h4>Literature Book 1</h4>
								<p>A classic tale of ...</p>
								<a href="link-to-literature-book-1" title="More Details" class="details-link">
									<i class="bi bi-link-45deg"></i>
								</a>
							</div>
						</div>
						<!-- End Portfolio Item -->

						<div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-literature" style="border: 1px solid #ddd; border-radius: 5px; padding: 10px; box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);">
							<img src="${pageContext.request.contextPath}/assets/img/masonry-portfolio/masonry-portfolio-2.jpg" class="img-fluid" alt="" style="width: 100%; height: 500px; object-fit: contain;">
							<div class="portfolio-info">
								<h4>Literature Book 2</h4>
								<p>Exploring themes of ...</p>
								<a href="link-to-literature-book-2" title="More Details" class="details-link">
									<i class="bi bi-link-45deg"></i>
								</a>
							</div>
						</div>
						<!-- End Portfolio Item -->

						<div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-it" style="border: 1px solid #ddd; border-radius: 5px; padding: 10px; box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);">
							<img src="${pageContext.request.contextPath}/assets/img/masonry-portfolio/masonry-portfolio-3.jpg" class="img-fluid" alt="" style="width: 100%; height: 500px; object-fit: contain;">
							<div class="portfolio-info">
								<h4>IT Book 1</h4>
								<p>An essential guide to ...</p>
								<a href="link-to-it-book-1" title="More Details" class="details-link">
									<i class="bi bi-link-45deg"></i>
								</a>
							</div>
						</div>
						<!-- End Portfolio Item -->

						<div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-it" style="border: 1px solid #ddd; border-radius: 5px; padding: 10px; box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);">
							<img src="${pageContext.request.contextPath}/assets/img/masonry-portfolio/masonry-portfolio-4.jpg" class="img-fluid" alt="" style="width: 100%; height: 500px; object-fit: contain;">
							<div class="portfolio-info">
								<h4>IT Book 2</h4>
								<p>Understanding modern technologies ...</p>
								<a href="link-to-it-book-2" title="More Details" class="details-link">
									<i class="bi bi-link-45deg"></i>
								</a>
							</div>
						</div>
						<!-- End Portfolio Item -->

						<div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-novel" style="border: 1px solid #ddd; border-radius: 5px; padding: 10px; box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);">
							<img src="${pageContext.request.contextPath}/assets/img/masonry-portfolio/masonry-portfolio-5.jpg" class="img-fluid" alt="" style="width: 100%; height: 500px; object-fit: contain;">
							<div class="portfolio-info">
								<h4>Novel Book 1</h4>
								<p>A gripping story of ...</p>
								<a href="link-to-novel-book-1" title="More Details" class="details-link">
									<i class="bi bi-link-45deg"></i>
								</a>
							</div>
						</div>
						<!-- End Portfolio Item -->

						<div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-novel" style="border: 1px solid #ddd; border-radius: 5px; padding: 10px; box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);">
							<img src="${pageContext.request.contextPath}/assets/img/masonry-portfolio/masonry-portfolio-6.jpg" class="img-fluid" alt="" style="width: 100%; height: 500px; object-fit: contain;">
							<div class="portfolio-info">
								<h4>Novel Book 2</h4>
								<p>A journey through ...</p>
								<a href="link-to-novel-book-2" title="More Details" class="details-link">
									<i class="bi bi-link-45deg"></i>
								</a>
							</div>
						</div>
						<!-- End Portfolio Item -->

					</div>
					<!-- End Portfolio Container -->
				</div>
			</div>
		</section>
		<!-- /Preview Section -->

		<!-- Stats Section -->
		<section id="stats" class="stats section">
			<div class="container" data-aos="fade-up" data-aos-delay="100">
				<div class="row gy-4 align-items-center justify-content-between">
					<div class="col-lg-5">
						<img src="${pageContext.request.contextPath}/assets/img/stats-img.jpg" alt="" class="img-fluid">
					</div>
					<div class="col-lg-6">
						<h3 class="fw-bold fs-2 mb-3">Our Bookstore at a Glance</h3>
						<p>Explore our monthly performance and customer satisfaction data.</p>
						<div class="row gy-4">
							<div class="col-lg-6">
								<div class="stats-item d-flex">
									<i class="bi bi-book-half flex-shrink-0"></i>
									<div>
										<span data-purecounter-start="0" data-purecounter-end="5000" data-purecounter-duration="3" class="purecounter"></span>
										<p>
											<strong>Books Sold</strong>
											<span> per month</span>
										</p>
									</div>
								</div>
							</div>
							<!-- End Stats Item -->
							<div class="col-lg-6">
								<div class="stats-item d-flex">
									<i class="bi bi-currency-dollar flex-shrink-0"></i>
									<div>
										<span data-purecounter-start="0" data-purecounter-end="75000" data-purecounter-duration="3" class="purecounter"></span>
										<p>
											<strong>Monthly Income</strong>
											<span> in USD</span>
										</p>
									</div>
								</div>
							</div>
							<!-- End Stats Item -->
							<div class="col-lg-6">
								<div class="stats-item d-flex">
									<i class="bi bi-star-fill flex-shrink-0"></i>
									<div>
										<span data-purecounter-start="0" data-purecounter-end="4.8" data-purecounter-duration="3" class="purecounter"></span>
										<p>
											<strong>Customer Rating</strong>
											<span> out of 5</span>
										</p>
									</div>
								</div>
							</div>
							<!-- End Stats Item -->
							<div class="col-lg-6">
								<div class="stats-item d-flex">
									<i class="bi bi-arrow-repeat flex-shrink-0"></i>
									<div>
										<span data-purecounter-start="0" data-purecounter-end="85" data-purecounter-duration="3" class="purecounter"></span>
										<p>
											<strong>Returning Customers</strong>
											<span> percentage</span>
										</p>
									</div>
								</div>
							</div>
							<!-- End Stats Item -->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- /Stats Section -->

		<!-- Customer Review Section -->
		<section id="testimonials" class="testimonials section dark-background">
			<img src="${pageContext.request.contextPath}/assets/img/background/ReviewBG.jpg" class="testimonials-bg" alt="">

			<div class="container" data-aos="fade-up" data-aos-delay="100">
				<div class="swiper init-swiper">
					<script type="application/json" class="swiper-config">
                {
                  "loop": true,
                  "speed": 600,
                  "autoplay": {
                    "delay": 5000
                  },
                  "slidesPerView": "auto",
                  "pagination": {
                    "el": ".swiper-pagination",
                    "type": "bullets",
                    "clickable": true
                  }
                }
            </script>
					<div class="swiper-wrapper">

						<div class="swiper-slide">
							<div class="testimonial-item">
								<img src="${pageContext.request.contextPath}/assets/img/testimonials/testimonials-1.jpg" class="testimonial-img" alt="">
								<h3>Anna Roberts</h3>
								<h4>Verified Buyer</h4>
								<div class="stars">
									<i class="bi bi-star-fill"></i>
									<i class="bi bi-star-fill"></i>
									<i class="bi bi-star-fill"></i>
									<i class="bi bi-star-fill"></i>
									<i class="bi bi-star-fill"></i>
								</div>
								<p>"Incredible variety and top-notch customer service! My go-to bookstore every time!"</p>
							</div>
						</div>
						<!-- End customer review -->

						<div class="swiper-slide">
							<div class="testimonial-item">
								<img src="${pageContext.request.contextPath}/assets/img/testimonials/testimonials-2.jpg" class="testimonial-img" alt="">
								<h3>Michael Smith</h3>
								<h4>Frequent Shopper</h4>
								<div class="stars">
									<i class="bi bi-star-fill"></i>
									<i class="bi bi-star-fill"></i>
									<i class="bi bi-star-fill"></i>
									<i class="bi bi-star-fill"></i>
									<i class="bi bi-star-half"></i>
								</div>
								<p>"Great collection of books, and always find something new. Delivery is prompt too!"</p>
							</div>
						</div>
						<!-- End customer review -->

						<div class="swiper-slide">
							<div class="testimonial-item">
								<img src="${pageContext.request.contextPath}/assets/img/testimonials/testimonials-3.jpg" class="testimonial-img" alt="">
								<h3>Emily Brown</h3>
								<h4>New Customer</h4>
								<div class="stars">
									<i class="bi bi-star-fill"></i>
									<i class="bi bi-star-fill"></i>
									<i class="bi bi-star-fill"></i>
									<i class="bi bi-star-fill"></i>
									<i class="bi bi-star-fill"></i>
								</div>
								<p>"Amazing service! The book recommendations are spot on, and I love the user experience."</p>
							</div>
						</div>
						<!-- End customer review -->

					</div>
					<div class="swiper-pagination"></div>
				</div>
			</div>
		</section>
		<!-- /Customer Review Section -->

		<!-- Events Section -->
		<section id="team" class="team section">
			<!-- Section Title -->
			<div class="container section-title" data-aos="fade-up">
				<h2>Upcoming Events</h2>
				<p>Don't miss out on our exciting events!</p>
			</div>
			<!-- End Section Title -->

			<div class="container">
				<div class="row gy-4">
					<!-- Event Item -->
					<div class="col-lg-4 col-md-6 event-item" data-aos="fade-up" data-aos-delay="100">
						<div class="event-card text-center border p-4 d-flex flex-column" style="height: 100%; min-height: 450px;">
							<h3>Book Launch: The Lost World</h3>
							<p class="price">March 25, 2024</p>
							<ul class="text-start">
								<li>Location: New York City</li>
								<li>Launch of "The Lost World" by John Doe</li>
								<li>Special guest appearances and book signing</li>
							</ul>
							<div class="d-flex justify-content-center mt-auto">
								<a href="#" class="btn btn-primary">Learn More</a>
							</div>
						</div>
					</div>
					<!-- End Event Item -->

					<!-- Event Item -->
					<div class="col-lg-4 col-md-6 event-item" data-aos="fade-up" data-aos-delay="200">
						<div class="event-card text-center border p-4 d-flex flex-column" style="height: 100%; min-height: 450px;">
							<h3>Author Meet-and-Greet</h3>
							<p class="price">April 10, 2024</p>
							<ul class="text-start">
								<li>Location: Virtual (Zoom)</li>
								<li>Meet Sarah Johnson, author of "The Lost River"</li>
								<li>Q&A session with fans</li>
							</ul>
							<div class="d-flex justify-content-center mt-auto">
								<a href="#" class="btn btn-primary">Register Now</a>
							</div>
						</div>
					</div>
					<!-- End Event Item -->

					<!-- Event Item -->
					<div class="col-lg-4 col-md-6 event-item" data-aos="fade-up" data-aos-delay="300">
						<div class="event-card text-center border p-4 d-flex flex-column" style="height: 100%; min-height: 450px;">
							<h3>Book Discussion: The Great Adventure</h3>
							<p class="price">May 5, 2024</p>
							<ul class="text-start">
								<li>Location: Online Webinar</li>
								<li>Discuss "The Great Adventure" with book enthusiasts</li>
								<li>Open forum and live chat</li>
							</ul>
							<div class="d-flex justify-content-center mt-auto">
								<a href="#" class="btn btn-primary">Learn More</a>
							</div>
						</div>
					</div>
					<!-- End Event Item -->

				</div>
			</div>
		</section>
		<!-- /Events Section -->

		<!-- Subscription Plans Section -->
		<section id="subscription-plans" class="subscription-plans section">
			<!-- Section Title -->
			<div class="container section-title" data-aos="fade-up">
				<h2 class="text-start">Subscription</h2>
				<p class="text-start">Enjoy exclusive benefits now!</p>
			</div>
			<!-- End Section Title -->

			<div class="container">
				<div class="row gy-4 justify-content-center">
					<!-- Plan Item -->
					<div class="col-lg-4 col-md-6 plan-item" data-aos="fade-up" data-aos-delay="100">
						<div class="plan-card text-center border p-4 d-flex flex-column" style="height: 100%; min-height: 450px;">
							<h3>Basic Plan</h3>
							<p class="price">$1.99/month</p>
							<ul class="text-start">
								<li>5% discount on all books</li>
								<li>1 free book every 3 months</li>
								<li>Exclusive newsletter updates</li>
							</ul>
							<div class="d-flex justify-content-center mt-auto">
								<a href="#" class="btn btn-primary">Join Now</a>
							</div>
						</div>
					</div>
					<!-- End Plan Item -->

					<!-- Plan Item -->
					<div class="col-lg-4 col-md-6 plan-item" data-aos="fade-up" data-aos-delay="200">
						<div class="plan-card text-center border p-4 d-flex flex-column" style="height: 100%; min-height: 450px;">
							<h3>Standard Plan</h3>
							<p class="price">$4.99/month</p>
							<ul class="text-start">
								<li>10% discount on all books</li>
								<li>2 free books every 3 months</li>
								<li>Exclusive newsletters with book recommendations</li>
								<li>Access to limited-time promotions</li>
							</ul>
							<div class="d-flex justify-content-center mt-auto">
								<a href="#" class="btn btn-primary">Join Now</a>
							</div>
						</div>
					</div>
					<!-- End Plan Item -->

					<!-- Plan Item -->
					<div class="col-lg-4 col-md-6 plan-item" data-aos="fade-up" data-aos-delay="300">
						<div class="plan-card text-center border p-4 d-flex flex-column" style="height: 100%; min-height: 450px;">
							<h3>Premium Plan</h3>
							<p class="price">$9.99/month</p>
							<ul class="text-start">
								<li>15% discount on all books</li>
								<li>1 free book every month</li>
								<li>Exclusive newsletters with personalized book recommendations</li>
								<li>Priority access to new releases</li>
								<li>Free shipping on all orders</li>
							</ul>
							<div class="d-flex justify-content-center mt-auto">
								<a href="#" class="btn btn-primary">Join Now</a>
							</div>
						</div>
					</div>
					<!-- End Plan Item -->
				</div>
			</div>
		</section>
		<!-- /Subscription Plans Section -->

		<!-- Contact Section -->
		<section id="contact" class="contact section">
			<!-- Section Title -->
			<div class="container section-title" data-aos="fade-up">
				<h2>Contact</h2>
				<p>Contact us if you need help</p>
			</div>
			<!-- End Section Title -->
			<div class="container" data-aos="fade-up" data-aos-delay="100">
				<div class="mb-4" data-aos="fade-up" data-aos-delay="200">
					<iframe style="border: 0; width: 100%; height: 270px;"
						src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d48389.78314118045!2d-74.006138!3d40.710059!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a22a3bda30d%3A0xb89d1fe6bc499443!2sDowntown%20Conference%20Center!5e0!3m2!1sen!2sus!4v1676961268712!5m2!1sen!2sus"
						frameborder="0" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
				</div>
				<!-- End Google Maps -->
				<div class="row gy-4">
					<div class="col-lg-4">
						<div class="info-item d-flex" data-aos="fade-up" data-aos-delay="300">
							<i class="bi bi-geo-alt flex-shrink-0"></i>
							<div>
								<h3>Address</h3>
								<p>A108 Adam Street, New York, NY 535022</p>
							</div>
						</div>
						<!-- End Info Item -->
						<div class="info-item d-flex" data-aos="fade-up" data-aos-delay="400">
							<i class="bi bi-telephone flex-shrink-0"></i>
							<div>
								<h3>Call Us</h3>
								<p>+1 5589 55488 55</p>
							</div>
						</div>
						<!-- End Info Item -->
						<div class="info-item d-flex" data-aos="fade-up" data-aos-delay="500">
							<i class="bi bi-envelope flex-shrink-0"></i>
							<div>
								<h3>Email Us</h3>
								<p>info@example.com</p>
							</div>
						</div>
						<!-- End Info Item -->
					</div>
					<div class="col-lg-8">
						<form action="forms/contact.php" method="post" class="php-email-form" data-aos="fade-up" data-aos-delay="200">
							<div class="row gy-4">
								<div class="col-md-6">
									<input type="text" name="name" class="form-control" placeholder="Your Name" required="">
								</div>
								<div class="col-md-6 ">
									<input type="email" class="form-control" name="email" placeholder="Your Email" required="">
								</div>
								<div class="col-md-12">
									<input type="text" class="form-control" name="subject" placeholder="Subject" required="">
								</div>
								<div class="col-md-12">
									<textarea class="form-control" name="message" rows="6" placeholder="Message" required=""></textarea>
								</div>
								<div class="col-md-12 text-center">
									<div class="loading">Loading</div>
									<div class="error-message"></div>
									<div class="sent-message">Your message has been sent. Thank you!</div>
									<button type="submit">Send Message</button>
								</div>
							</div>
						</form>
					</div>
					<!-- End Contact Form -->
				</div>
			</div>
		</section>
		<!-- /Contact Section -->
	</main>

	<footer id="footer" class="footer dark-background">
		<div class="footer-top">
			<div class="container">
				<div class="row gy-4">
					<div class="col-lg-4 col-md-6 footer-about">
						<a href="${pageContext.request.contextPath}/Dashboard/index.jsp" class="logo d-flex align-items-center">
							<span class="sitename">G13</span>
						</a>
						<div class="footer-contact pt-3">
							<p>A108 Adam Street</p>
							<p>New York, NY 535022</p>
							<p class="mt-3">
								<strong>Phone:</strong>
								<span>+1 5589 55488 55</span>
							</p>
							<p>
								<strong>Email:</strong>
								<span>info@example.com</span>
							</p>
						</div>
						<div class="social-links d-flex mt-4">
							<a href="">
								<i class="bi bi-twitter-x"></i>
							</a>
							<a href="">
								<i class="bi bi-facebook"></i>
							</a>
							<a href="">
								<i class="bi bi-instagram"></i>
							</a>
							<a href="">
								<i class="bi bi-linkedin"></i>
							</a>
						</div>
					</div>

					<div class="col-lg-2 col-md-3 footer-links">
						<h4>Useful Links</h4>
						<ul>
							<li>
								<i class="bi bi-chevron-right"></i>
								<a href="TrangChu.jsp"> Home</a>
							</li>
							<li>
								<i class="bi bi-chevron-right"></i>
								<a href="#"> About us</a>
							</li>
							<li>
								<i class="bi bi-chevron-right"></i>
								<a href="#"> Services</a>
							</li>
							<li>
								<i class="bi bi-chevron-right"></i>
								<a href="#"> Terms of service</a>
							</li>
							<li>
								<i class="bi bi-chevron-right"></i>
								<a href="#"> Privacy policy</a>
							</li>
						</ul>
					</div>

					<div class="col-lg-2 col-md-3 footer-links">
						<h4>Our Services</h4>
						<ul>
							<li>
								<i class="bi bi-chevron-right"></i>
								<a href="#"> Web Design</a>
							</li>
							<li>
								<i class="bi bi-chevron-right"></i>
								<a href="#"> Web Development</a>
							</li>
							<li>
								<i class="bi bi-chevron-right"></i>
								<a href="#"> Product Management</a>
							</li>
							<li>
								<i class="bi bi-chevron-right"></i>
								<a href="#"> Marketing</a>
							</li>
							<li>
								<i class="bi bi-chevron-right"></i>
								<a href="#"> Graphic Design</a>
							</li>
						</ul>
					</div>

					<div class="col-lg-4 col-md-12 footer-newsletter">
						<h4>Our Newsletter</h4>
						<p>Subscribe to our newsletter and receive the latest news about our products and services!</p>
						<form action="forms/newsletter.php" method="post" class="php-email-form">
							<div class="newsletter-form">
								<input type="email" name="email">
								<input type="submit" value="Subscribe">
							</div>
							<div class="loading">Loading</div>
							<div class="error-message"></div>
							<div class="sent-message">Your subscription request has been sent. Thank you!</div>
						</form>
					</div>

				</div>
			</div>
		</div>

		<!--
		<div class="copyright">
			<div class="container text-center">
				<p>
					©
					<span>Copyright</span>
					<strong class="px-1 sitename">GP</strong>
					<span>All Rights Reserved</span>
				</p>
				<div class="credits">
					Designed by
					<a href="https://bootstrapmade.com/">BootstrapMade</a>			
				</div>
			</div>
		</div>
		-->

	</footer>

	<!-- Scroll Top -->
	<a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center">
		<i class="bi bi-arrow-up-short"></i>
	</a>

	<!-- Preloader -->
	<div id="preloader"></div>

	<!-- Vendor JS Files -->
	<script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/php-email-form/validate.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/aos/aos.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/swiper/swiper-bundle.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/glightbox/js/glightbox.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/vendor/purecounter/purecounter_vanilla.js"></script>

	<!-- Main JS File -->
	<script src="${pageContext.request.contextPath}/assets/js/GpMain.js"></script>
</body>
</html>