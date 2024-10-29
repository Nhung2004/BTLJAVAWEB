<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<link href="css/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap.bundle.min.js"></script>
<style>
#msg{
	color:red;
}
</style>
</body>

<%String baoloi=request.getAttribute("baoloi")+"";baoloi=(baoloi.equals("null"))?"":baoloi;%>
<div class="container">
<form action="dang-nhap" method="post">
  <div class="mb-3">
    <div class="msg" id="baoloi">
      <%=baoloi %>
    </div>
    <label for="tendangnhap" class="form-label">Tên Đăng Nhập</label>
    <input type="text" class="form-control" id="tendangnhap" name="tendangnhap">
    <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
  </div>
  <div class="mb-3">
    <label for="matkhau" class="form-label">Mật Khẩu</label>
    <input type="password" class="form-control" id="matkhau" name="matkhau">
  </div>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
</div>
</html>