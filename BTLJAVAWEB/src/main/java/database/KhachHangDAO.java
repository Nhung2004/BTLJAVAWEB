package database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Logger;

import model.KhachHang;

public class KhachHangDAO implements DAOInterface<KhachHang>
{
	private final JDBCUtil connectionPool = JDBCUtil.getInstance(); 
	private static final Logger logger = Logger.getLogger(KhachHangDAO.class.getName());

	public ArrayList<KhachHang> data = new ArrayList<>();

	@Override
	public ArrayList<KhachHang> selectAll()
	{
		ArrayList<KhachHang> resultList = new ArrayList<>();
		Connection           con        = null;

		try
		{
			con = connectionPool.getConnection("selectAll");
			String            sql = "SELECT * FROM KhachHang";
			PreparedStatement st  = con.prepareStatement(sql);
			ResultSet         rs  = st.executeQuery();

			while (rs.next())
			{
				KhachHang kh = new KhachHang(rs.getString("makhachhang"), rs.getString("tendangnhap"), rs.getString("matkhau"), rs.getString("hovaten"),
				    rs.getString("gioitinh"), rs.getString("diachi"), rs.getString("diachinhanhang"), rs.getString("diachimuahang"), rs.getDate("ngaysinh"),
				    rs.getString("sodienthoai"), rs.getString("email"), rs.getBoolean("dangkynhanbantin"));
				resultList.add(kh);
			}

		} catch (SQLException e)
		{
			e.printStackTrace();
		} finally
		{
			if (con != null)
			{
				try
				{
					connectionPool.closeConnection(con, "selectAll");
				} catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
		}

		return resultList;
	}

	@Override
	public KhachHang selectById(KhachHang khachHang)
	{
		KhachHang  kh  = null;
		Connection con = null;

		try
		{
			con = connectionPool.getConnection("selectByID");
			String            sql = "SELECT * FROM KhachHang WHERE makhachhang = ?";
			PreparedStatement st  = con.prepareStatement(sql);
			st.setString(1, khachHang.getMakhachhang());
			ResultSet rs = st.executeQuery();

			if (rs.next())
			{
				kh = new KhachHang(rs.getString("makhachhang"), rs.getString("tendangnhap"), rs.getString("matkhau"), rs.getString("hovaten"),
				    rs.getString("gioitinh"), rs.getString("diachi"), rs.getString("diachinhanhang"), rs.getString("diachimuahang"), rs.getDate("ngaysinh"),
				    rs.getString("sodienthoai"), rs.getString("email"), rs.getBoolean("dangkynhanbantin"));
			}

		} catch (SQLException e)
		{
			e.printStackTrace();
		} finally
		{
			if (con != null)
			{
				try
				{
					connectionPool.closeConnection(con, "selectById");
				} catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
		}

		return kh;
	}
	
	public KhachHang selectByIDandPassword(KhachHang khachHang)
	{
		KhachHang  kh  = null;
		Connection con = null;

		try
		{
			con = connectionPool.getConnection("selectByIdandPassword");
			String            sql = "SELECT * FROM KhachHang WHERE tendangnhap = ? and matkhau = ?";
			PreparedStatement st  = con.prepareStatement(sql);
			st.setString(1, khachHang.getTendangnhap());
			st.setString(2, khachHang.getMatkhau());
			ResultSet rs = st.executeQuery();
			
			// Trả về Tên đăng nhập và Mật khẩu lên Console (Để dễ dàng Debug hơn)
			logger.info("Querying with username: " + khachHang.getTendangnhap());
			logger.info("Querying with password: " + khachHang.getMatkhau());


			if (rs.next())
			{
				kh = new KhachHang(rs.getString("makhachhang"), rs.getString("tendangnhap"), rs.getString("matkhau"), rs.getString("hovaten"),
				    rs.getString("gioitinh"), rs.getString("diachi"), rs.getString("diachinhanhang"), rs.getString("diachimuahang"), rs.getDate("ngaysinh"),
				    rs.getString("sodienthoai"), rs.getString("email"), rs.getBoolean("dangkynhanbantin"));
			}

		} catch (SQLException e)
		{
			e.printStackTrace();
		} finally
		{
			if (con != null)
			{
				try
				{
					connectionPool.closeConnection(con, "selectByIDandPassword");
				} catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
		}

		return kh;
	}

	@Override
	public int insert(KhachHang kh)
	{
		int        result = 0;
		Connection con    = null;

		try
		{
			con = connectionPool.getConnection("insert");
			String            sql = "INSERT INTO KhachHang (makhachhang, tendangnhap, matkhau, hovaten, gioitinh, diachi, diachinhanhang, diachimuahang, ngaysinh, sodienthoai, email, dangkynhanbantin) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
			PreparedStatement st  = con.prepareStatement(sql);

			st.setString(1, kh.getMakhachhang());
			st.setString(2, kh.getTendangnhap());
			st.setString(3, kh.getMatkhau());
			st.setString(4, kh.getHovaten());
			st.setString(5, kh.getGioitinh());
			st.setString(6, kh.getDiachi());
			st.setString(7, kh.getDiachinhanhang());
			st.setString(8, kh.getDiachimuahang());
			st.setDate(9, (Date) kh.getNgaysinh());
			st.setString(10, kh.getSodienthoai());
			st.setString(11, kh.getEmail());
			st.setBoolean(12, kh.isDangKyNhanBangTin());

			result = st.executeUpdate();

		} catch (SQLException e)
		{
			e.printStackTrace();
		} finally
		{
			if (con != null)
			{
				try
				{
					connectionPool.closeConnection(con, "insert");
				} catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
		}

		return result;
	}

	@Override
	public int insertAll(ArrayList<KhachHang> arr)
	{
		int count = 0;
		for (KhachHang kh : arr)
		{
			count += insert(kh);
		}
		return count;
	}

	@Override
	public int delete(KhachHang kh)
	{
		int        result = 0;
		Connection con    = null;

		try
		{
			con = connectionPool.getConnection("delete");
			String            sql = "DELETE FROM KhachHang WHERE makhachhang = ?";
			PreparedStatement st  = con.prepareStatement(sql);
			st.setString(1, kh.getMakhachhang());
			result = st.executeUpdate();

		} catch (SQLException e)
		{
			e.printStackTrace();
		} finally
		{
			if (con != null)
			{
				try
				{
					connectionPool.closeConnection(con, "delete");
				} catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
		}

		return result;
	}

	@Override
	public int deleteAll(ArrayList<KhachHang> arr)
	{
		int count = 0;
		for (KhachHang kh : arr)
		{
			count += delete(kh);
		}
		return count;
	}

	@Override
	public int update(KhachHang kh)
	{
		int        result = 0;
		Connection con    = null;

		try
		{
			con = connectionPool.getConnection("update");
			String            sql = "UPDATE KhachHang SET tendangnhap = ?, matkhau = ?, hovaten = ?, gioitinh = ?, diachi = ?, diachinhanhang = ?, diachimuahang = ?, ngaysinh = ?, sodienthoai = ?, email = ?, dangkynhanbantin = ? WHERE makhachhang = ?";
			PreparedStatement st  = con.prepareStatement(sql);

			st.setString(1, kh.getTendangnhap());
			st.setString(2, kh.getMatkhau());
			st.setString(3, kh.getHovaten());
			st.setString(4, kh.getGioitinh());
			st.setString(5, kh.getDiachi());
			st.setString(6, kh.getDiachinhanhang());
			st.setString(7, kh.getDiachimuahang());
			st.setDate(8, (Date) kh.getNgaysinh());
			st.setString(9, kh.getSodienthoai());
			st.setString(10, kh.getEmail());
			st.setBoolean(11, kh.isDangKyNhanBangTin());
			st.setString(12, kh.getMakhachhang());

			result = st.executeUpdate();

		} catch (SQLException e)
		{
			e.printStackTrace();
		} finally
		{
			if (con != null)
			{
				try
				{
					connectionPool.closeConnection(con, "update");
				} catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
		}

		return result;
	}

	public boolean kiemTraTenDangNhap(String tenDangNhap)
	{
		boolean    ketQua = false;
		Connection con    = null; 

		try
		{
			// Step 1: Get a connection from the pool
			con = connectionPool.getConnection("kiemTraTenDangNhap");

			// Step 2: Create a statement
			String            sql = "SELECT * FROM KhachHang WHERE tendangnhap = ?";
			PreparedStatement st  = con.prepareStatement(sql);
			st.setString(1, tenDangNhap);

			// Step 3: Execute the SQL query
			System.out.println(sql);
			ResultSet rs = st.executeQuery();

			// Step 4: Check if the result set has any data
			if (rs.next())
			{
				ketQua = true;
			}

		} catch (SQLException e)
		{
			e.printStackTrace();
		} finally
		{
			// Step 5: Return the connection to the pool
			if (con != null)
			{
				try
				{
					connectionPool.closeConnection(con, "kiemTraTenDangNhap");
				} catch (SQLException e)
				{
					e.printStackTrace();
				}
			}
		}
		return ketQua;
	}
}