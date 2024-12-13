<!-- Tách riêng các thẻ sách của trang chủ ra để tái sử dụng -->
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- ======= Bookcard Template ======= -->
<div class="product-item ${param.category}">
	<div class="product product_filter">
		<!-- Product Image -->
		<div class="product_image" style="width: 100%; height: 220px; overflow: hidden; display: flex; justify-content: center; align-items: center; background-color: #f9f9f9;">
			<img src="${param.image}" alt="${param.productName}" style="max-width: 100%; max-height: 100%; object-fit: contain;">
		</div>

		<!-- Bubble and Favorite Icon (Optional bubble, Must-have icon) -->
		<c:choose>
			<c:when test="${param.bubbleType == 'green' and not empty param.bubbleText}">
				<div class="product_bubble product_bubble_left product_bubble_${param.bubbleType} d-flex flex-column align-items-center">
					<span>${param.bubbleText}</span>
				</div>
				<div class="favorite"></div>
			</c:when>

			<c:when test="${param.bubbleType == 'red' and not empty param.bubbleText}">
				<div class="favorite favorite_left"></div>
				<div class="product_bubble product_bubble_right product_bubble_${param.bubbleType} d-flex flex-column align-items-center">
					<span>${param.bubbleText}</span>
				</div>
			</c:when>

			<c:otherwise>
				<div class="favorite"></div>
			</c:otherwise>
		</c:choose>

		<!-- Product Info -->
		<div class="product_info">
			<h6 class="product_name">
				<a href="${pageContext.request.contextPath}/Homepage/SanPham.jsp?productId=${param.productId}">${param.productName}</a>
			</h6>
			<div class="product_price">
				<c:choose>
					<c:when test="${not empty param.newPrice}">
						$${param.newPrice}
						<span>$${param.price}</span>
					</c:when>

					<c:otherwise>
						$${param.price}
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>

	<!-- Add to Cart Form (Optional) -->
	<c:if test="${'true' == param.addToCart}">
		<form action="${pageContext.request.contextPath}/addGioHang" method="post">
			<input type="hidden" name="productId" value="${param.productId}">
			<input type="hidden" name="productName" value="${param.productName}">
			<input type="hidden" name="price" value="${param.price}">
			<input type="hidden" name="quantity" value="1">
			<input type="hidden" name="image" value="${param.image}">
			<button type="submit" class="red_button add_to_cart_button">Add to Cart</button>
		</form>
	</c:if>
</div>