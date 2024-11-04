<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Example Bootstrap2</title>
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="vendor/bootstrap/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
<link rel="Stylesheet" href="Style.css">

</head>
<body>
<!-- navbar demo -->

<div class="navbar navbar-expand-md bg-secondary" style="height:50px;">
<a href="" class="navbar-brand text-white"><img src="img/slider/Hpi.jpg " style="height:35px; margin-left:10px;"></a>
<button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#nav" ><span class="navbar-toggler-icon"></span></button>
<div class="collapse navbar-collapse" id="nav">
<div class="navbar-nav">
<ul class="navbar-nav">
<li class="nav-item "><a href="" class="nav-link active text-white">Home</a></li>
<li class="nav-item"><a href="" class="nav-link ">Combo</a></li>
<li class="nav-item"><a href="" class="nav-link " >Khuyển mãi</a></li>
<li class="nav-item dropdown"><a href="" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"  >Thể Loại</a>
<ul class="dropdown-menu">
<li class="dropdown-item">Quần Bò</a></li>
<li class="dropdown-item">Quần Jean</a></li>
<li class="dropdown-item">Áo Thun</a></li>
<li class="dropdown-item">Áo Dài</a></li>
</ul>
</li>
<li class="nav-item"><a href="" class="nav-link " disabled>Hết Hàng</a></li>
</ul>
</div>
</div>
<form class="d-flex">
<div class="input-group">
<input class="form-control" type="text" id="timkiem" name="timkiem" placeholder="Nhập từ Khóa">
<button class="btn btn-info" type="submit" >Tìm</button>
</div>
</form>
</div>
.<!-- end navbar demo -->

<div class="container">
<div class="row">
<div class="col-3 bg-primary-key">
<div class="list-group">
  <a href="#" class="list-group-item list-group-item-action bg-warning">
    Sản Phẩm Bán Chạy Nhất
  </a>
  <a href="#" class="list-group-item list-group-item-action">Quần Bò</a>
  <a href="#" class="list-group-item list-group-item-action">Quần Jean</a>
  <a href="#" class="list-group-item list-group-item-action">Áo Khoác</a>
  <a class="list-group-item list-group-item-action disabled" aria-disabled="true">Áo zin</a>
</div>
</div>


<div class="col-9">
<div id="carouselExample" class="carousel slide" data-bs-ride="carousel" data-bs-interval="1000">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="img/slider/H1.PNG" class="d-block w-100" alt="1" >
    </div>
    <div class="carousel-item">
      <img src="img/slider/Hpi.jpg" class="d-block w-100" alt="2"  >
    </div>
    <div class="carousel-item">
      <img src="img/slider/H1.PNG" class="d-block w-100" alt="3"  >
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>


.<!-- card -->
<div class="row">
<div class="col-3 mb-4">
.<!-- card -->
<div class="card">
<img src="img/slider/aobo.PNG " height="200px" class="card-img-top">
<div class=" card-header">Tieu de</div>
<div class="card-body">  .<!-- card-img-overlay: chữ chèn ảnh -->
<div class="card-title"><h5>Card Title</h5></div>
<div class="card-subtitle"> card tiltle í tieude</div>
<div class="card-text">
CSS: https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css (thay phiên bản theo nhu cầu).
JavaScript: Bạn cần jQuery, Popper.js và Bootstrap JavaScript

</div>

</div>
<div class="card-footer">The end</div>
</div>
</div>

<div class="col-3 mb-4">
.<!-- card -->
<div class="card">
<img src="img/slider/aobo.PNG " height="200px" class="card-img-top">
<div class=" card-header">Tieu de</div>
<div class="card-body">  .<!-- card-img-overlay: chữ chèn ảnh -->
<div class="card-title"><h5>Card Title</h5></div>
<div class="card-subtitle"> card tiltle í tieude</div>
<div class="card-text">
CSS: https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css (thay phiên bản theo nhu cầu).
JavaScript: Bạn cần jQuery, Popper.js và Bootstrap JavaScript

</div>

</div>
<div class="card-footer">The end</div>
</div>
</div>

<div class="col-3 mb-4 ">
.<!-- card -->
<div class="card">
<img src="img/slider/aobo.PNG " height="200px" class="card-img-top">
<div class=" card-header">Tieu de</div>
<div class="card-body">  .<!-- card-img-overlay: chữ chèn ảnh -->
<div class="card-title"><h5>Card Title</h5></div>
<div class="card-subtitle"> card tiltle í tieude</div>
<div class="card-text">
CSS: https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css (thay phiên bản theo nhu cầu).
JavaScript: Bạn cần jQuery, Popper.js và Bootstrap JavaScript

</div>

</div>
<div class="card-footer">The end</div>
</div>
</div>




</div>
</div>
</div>



</body>
</html>