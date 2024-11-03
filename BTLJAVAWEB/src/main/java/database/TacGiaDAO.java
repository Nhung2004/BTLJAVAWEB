package database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import model.TacGia;

public class TacGiaDAO implements DAOInterface<TacGia>
{
	private final JDBCUtil connectionPool = JDBCUtil.getInstance();

	@Override
	public int insert(TacGia t)
	{
		int KetQua = 0;
		try
		{
			// Bước 1: Tạo kết nối đến cơ sở dữ liệu
			Connection con = connectionPool.getConnection("insert");

			// Bước 2: Tạo đối tượng statement
			String            sql = "INSERT INTO TacGia (matacgia, tentacgia, ngaysinh, tieusu) VALUES (?, ?, ?, ?)";
			PreparedStatement st  = con.prepareStatement(sql);
			st.setString(1, t.getMatacgia());
			st.setString(2, t.getTentacgia());
			st.setDate(3, (Date) t.getNgaysinh());

			st.setString(4, t.getTieusu());

			// Bước 3: Thực thi câu lệnh SQL
			KetQua = st.executeUpdate();

			// Bước 4: Đóng kết nối
			connectionPool.closeConnection(con, "insert");
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return KetQua;
	}

	@Override
	public int insertAll(ArrayList<TacGia> arr)
	{
		int count = 0;
		try
		{
			// Bước 1: Tạo kết nối đến cơ sở dữ liệu
			Connection con = connectionPool.getConnection("insertAll");

			// Bước 2: Tạo đối tượng statement
			String            sql = "INSERT INTO TacGia (matacgia, tentacgia, ngaysinh, tieusu) VALUES (?, ?, ?, ?)";
			PreparedStatement st  = con.prepareStatement(sql);

			// Bước 3: Lặp qua tất cả các phần tử và thêm từng cái
			for (TacGia t : arr)
			{
				st.setString(1, t.getMatacgia());
				st.setString(2, t.getTentacgia());
				st.setDate(3, (Date) t.getNgaysinh());
				st.setString(4, t.getTieusu());
				count += st.executeUpdate();
			}

			// Bước 4: Đóng kết nối
			connectionPool.closeConnection(con, "insertAll");
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return count;
	}

	@Override
	public int delete(TacGia t)
	{
		int KetQua = 0;
		try
		{
			// Bước 1: Tạo kết nối đến cơ sở dữ liệu
			Connection con = connectionPool.getConnection("delete");

			// Bước 2: Tạo đối tượng statement
			String            sql = "DELETE FROM TacGia WHERE matacgia = ?";
			PreparedStatement st  = con.prepareStatement(sql);
			st.setString(1, t.getMatacgia());

			// Bước 3: Thực thi câu lệnh SQL
			KetQua = st.executeUpdate();

			// Bước 4: Đóng kết nối
			connectionPool.closeConnection(con, "delete");
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return KetQua;
	}

	@Override
	public int deleteAll(ArrayList<TacGia> arr)
	{
		int count = 0;
		try
		{
			// Bước 1: Tạo kết nối đến cơ sở dữ liệu
			Connection con = connectionPool.getConnection("deleteAll");

			// Bước 2: Tạo đối tượng statement
			String            sql = "DELETE FROM TacGia WHERE matacgia = ?";
			PreparedStatement st  = con.prepareStatement(sql);

			// Bước 3: Lặp qua tất cả các phần tử và xóa từng cái
			for (TacGia t : arr)
			{
				st.setString(1, t.getMatacgia());
				count += st.executeUpdate();
			}

			// Bước 4: Đóng kết nối
			connectionPool.closeConnection(con, "deleteAll");
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return count;
	}

	@Override
	public int update(TacGia t)
	{
		int KetQua = 0;
		try
		{
			// Bước 1: Tạo kết nối đến cơ sở dữ liệu
			Connection con = connectionPool.getConnection("update");

			// Bước 2: Tạo đối tượng statement
			String            sql = "UPDATE TacGia SET tentacgia = ?, ngaysinh = ?, tieusu = ? WHERE matacgia = ?";
			PreparedStatement st  = con.prepareStatement(sql);
			st.setString(1, t.getTentacgia());
			st.setDate(2, (Date) t.getNgaysinh());
			st.setString(3, t.getTieusu());
			st.setString(4, t.getMatacgia());

			// Bước 3: Thực thi câu lệnh SQL
			KetQua = st.executeUpdate();

			// Bước 4: Đóng kết nối
			connectionPool.closeConnection(con, "update");
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return KetQua;
	}

	@Override
	public ArrayList<TacGia> selectAll()
	{
		ArrayList<TacGia> KetQua = new ArrayList<TacGia>();

		try
		{
			// Bước 1: Tạo kết nối đến cơ sở dữ liệu
			Connection con = connectionPool.getConnection("selectAll");

			// Bước 2: Tạo đối tượng statement
			String            sql = "SELECT * FROM TacGia";
			PreparedStatement st  = con.prepareStatement(sql);

			// Bước 3: Thực thi câu lệnh SQL
			ResultSet rs = st.executeQuery();

			// Bước 4: Duyệt kết quả trả về
			while (rs.next())
			{
				String maTacGia = rs.getString("matacgia");
				@SuppressWarnings("unused")
				String hoVaTen  = rs.getString("tentacgia");
				Date   ngaySinh = rs.getDate("ngaysinh");
				String tieuSu   = rs.getString("tieusu");

				// Tạo đối tượng TacGia và thêm vào danh sách kết quả
				TacGia tg = new TacGia(maTacGia, maTacGia, ngaySinh, tieuSu);
				KetQua.add(tg);
			}

			// Bước 5: Đóng kết nối
			connectionPool.closeConnection(con, "selectAll");

		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}

		return KetQua;
	}

	@Override
	public TacGia selectById(TacGia t)
	{
		TacGia KetQua = null;

		try
		{
			// Bước 1: Tạo kết nối đến cơ sở dữ liệu
			Connection con = connectionPool.getConnection("selectById");

			// Bước 2: Tạo đối tượng statement
			String            sql = "SELECT * FROM TacGia WHERE matacgia = ?";
			PreparedStatement st  = con.prepareStatement(sql);
			st.setString(1, t.getMatacgia()); // Truyền giá trị mã tác giả vào câu truy vấn

			// Bước 3: Thực thi câu lệnh SQL
			ResultSet rs = st.executeQuery();

			// Bước 4: Duyệt kết quả trả về
			if(rs.next())
			{
				String maTacGia = rs.getString("matacgia");
				String hoVaTen  = rs.getString("hovaten");
				Date   ngaySinh = rs.getDate("ngaysinh");
				String tieuSu   = rs.getString("tieusu");

				// Tạo đối tượng TacGia và gán vào kết quả
				KetQua = new TacGia(maTacGia, hoVaTen, ngaySinh, tieuSu);
			}

			// Bước 5: Đóng kết nối
			connectionPool.closeConnection(con, "selectById");

		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}

		return KetQua;
	}

	public static void main(String[] args)
	{
		TacGiaDAO tacGiaDAO = new TacGiaDAO();

		// Thêm một tác giả mới
		TacGia newTacGia = new TacGia("TG07", "Nguyễn Văn A", Date.valueOf("1990-01-01"),
		    "Tác giả nổi tiếng trong lĩnh vực văn học.");

		// Gọi hàm insert
		@SuppressWarnings("unused")
		int result = tacGiaDAO.insert(newTacGia);

		// Test hàm selectById
		// System.out.println("\nThông tin tác giả có mã TG01:");
		// TacGia tacGia = new TacGia();
		// tacGia.setMatacgia("TG01"); // Thay TG01 bằng mã tác giả cụ thể
		// TacGia resultTacGia = tacGiaDAO.selectById(tacGia);
		//
		// if (resultTacGia != null) {
		// System.out.println(resultTacGia);
		// } else {
		// System.out.println("Tác giả không tồn tại.");
		// }

		// SanPhamDAO sanPhamDao = new SanPhamDAO();
		// insertall
		// ArrayList<SanPham> sanPhamList = new ArrayList<>();
		//
		// // Tạo tác giả và thể loại (giả sử mã tác giả và mã thể loại đã tồn tại)
		// TacGia tacGia1 = new TacGia("TG01", null, null, null); // Chỉ khởi tạo với mã tác giả
		// TacGia tacGia2 = new TacGia("TG02", null, null, null);
		//
		// TheLoai theLoai1 = new TheLoai("TL1", null); // Chỉ khởi tạo với mã thể loại
		// TheLoai theLoai2 = new TheLoai("TL2", null);
		//
		// // Thêm các sản phẩm vào danh sách
		// sanPhamList.add(new SanPham("SP09", "Sản phẩm 1", tacGia1, 2023, 300000, 250000, 200000, 10,
		// theLoai1, "Tiếng Việt", "Mô tả sản phẩm 1"));
		// sanPhamList.add(new SanPham("SP10", "Sản phẩm 2", tacGia1, 2023, 350000, 300000, 250000, 5,
		// theLoai2, "Tiếng Việt", "Mô tả sản phẩm 2"));
		// sanPhamList.add(new SanPham("SP11", "Sản phẩm 3", tacGia2, 2022, 400000, 350000, 300000, 8,
		// theLoai1, "Tiếng Việt", "Mô tả sản phẩm 3"));
		//
		// // Gọi hàm insertAll để thêm toàn bộ sản phẩm vào cơ sở dữ liệu
		// int result = sanPhamDao.insertAll(sanPhamList);
		//
		// // In kết quả
		// System.out.println("Số sản phẩm đã chèn: " + result);
		// }
		// }
	}
}
