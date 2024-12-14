package clientController;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import clientDatabase.GioHangDAO;
import clientModel.GioHang;

/**
 * Servlet implementation class addGioHang
 */
@WebServlet("/addGioHang")
public class addGioHang extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public addGioHang() {
        super();
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String productId = request.getParameter("productId");
            String productName = request.getParameter("productName");
            String image = request.getParameter("image");
            double price = Double.parseDouble(request.getParameter("price"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));

            GioHang gioHang = new GioHang();
            gioHang.setMasanpham(productId);
            gioHang.setTensanpham(productName);
            gioHang.setImage(image);
            gioHang.setGia(price);
            gioHang.setSoluong(quantity);

            GioHangDAO gioHangDAO = new GioHangDAO();
            boolean productExists = false;

            for (GioHang item : gioHangDAO.selectAll()) {
                if (item.getMasanpham().equals(productId)) {
                    item.setSoluong(item.getSoluong() + quantity);
                    gioHangDAO.update(item); // Cập nhật thông tin vào DB
                    productExists = true;
                    break;
                }
            }

            if (!productExists) {
                gioHangDAO.insert(gioHang); 
            }

            // Cập nhật giỏ hàng trong session
            HttpSession session = request.getSession();
            List<GioHang> cart = (List<GioHang>) session.getAttribute("gioHangList");
            if (cart == null) {
                cart = new ArrayList<>();
            }

            // Kiểm tra và cập nhật session
            boolean foundInSession = false;
            for (GioHang item : cart) {
                if (item.getMasanpham().equals(productId)) {
                    item.setSoluong(item.getSoluong() + quantity); // Cộng thêm số lượng trong session
                    foundInSession = true;
                    break;
                }
            }

            if (!foundInSession) {
                cart.add(gioHang); // Thêm sản phẩm vào session
            }

            session.setAttribute("gioHangList", cart); // Cập nhật lại session

           
            response.sendRedirect("ViewGioHang");
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Có lỗi xảy ra khi thêm sản phẩm vào giỏ hàng.");
            request.getRequestDispatcher("/Homepage/TrangChu.jsp").forward(request, response);
        }
    }
}