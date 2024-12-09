<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Your Cart</title>

    <!-- Bootstrap CSS -->
    <link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/vendor/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Main CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/GpMain.css" rel="stylesheet">

    <style>
        /* Simplified interface */
        .btn:hover {
            transform: scale(1.02);
            transition: 0.3s;
        }

        /* Table header color */
        .table-primary th {
            background-color: #6c63ff;
            color: #fff;
        }

        /* Remove shadow and border-radius */
        img {
            width: 100px;
            height: 100px;
            object-fit: cover;
        }

        .btn-success {
            background-color: #28a745 !important;
        }

        .btn-danger {
            background-color: #dc3545 !important;
        }
    </style>
</head>

<body>
    <main class="main">
        <!-- Cart Section -->
        <section id="cart" class="cart section">
            <div class="container">
                <h2 class="text-center mt-5 text-primary">
                    <i class="bi bi-cart4"></i> Your Cart
                </h2>
                <p class="text-center text-muted">
                    Please review the products before proceeding to checkout.
                </p>

                <!-- Cart table -->
                <div class="table-responsive mt-4">
                    <table class="table table-bordered text-center align-middle">
                        <thead class="table-primary">
                            <tr>
                                <th>Image <i class="bi bi-card-image"></i></th>
                                <th>Product Name <i class="bi bi-tag"></i></th>
                                <th>Price <i class="bi bi-cash-coin"></i></th>
                                <th>Quantity <i class="bi bi-bag-fill"></i></th>
                                <th>Total Price <i class="bi bi-calculator-fill"></i></th>
                                <th>Actions <i class="bi bi-gear-fill"></i></th>
                            </tr>
                        </thead>
                        <tbody>
                            <!-- Iterate over each product -->
                            <c:forEach var="item" items="${gioHangList}">
                                <tr>
                                    <td>
                                        <img src="${item.image}" alt="${item.tensanpham}">
                                    </td>
                                    <td class="fw-bold">${item.tensanpham}</td>
                                    <td><fmt:formatNumber value="${item.gia}" type="currency" /></td>
                                    <td>
                                        <form action="${pageContext.request.contextPath}/updateCart" method="post" class="d-flex justify-content-center align-items-center">
                                            <input type="hidden" name="productId" value="${item.masanpham}">
                                            <input type="number" name="quantity" value="${item.soluong}" min="1" class="form-control text-center" style="width: 80px;">
                                            <button type="submit" class="btn btn-sm btn-success ms-2">
                                                <i class="bi bi-arrow-repeat"></i>
                                            </button>
                                        </form>
                                    </td>
                                    <td class="text-success"><fmt:formatNumber value="${item.gia * item.soluong}" type="currency" /></td>
                                    <td>
                                        <form action="${pageContext.request.contextPath}/DeleteGioHang" method="post">
                                            <input type="hidden" name="productId" value="${item.masanpham}">
                                            <button type="submit" class="btn btn-sm btn-danger">
                                                <i class="bi bi-trash"></i> Remove
                                            </button>
                                        </form>
                                    </td>
                                </tr>
                            </c:forEach>
                        </tbody>
                        <tfoot>
                            <tr>
                                <th colspan="4" class="text-end">Total:</th>
                                <th class="text-success fw-bold">
                                    <fmt:formatNumber value="${totalPrice}" type="currency" />
                                </th>
                                <th></th>
                            </tr>
                        </tfoot>
                    </table>
                </div>

                <!-- Checkout button -->
                <div class="text-center mt-4">
                    <a href="${pageContext.request.contextPath}/Homepage/ThanhToan.jsp" class="btn btn-primary btn-lg">
                        <i class="bi bi-credit-card"></i> Checkout
                    </a>
                </div>
            </div>
        </section>
    </main>

    <!-- Scroll Top -->
    <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center">
        <i class="bi bi-arrow-up-short"></i>
    </a>

    <!-- Vendor JS -->
    <script src="${pageContext.request.contextPath}/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>
