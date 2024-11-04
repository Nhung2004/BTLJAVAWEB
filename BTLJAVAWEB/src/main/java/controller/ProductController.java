package controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import database.SanPhamDAO; // Thêm import cho DAO
import model.SanPham; // Thêm import cho lớp sản phẩm

/**
 * Servlet implementation class ProductController
 */
@WebServlet("/Product")
public class ProductController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private SanPhamDAO productDAO; // Khai báo DAO

    public ProductController() {
        super();
        productDAO = new SanPhamDAO(); // Khởi tạo DAO
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("list".equals(action)) {
            // Lấy danh sách sản phẩm từ DAO và chuyển tiếp tới JSP
            request.setAttribute("products", productDAO.selectAll());
            request.getRequestDispatcher("list_product.jsp").forward(request, response);
        }
        // Các hành động khác có thể được xử lý ở đây
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        if ("add".equals(action)) {
            String name = request.getParameter("name");
            double price = Double.parseDouble(request.getParameter("price"));
            int quantity = Integer.parseInt(request.getParameter("quantity"));

            // Xử lý tải ảnh
            Part filePart = request.getPart("image");
            String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
            String uploadPath = getServletContext().getRealPath("") + "uploads" + File.separator + fileName;
            filePart.write(uploadPath);

            // Đường dẫn lưu vào database
            String imagePath = "uploads/" + fileName;

            // Tạo đối tượng sản phẩm và thêm vào cơ sở dữ liệu
            SanPham product = new SanPham(); // Tạo đối tượng sản phẩm mới
            product.setTensanpham(name);
            product.setGiaban(price);
            product.setSoluong(quantity);
            product.setImagePath(imagePath); // Cần thêm thuộc tính imagePath trong lớp SanPham

            productDAO.insert(product); // Thêm sản phẩm vào cơ sở dữ liệu

            response.sendRedirect("Product?action=list"); // Chuyển hướng về danh sách sản phẩm
        }
    }
}
