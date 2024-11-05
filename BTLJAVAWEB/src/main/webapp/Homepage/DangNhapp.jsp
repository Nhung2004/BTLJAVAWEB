<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Đăng Nhập</title>
    <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <script src="../assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <style>
        #msg {
            color: red;
        }
    </style>
</head>
<body>
<%
    String baoloi = request.getAttribute("baoloi") + "";
    baoloi = (baoloi.equals("null")) ? "" : baoloi;
%>

<!--  
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
-->
  <main>
    <div class="container">

      <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
        <div class="container">
          <div class="row justify-content-center">
            <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

              <div class="d-flex justify-content-center py-4">
               
              </div><!-- End Logo -->

              <div class="card mb-3">

                <div class="card-body">

                  <div class="pt-4 pb-2">
                    <h5 class="card-title text-center pb-0 fs-4">Login to Your Account</h5>
                    <p class="text-center small">Enter your username & password to login</p>
                  </div>

                  <form class="row g-3 needs-validation" novalidate>

                    <div class="col-12">
                      <label for="tendangnhap" class="form-label">Tên Đăng Nhập</label>
                      <div class="input-group has-validation">
                        <input type="text" name="tendangnhap" class="form-control" id="tendangnhap" required>
                        <div class="invalid-feedback">Please enter your username.</div>
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="matkhau" class="form-label">Password</label>
                      <input type="password" name="matkhau" class="form-control" id="matkhau" required>
                      <div class="invalid-feedback">Please enter your password!</div>
                    </div>

                    <div class="col-12">
                      <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="remember" value="true" id="rememberMe">
                        <label class="form-check-label" for="rememberMe">Remember me</label>
                      </div>
                    </div>
                    <div class="col-12">
                      <button class="btn btn-primary w-100" type="submit">Login</button>
                    </div>
                    <div class="col-12">
                      <p class="small mb-0">Don't have account? <a href="pages-register.html">Create an account</a></p>
                    </div>
                  </form>

                </div>
              </div>

              <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
              </div>

            </div>
          </div>
        </div>

      </section>

    </div>
  </main><!-- End #main -->