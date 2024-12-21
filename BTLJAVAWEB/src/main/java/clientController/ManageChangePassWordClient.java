package clientController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import database.KhachHangDAO;
import model.KhachHang;
import util.MaHoa;

/**
 * Servlet implementation class ChangePassword
 */
@WebServlet("/ManageChangePassWordClient")
public class ManageChangePassWordClient extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageChangePassWordClient() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String matkhauhientai = request.getParameter("matkhauhientai");
		String matkhaumoi = request.getParameter("matkhaumoi");
		String matkhaumoinhaplai = request.getParameter("matkhaumoinhaplai");
		
		String matkhauhientai_md5 = MaHoa.maHoaMD5(matkhauhientai);
		
		String baoLoi = "";
		String url = "/Homepage/ChangePassword.jsp";
		
	        HttpSession session = request.getSession();

	        KhachHang khachHang = (KhachHang) session.getAttribute("KhachHang");
	        if (khachHang == null) {
	            // Xử lý khi đối tượng khachHang không có trong session
			baoLoi = "Bạn chưa đăng nhập vào hệ thống!";
	        }else {
			// Neu khach hang da dang nhap
			if(!matkhauhientai_md5.equals(khachHang.getMatkhau())){
				baoLoi = "Mật khẩu hiện tại không chính xác!";
			}else {
				if(!matkhaumoi.equals(matkhaumoinhaplai)) {
					baoLoi = "Mật khẩu nhập lại không khớp!";
				}else {
					String matKhauMoi_Sha1 = MaHoa.maHoaMD5(matkhaumoi);
					khachHang.setMatkhau(matKhauMoi_Sha1);
					KhachHangDAO khd = new KhachHangDAO();
					if(khd.changePassword(khachHang)) {
						baoLoi = "Mật khẩu đã thay đổi thành công!";
					}else {
						baoLoi = "Quá trình thay đổi mật khẩu không thành công!";
					}
				}
			}
		}
		
		request.setAttribute("baoLoi", baoLoi);
		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
