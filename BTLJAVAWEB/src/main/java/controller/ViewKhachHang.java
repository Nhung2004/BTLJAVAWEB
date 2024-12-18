package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import database.KhachHangDAO;
import model.KhachHang;

/**
 * Servlet implementation class ViewKhachHang
 */
@WebServlet("/ViewKhachHang")
public class ViewKhachHang extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ViewKhachHang()
	{
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());

		// lấy từ csdl ra để hiển thị
		KhachHangDAO    khachHangDAO = new KhachHangDAO();
		List<KhachHang> listkh       = khachHangDAO.selectAll(); // Lấy danh sách khách hàng từ DB
		// Đưa danh sách vào request attribute
		request.setAttribute("listkhp", listkh);
		// // Chuyển tiếp đến trang JSP
		RequestDispatcher dispatcher = request.getRequestDispatcher("/Dashboard/Account.jsp");
		dispatcher.forward(request, response);

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
