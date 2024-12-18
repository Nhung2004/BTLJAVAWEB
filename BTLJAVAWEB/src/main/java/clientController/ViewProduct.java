package clientController;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import clientDatabase.ProductDAO;
import clientModel.Product;

@WebServlet("/Product")
public class ViewProduct extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	public ViewProduct()
	{
		super();
	}

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		ProductDAO productDAO = new ProductDAO();

		// Lấy danh sách sản phẩm từ cơ sở dữ liệu
		List<Product> list = productDAO.selectAll();
		System.out.println("Product List Size: " + list.size());
		for (Product p : list)
		{
			System.out.println(p);
		}

		// Gắn danh sách vào request và chuyển tiếp tới JSP
		request.setAttribute("listP", list);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/Homepage/Home.jsp");
		dispatcher.forward(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGet(request, response);
	}
}
