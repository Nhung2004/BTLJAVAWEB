<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="java.sql.*"%>
<%@ page import="database.KhachHangDAO"%>
<%@ page import="model.KhachHang"%>
<%@ page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="keywords" content="">
<title>Users Management</title>

<!-- Favicons -->
<link href="${pageContext.request.contextPath}/assets/img/favicon.png" rel="icon">
<link href="${pageContext.request.contextPath}/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

<!-- Google Fonts -->
<link href="https://fonts.gstatic.com" rel="preconnect">
<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/quill/quill.snow.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/assets/vendor/simple-datatables/style.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>

<!-- Template Main CSS File -->
<link href="${pageContext.request.contextPath}/assets/css/NiceAdminMain.css" rel="stylesheet">
<style>
.pagination .page-link {
    color: #007bff; /* Màu xanh đẹp */
    border: 1px solid #dee2e6;
    transition: background-color 0.3s, color 0.3s;
}

.pagination .page-item.active .page-link {
    background-color: #007bff;
    color: #fff;
    border-color: #007bff;
}

.pagination .page-link:hover {
    background-color: #f8f9fa;
    color: #0056b3;
}
</style>
</head>
<body>
    <!-- Include Header and Sidebar -->
    <jsp:include page="Parts/Header.jsp" />
    <jsp:include page="Parts/Sidebar.jsp" />

    <!-- Nội dung chính (Account Management) -->
    <main id="main" class="main">
        <!-- Biểu đồ thống kê số tài khoản người dùng -->
        <div class="container py-4">
            <h2 class="text-center mb-4">Account Statistics by Month</h2>
            <canvas id="accountStatsChart" width="400" height="200"></canvas>
        </div>

        <%
        // Lấy thống kê số tài khoản theo tháng từ DAO
        KhachHangDAO khDAO = new KhachHangDAO();
        int[] monthlyStats = khDAO.getAccountStatisticsByMonth(); // Giả sử hàm này trả về mảng gồm số tài khoản theo từng tháng (12 tháng)

        // Kiểm tra giá trị trả về của monthlyStats
        if (monthlyStats == null || monthlyStats.length < 12) {
            monthlyStats = new int[12]; // Đảm bảo có đủ 12 tháng
        }
        %>

    </main>

    <!-- Footer -->
    <footer id="footer" class="footer">
        <div class="credits">
            Designed by
            <a href="https://bootstrapmade.com/">BootstrapMade</a>
        </div>
        <div class="copyright">
            &copy; Copyright
            <strong>
                <span>NiceAdmin</span>
            </strong>
            . All Rights Reserved
        </div>
    </footer>

    <!-- Vendor JS Files -->

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            // Dữ liệu cho biểu đồ
            var data = {
                labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'], // Tên các tháng
                datasets: [{
                    label: 'User Accounts per Month',
                    data: [<%= monthlyStats[0] %>, <%= monthlyStats[1] %>, <%= monthlyStats[2] %>, <%= monthlyStats[3] %>, <%= monthlyStats[4] %>, <%= monthlyStats[5] %>, 
                           <%= monthlyStats[6] %>, <%= monthlyStats[7] %>, <%= monthlyStats[8] %>, <%= monthlyStats[9] %>, <%= monthlyStats[10] %>, <%= monthlyStats[11] %>], // Dữ liệu từ Java
                    backgroundColor: '#36a2eb', // Màu sắc cột
                    borderColor: '#36a2eb', // Màu viền cột
                    borderWidth: 1
                }]
            };

            // Tạo biểu đồ cột
            var ctx = document.getElementById('accountStatsChart').getContext('2d');
            var accountStatsChart = new Chart(ctx, {
                type: 'bar', // Loại biểu đồ (bar)
                data: data,
                options: {
                    responsive: true,
                    plugins: {
                        legend: {
                            position: 'top',
                        },
                        tooltip: {
                            callbacks: {
                                label: function(tooltipItem) {
                                    return tooltipItem.label + ': ' + tooltipItem.raw + ' accounts';
                                }
                            }
                        }
                    },
                    scales: {
                        y: {
                            beginAtZero: true // Đảm bảo trục Y bắt đầu từ 0
                        }
                    }
                }
            });
        });
    </script>

    <!-- Template Main JS File -->
    <script src="${pageContext.request.contextPath}/assets/js/NiceAdminMain.js"></script>
</body>
</html>
