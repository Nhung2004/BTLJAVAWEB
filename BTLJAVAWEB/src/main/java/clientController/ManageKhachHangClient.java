package clientController;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.KhachHangDAO;
import model.KhachHang;

@WebServlet("/ManageKhachHangClient")
public class ManageKhachHangClient extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ManageKhachHangClient() {
        super();
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        KhachHangDAO khachHangDAO = new KhachHangDAO();

        // Lấy các tham số từ form
        String makhachhang = request.getParameter("makhachhang");
        String hovaten = request.getParameter("hovaten");
        String email = request.getParameter("email");
        String sodienthoai = request.getParameter("sodienthoai");
        String diachi = request.getParameter("diachi");
        String matkhau = request.getParameter("matkhau");
        String tendangnhap = request.getParameter("tendangnhap");
        String gioitinh = request.getParameter("gioitinh");
        String diachinhanhang = request.getParameter("diachinhanhang");
        String diachimuahang = request.getParameter("diachimuahang");
        String dangkynhantin = request.getParameter("dangkynhantin");
        String role = request.getParameter("role");
        String ngaysinhStr = request.getParameter("ngaysinh");

        if (hovaten != null && gioitinh != null && diachi != null && diachinhanhang != null && sodienthoai != null  && email != null) {
            // Chuyển đổi ngày sinh từ String sang java.util.Date
            Date ngaysinh = null;
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
                ngaysinh = sdf.parse(ngaysinhStr);
            } catch (Exception e) {
                e.printStackTrace();
                request.setAttribute("message", "Định dạng ngày sinh không hợp lệ.");
                request.getRequestDispatcher("/ProfileClient.jsp").forward(request, response);
                return;
            }

            // Chuyển đổi java.util.Date sang java.sql.Date
            java.sql.Date sqlNgaysinh = new java.sql.Date(ngaysinh.getTime());

            // Tạo đối tượng KhachHang
            KhachHang kh = new KhachHang(makhachhang, tendangnhap, matkhau, hovaten, gioitinh, diachi,
            		 diachinhanhang,diachimuahang, sqlNgaysinh, sodienthoai, email, false, role);

            // Cập nhật khách hàng vào cơ sở dữ liệu
            int result = khachHangDAO.updateClient(kh);

            if (result > 0) {
                request.setAttribute("message", "Cập nhật tài khoản thành công.");
                System.out.println("Edit Success");
            } else {
                request.setAttribute("message", "Không thể cập nhật tài khoản.");
                System.out.println("Edit Failed");
            }
        } else {
            request.setAttribute("message", "Vui lòng điền đầy đủ thông tin.");
            request.getRequestDispatcher("/ProfileClient.jsp").forward(request, response);
            return;
        }

        // Gọi lại phương thức doGet để xử lý yêu cầu GET
        doGet(request, response);
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Xử lý yêu cầu GET (ví dụ: hiển thị thông tin khách hàng)
        KhachHangDAO khachHangDAO = new KhachHangDAO();
        HttpSession session = request.getSession();

        // Lấy khách hàng từ database và đặt vào session
        String makhachhang = request.getParameter("makhachhang");
        KhachHang kh = khachHangDAO.selectByIdCl(makhachhang);
        session.setAttribute("KhachHang", kh);

        // Chuyển tiếp đến trang ProfileClient.jsp
        response.sendRedirect(request.getContextPath() + "/Homepage/DangNhap.jsp");
    }
}
