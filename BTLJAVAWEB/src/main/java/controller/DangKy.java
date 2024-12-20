package controller;

import java.io.IOException;
import java.sql.Date;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.KhachHangDAO;
import model.KhachHang;

/**
 * Servlet implementation class DangKy
 */
@WebServlet(name = "Homepage/DangKy", urlPatterns =
{ "/dang-ky" })
public class DangKy extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public DangKy()
	{
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String tendangnhap     = request.getParameter("tendangnhap");
		String matkhau         = request.getParameter("matkhau");
		String nhaplaimatkhau  = request.getParameter("nhaplaimatkhau");
		String hovaten         = request.getParameter("hovaten");
		String gioitinh        = request.getParameter("gioitinh");
		String ngaysinh        = request.getParameter("ngaysinh");
		String diachikhachhang = request.getParameter("diachikhachhang");
		String diachimuahang   = request.getParameter("diachimuahang");
		String diachinhanhang  = request.getParameter("diachinhanhang");
		String dienthoai       = request.getParameter("dienthoai");
		String email           = request.getParameter("email");
		String dongy           = request.getParameter("dongy");
		String role       = request.getParameter("role");

		request.setAttribute("tendangnhap", tendangnhap);
		request.setAttribute("matkhau", matkhau);
		request.setAttribute("nhaplaimatkhau", nhaplaimatkhau);
		request.setAttribute("hovaten", hovaten);
		request.setAttribute("gioitinh", gioitinh);
		request.setAttribute("ngaysinh", ngaysinh);
		request.setAttribute("diachikhachhang", diachikhachhang);
		request.setAttribute("diachimuahang", diachimuahang);
		request.setAttribute("diachinhanhang", diachinhanhang);
		request.setAttribute("dienthoai", dienthoai);
		request.setAttribute("email", email);
		request.setAttribute("dongy", dongy);

		String baoloi = "";

		// Kiểm tra mật khẩu
		if(!matkhau.equals(nhaplaimatkhau))
		{
			baoloi += "Mật khẩu không khớp. ";
		}

		// Kiểm tra tên đăng nhập đã tồn tại
		KhachHangDAO khachHangDAO = new KhachHangDAO();
		if(khachHangDAO.kiemTraTenDangNhap(tendangnhap))
		{
			baoloi += "Tên đăng nhập đã tồn tại. ";
		}

		// Kiểm tra ngày sinh có hợp lệ hay không
		Date ngaySinhDate = null;
		if(ngaysinh != null && !ngaysinh.trim().isEmpty())
		{
			try
			{
				ngaySinhDate = Date.valueOf(ngaysinh); // Chuyển thành Date nếu hợp lệ
			}
			catch (IllegalArgumentException e)
			{
				baoloi += "Ngày sinh không hợp lệ. Định dạng phải là YYYY-MM-DD. ";
			}
		}
		else
		{
			baoloi += "Ngày sinh không được để trống. ";
		}

		request.setAttribute("baoloi", baoloi);
		String url = "";

		if(baoloi.length() > 0)
		{
			url = "/Homepage/DangKy.jsp";
		}
		else
		{

			Random    rd          = new Random();
			String    makhachhang = System.currentTimeMillis() + rd.nextInt(1000) + "";
			KhachHang kh          = new KhachHang(makhachhang, tendangnhap, nhaplaimatkhau, hovaten, gioitinh, diachikhachhang, diachinhanhang, diachimuahang, ngaySinhDate, dienthoai, email, false,role);
			khachHangDAO.insert(kh);
			url = "/Homepage/DangNhap.jsp";

		}

		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
		//
		// RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		// if (rd != null) {
		// rd.forward(request, response);
		// } else {
		// throw new ServletException("Không thể tìm thấy trang đích: " + url);
		// }
		//

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

// sử dụng javatubles javatubles
// lấy tống số bản ghi trong cơ sở dữ liệu
//
/*
 * import org.javatubles.*
 * 
 * public class usercontrol{ priavre UserModel um; public usercontrol() {
 * 
 * this.um=new UserModel(); }
 * 
 * public boolean adduser.. public boolean deluser public boolean edituser public userobject
 * getUserObject( public userObject get userObject(string username, string userpassword) }
 */

/*
 * 
 * public class UserLibrary{
 * 
 */
