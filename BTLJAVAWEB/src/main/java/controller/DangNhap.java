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

/**
 * Servlet implementation class DangNhap
 */
@WebServlet("/dang-nhap")
public class DangNhap extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangNhap() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    String tendangnhap = request.getParameter("tendangnhap");
	    String matkhau = request.getParameter("matkhau");

	    KhachHang kh = new KhachHang();
	    kh.setTendangnhap(tendangnhap);
	    kh.setMatkhau(matkhau);

	    KhachHangDAO khd = new KhachHangDAO(); 
	    KhachHang khachhang = khd.selectByIDandPassword(kh);

	    String url = "";
	    if (khachhang != null) {
	        HttpSession session = request.getSession();
	        session.setAttribute("KhachHang", khachhang);
	        url = "/TrangChu.jsp";  // Chuyển đến trang chủ khi đăng nhập thành công
	    } else {
	        request.setAttribute("baoloi", "Tên đăng nhập hoặc mật khẩu không đúng");
	        url = "/DangNhapp.jsp";  // Quay lại trang đăng nhập nếu sai thông tin
	    }

	    RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
	    rd.forward(request, response);
	}

}
