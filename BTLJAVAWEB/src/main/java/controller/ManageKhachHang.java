package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.List;
import javax.servlet.RequestDispatcher;
import database.KhachHangDAO;
import model.KhachHang;

/**
 * Servlet implementation class Quanlytaikhoan
 */
@WebServlet("/ManageKhachHang")
public class ManageKhachHang extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	public ManageKhachHang()
	{
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// Hiển thị danh sách khách hàng
		KhachHangDAO    khachHangDAO = new KhachHangDAO();
		List<KhachHang> listkh       = khachHangDAO.selectAll();
		request.setAttribute("listkhp", listkh);

		// Chuyển tiếp đến trang JSP
		RequestDispatcher dispatcher = request.getRequestDispatcher("/Dashboard/Account.jsp");
		dispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");

		String chucNang = request.getParameter("chucNang");

		if(chucNang == null || chucNang.isEmpty())
		{
			response.sendRedirect(request.getContextPath() + "/Dashboard/Account.jsp");
			return;
		}

		// Initialize the DAO for database operations
		KhachHangDAO khachHangDAO = new KhachHangDAO();

		switch (chucNang)
		{
			case "Xoa":
			{
				// Handle account deletion
				String makhachhang = request.getParameter("makhachhang");

				if(makhachhang != null)
				{
					KhachHang kh = new KhachHang();
					kh.setMakhachhang(makhachhang);

					int result = khachHangDAO.delete(kh);

					if(result > 0)
					{
						request.setAttribute("message", "Xóa tài khoản thành công.");
						System.out.println("Del Success");
					}
					else
					{
						request.setAttribute("message", "Không thể xóa tài khoản.");
						System.out.println("Del Failed");
					}
				}
				break;
			}
			case "Sua":
			{
				String makhachhang = request.getParameter("makhachhang");
				String tendangnhap = request.getParameter("tendangnhap");
				String matkhau     = request.getParameter("matkhau");
				String sodienthoai = request.getParameter("sodienthoai");
				String email       = request.getParameter("email");

				if(makhachhang != null && tendangnhap != null && matkhau != null && sodienthoai != null && email != null)
				{
					KhachHang kh     = new KhachHang(makhachhang, tendangnhap, matkhau, sodienthoai, email);
					int       result = khachHangDAO.update(kh);

					if(result > 0)
					{
						request.setAttribute("message", "Cập nhật tài khoản thành công.");
						System.out.println("Edit Success");
					}
					else
					{
						request.setAttribute("message", "Không thể cập nhật tài khoản.");
						System.out.println("Edit Failed");
					}
				}
				break;
			}
			case "Them":
			{
				String makhachhang = request.getParameter("makhachhang");
				String tendangnhap = request.getParameter("tendangnhap");
				String matkhau     = request.getParameter("matkhau");
				String sodienthoai = request.getParameter("sodienthoai");
				String email       = request.getParameter("email");

				if(makhachhang != null && tendangnhap != null && matkhau != null && sodienthoai != null && email != null)
				{
					KhachHang kh     = new KhachHang(makhachhang, tendangnhap, matkhau, sodienthoai, email);
					int       result = khachHangDAO.insert(kh);

					if(result > 0)
					{
						request.setAttribute("message", "Thêm tài khoản mới thành công.");
						System.out.println("Add Success");
					}
					else
					{
						request.setAttribute("message", "Không thể thêm tài khoản mới.");
						System.out.println("Add Failed");
					}
				}

				break;
			}
			default:
			{
				System.out.println("Chức năng không hợp lệ: " + chucNang);
				break;
			}
		}

		doGet(request, response);
	}
}