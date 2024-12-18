package controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.KhachHangDAO;
import model.KhachHang;

@WebServlet("/dang-nhap")
public class DangNhap extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public DangNhap() {
        super();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Always forward to the login page for GET requests
        RequestDispatcher rd = request.getRequestDispatcher("/Homepage/DangNhap.jsp");
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve username and password from form
        String tendangnhap = request.getParameter("tendangnhap");
        String matkhau = request.getParameter("matkhau");

        // Create a KhachHang object for validation
        KhachHang kh = new KhachHang();
        kh.setTendangnhap(tendangnhap);
        kh.setMatkhau(matkhau);

        // DAO for database access
        KhachHangDAO khDAO = new KhachHangDAO();
        KhachHang khachhang = khDAO.selectByIDandPassword(kh);

        if (khachhang != null) { // Successful login
            HttpSession session = request.getSession();
            session.setAttribute("KhachHang", khachhang);

            // Redirect to a Servlet instead of directly to JSP
            response.sendRedirect(request.getContextPath() + "/Homepage/TrangChu.jsp");
        } else { // Failed login
            request.setAttribute("baoloi", "Tên đăng nhập hoặc mật khẩu không đúng");

            // Forward back to login page
            RequestDispatcher rd = request.getRequestDispatcher("/Homepage/DangNhap.jsp");
            rd.forward(request, response);
        }
    }
}
