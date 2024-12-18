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

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		ProductDAO    productDAO = new ProductDAO();
		List<Product> listP      = productDAO.selectAll();

		System.out.println("Product List Size: " + listP.size());
		for (Product p : listP)
		{
			System.out.println(p);
		}

		// Gắn danh sách vào request và chuyển tiếp tới JSP
		request.setAttribute("listP", listP);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/Homepage/TrangChu.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		doGet(request, response);
	}
}
