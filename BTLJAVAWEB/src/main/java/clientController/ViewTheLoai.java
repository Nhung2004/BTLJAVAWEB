package clientController;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import clientDatabase.ProductDAO;
import clientModel.Product;
import database.TheLoaiDAO;

/**
 * Servlet implementation class ViewTheLoai
 */
@WebServlet("/ViewTheLoai")
public class ViewTheLoai extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ViewTheLoai()
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
		String        matheloai  = request.getParameter("id");
		ProductDAO    productDAO = new ProductDAO();
		List<Product> list       = productDAO.selectProductById(matheloai);

		List<Product> listnew = productDAO.getLatestProducts();

		TheLoaiDAO          theloaidao = new TheLoaiDAO();
		List<model.TheLoai> listT      = theloaidao.selectAll();
		// List<model.TheLoai> listT=theloaidao.selectAll();

		request.setAttribute("listnew", listnew);

		request.setAttribute("listT", listT);

		request.setAttribute("listP", list);
		

		System.out.println("abcdefh");
//
//        List<Product> listnew=productDAO.getLatestProducts();
//        
//        TheLoaiDAO theloaidao = new TheLoaiDAO();
//       List<model.TheLoai> listT=theloaidao.selectAll();
        //List<model.TheLoai> listT=theloaidao.selectAll();


		
		 request.setAttribute("listnew", listnew);

	       request.setAttribute("listT", listT);
	       request.setAttribute("listT", list);
	       
			request.setAttribute("listP", list);


		request.getRequestDispatcher("/Homepage/Home.jsp").forward(request, response);
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
