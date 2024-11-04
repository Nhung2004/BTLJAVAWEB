<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h2>Thêm Sản Phẩm</h2>
    <form action="product?action=add" method="post" enctype="multipart/form-data">
        <label>Tên sản phẩm:</label>
        <input type="text" name="name" required><br>
        
        <label>Giá:</label>
        <input type="number" name="price" step="0.01" required><br>
        
        <label>Số lượng:</label>
        <input type="number" name="quantity" required><br>
        
        <label>Ảnh sản phẩm:</label>
        <input type="file" name="image" accept="image/*" required onchange="previewImage(event)"><br>
        
        <img id="preview" src="" alt="Preview Image" width="200"><br> <!-- Ảnh xem trước -->
        
        <input type="submit" value="Thêm">
    </form>

    <script>
        // Hàm để xem trước ảnh
        function previewImage(event) { // event đại diện cho sự kiện change  khi người dùng chọn 1 tệp
        	                           // từ <input type="file">
            const preview = document.getElementById('preview');// lấy thẻ img với id bằng preview
            const file = event.target.files[0]; // Lấy tệp hình ảnh mà người dùng vừa chọn
                                                 // từ <input type="file">
            const reader = new FileReader(); // Tạo đối tượng FileReader
            
            reader.onload = function() {
                preview.src = reader.result; // Đặt nguồn cho ảnh xem trước
                preview.style.display = 'block'; // Hiển thị ảnh
            }
            
            if (file) {
                reader.readAsDataURL(file); // Đọc file dưới dạng URL
            }
        }
    </script>
</body>
</html>