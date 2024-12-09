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

/**
 * Servlet implementation class ViewGioHang
 */
@WebServlet("/ViewGioHang")
public class ViewGioHang extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public ViewGioHang() {
        super();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            // Lấy giỏ hàng từ session
            HttpSession session = request.getSession();
            List<GioHang> gioHangList = (List<GioHang>) session.getAttribute("gioHangList");

            // Kiểm tra nếu giỏ hàng trống
            if (gioHangList == null || gioHangList.isEmpty()) {
                request.setAttribute("error", "Giỏ hàng của bạn hiện tại trống.");
                request.getRequestDispatcher("/Homepage/TrangChu.jsp").forward(request, response);
                return;
            }

            // Tính tổng giá trị của giỏ hàng
            double totalPrice = 0;
            for (GioHang item : gioHangList) {
                totalPrice += item.getGia() * item.getSoluong();
            }

            // Đưa danh sách giỏ hàng và tổng giá trị vào request
            request.setAttribute("gioHangList", gioHangList);
            request.setAttribute("totalPrice", totalPrice);

            // Chuyển đến trang giỏ hàng
            request.getRequestDispatcher("/Homepage/GioHang.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("error", "Không thể tải giỏ hàng.");
            request.getRequestDispatcher("/Homepage/TrangChu.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
