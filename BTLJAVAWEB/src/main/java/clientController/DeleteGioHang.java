package clientController;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import clientModel.GioHang;
import model.SanPham;

/**
 * Servlet implementation class DeleteGioHang
 */
@WebServlet("/DeleteGioHang")
public class DeleteGioHang extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteGioHang() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String productId = request.getParameter("productId");

	        // Giả sử Cart là đối tượng lưu giỏ hàng trong session
	        HttpSession session = request.getSession();
	        List<GioHang> cart = (List<GioHang>) session.getAttribute("gioHangList");

	        if (cart != null) {
	            cart.removeIf(item -> item.getMasanpham().equals(productId)); // Xóa sản phẩm khỏi giỏ hàng
	            session.setAttribute("gioHangList", cart); // Cập nhật lại giỏ hàng trong session
	        }

	        // Sau khi xóa, chuyển hướng lại về trang giỏ hàng
	        //response.sendRedirect(request.getContextPath() + "/giohang.jsp");
            request.getRequestDispatcher("/Homepage/GioHang.jsp").forward(request, response);

	    }
	
	}


