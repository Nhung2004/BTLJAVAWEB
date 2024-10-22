<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang Dang ky</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="NewFile.css" rel="stylesheet">
<script src="js/bootstrap.bundle.min.js"></script>
<style>
#msg{
color:red;


}

.msg{
color:red;
}
</style>



</head>
<body>
<%
String baoloi=request.getAttribute("baoloi")+"";
baoloi=(baoloi.equals("null"))?"":baoloi;

String tendangnhap=request.getAttribute("tendangnhap")+"";
tendangnhap=(tendangnhap.equals("null"))?"":tendangnhap;

String matkhau=request.getAttribute("matkhau")+"";
matkhau=(matkhau.equals("null"))?"":matkhau;

String nhaplaimatkhau=request.getAttribute("nhaplaimatkhau")+"";
nhaplaimatkhau=(nhaplaimatkhau.equals("null"))?"":nhaplaimatkhau;

String hovaten=request.getAttribute("hovaten")+"";
hovaten =(hovaten.equals("null"))?"":hovaten;

String gioitinh=request.getAttribute("gioitinh")+"";
gioitinh=(gioitinh.equals("null"))?"":gioitinh;

String ngaysinh=request.getAttribute("ngaysinh")+"";
ngaysinh=(ngaysinh.equals("null"))?"":ngaysinh;

String diachimuahang=request.getAttribute("diachimuahang")+"";
diachimuahang=(diachimuahang.equals("null"))?"":diachimuahang;

String diachikhachhang=request.getAttribute("diachikhachhang")+"";
diachikhachhang=(diachikhachhang.equals("null"))?"":diachikhachhang;
 
String diachinhanhang=request.getAttribute("diachinhanhang")+"";
diachinhanhang=(diachinhanhang.equals("null"))?"":diachinhanhang;

String dienthoai= request.getAttribute("dienthoai")+"";
dienthoai = (dienthoai.equals("null"))?"":dienthoai;

String email= request.getAttribute("email")+"";
email = (email.equals("null"))?"":email;

%>

<div class="container">
<h1 class="text-center">Đăng Ký Tài Khoản</h1>
    <form action="dang-ky" method="get"> <!-- 'dangkyServlet' là URL xử lý -->

<div class="msg" id="baoloi">
			<%=baoloi %>
		</div>

<div class="form">
<div class="row">

<div class="col-md-6">
<h4>Tài Khoản</h4>

<div>
<label class="form-label" for="tendangnhap">Tên Đăng Nhập</label>
<input class="form-control" type="text" id="tendangnhap" name="tendangnhap" required value="<%=tendangnhap%>">
</div>

<div>
<label class="form-label" for="matkhau">Mật Khẩu</label>
<input class="form-control" type="password" id="matkhau" name="matkhau" required onkeyup="kiemtramatkhau()">
</div>

<div>
<label class="form-label" for="nhaplaimatkhau">Nhập Lại Mật Khẩu<span id="msg"></span></label>
<input class="form-control" type="password" id="nhaplaimatkhau" name="nhaplaimatkhau" required onkeyup="kiemtramatkhau()">
</div>

<h4 class="mt-3">Thông tin khách hàng</h4>

<div>
<label class="form-label" for="hovaten">Họ Và Tên</label>
<input class="form-control" type="text" id="hovaten" name="hovaten" value="<%=hovaten%>">
</div>
<div>
<label class="form-label" for="gioitinh">giới tính</label>
<select class="form-select" >
  <option value="1">Nam</option>
  <option value="2">Nữ</option>
  <option value="3">Khác</option>
</select>
</div>



<div>
<label class="form-label" for="ngaysinh">Ngày Sinh</label>
<input class="form-control" type="date" id="ngaysinh" name="ngaysinh" value="<%=ngaysinh%>">
</div>






</div>



<div class="col-md-6">
<h4>Địa Chỉ</h4>
<div>
<label class="form-label" for="diachikhachhang">Địa Chỉ Khách Hàng</label>
<input class="form-control" type="text" id="diachikhachhang" name="diachikhachhang" value="<%=diachikhachhang%>">
</div>

<div>
<label class="form-label" for="diachimuahang">Đại Chỉ Mua Hàng</label>
<input class="form-control" type="text" id="diachimuahang" name="diachimuahang" value="<%=diachimuahang%>">
</div>

<div>
<label class="form-label" for="diachinhanhang">Địa Chỉ Nhận Hàng</label>
<input class="form-control" type="text" id="diachinhanhang" name="diachinhanhang" value="<%=diachinhanhang%>">
</div>

<div>
<label class="form-label" for="dienthoai">Điện Thoại</label>
<input class="form-control" type="number" id="dienthoai" name="dienthoai" value="<%=dienthoai%>">
</div>
<div>
<label class="form-label" for="email">email</label>
<input class="form-control" type="email" id="email" name="email" value="<%=email%>"></div>

<div class="mt-3">
<label for="dongy" class="form-check-label"><b>Đông ý với điều khoản công ty</b></label>
<input type="checkbox" class="form-check-input" id="dongy">
</div>

<div class="mt-3">
<label for="dongynhanemail" class="form-check-label"><b>Đông ý nhận email</b></label>
<input type="checkbox" class="form-check-input" id="dongynhanemail">
</div>

<input class="btn btn-primary" type="submit" id="dangky" value="Đăng Ký">




</div>


</div>

</div>
</form>
<script src="js/bootstrap.bundle.min.js"></script>

</body>
<script type="text/javascript">
   function kiemtramatkhau(){
	   matkhau=document.getElementById("matkhau").value;
	   nhaplaimatkhau=document.getElementById("nhaplaimatkhau").value;
	   if(matkhau!=nhaplaimatkhau){
		   document.getElementById("msg").innerHTML="mật khẩu không khớp";
		   return false;
	   }
	   else{
		   document.getElementById("msg").innerHTML=" ";
		   return true;
	   }
   }
   // dùng javascript chỉ đến hiển thị các phần có trên trang jsp thôi 
   // còn nếu dùng cơ sở dữ liệu thì phải dùng đến 
   
   function kiemtradongy(){
	   
   }
  

</script>


</html>