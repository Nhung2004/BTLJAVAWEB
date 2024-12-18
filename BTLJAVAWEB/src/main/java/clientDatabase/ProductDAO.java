package clientDatabase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import clientModel.Product;
import database.DAOInterface;
import database.JDBCUtil;

public class ProductDAO implements DAOInterface<Product>
{
	private final JDBCUtil connectionPool = JDBCUtil.getInstance();

	@Override
	public ArrayList<Product> selectAll()
	{
		ArrayList<Product> list = new ArrayList<>();
		try
		{
			Connection        con = connectionPool.getConnection("selectAll");
			String            sql = "SELECT * FROM ProductClient";
			PreparedStatement st  = con.prepareStatement(sql);
			ResultSet         rs  = st.executeQuery();

			while (rs.next())
			{
				Product product = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7));
				list.add(product);
			}
			connectionPool.closeConnection(con, "selectAll");
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public Product selectById(Product t)
	{
		Product product = null;
		try
		{
			Connection        con = connectionPool.getConnection("selectById");
			String            sql = "SELECT * FROM ProductClient WHERE masanpham = ?";
			PreparedStatement st  = con.prepareStatement(sql);
			st.setInt(1, t.getIdProduct());
			ResultSet rs = st.executeQuery();

			if(rs.next())
			{
				product = new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getString(5), rs.getString(6), rs.getInt(7));
			}
			connectionPool.closeConnection(con, "selectById");
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return product;
	}

	@Override
	public int insert(Product t)
	{
		int result = 0;
		try
		{
			Connection        con = connectionPool.getConnection("insert");
			String            sql = "INSERT INTO ProductClient (tensanpham, giaban, soluong, hinhanh) VALUES (?, ?, ?, ?)";
			PreparedStatement st  = con.prepareStatement(sql);
			st.setString(1, t.getNameProduct());
			st.setDouble(2, t.getPriceProduct());
			st.setInt(3, t.getQuantity());
			st.setString(4, t.getImageProduct());
			result = st.executeUpdate();
			connectionPool.closeConnection(con, "insert");
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int insertAll(ArrayList<Product> arr)
	{
		int result = 0;
		try
		{
			Connection        con = connectionPool.getConnection("insertAll");
			String            sql = "INSERT INTO ProductClient (tensanpham, giaban, soluong, hinhanh) VALUES (?, ?, ?, ?)";
			PreparedStatement st  = con.prepareStatement(sql);

			for (Product product : arr)
			{
				st.setString(1, product.getNameProduct());
				st.setDouble(2, product.getPriceProduct());
				st.setInt(3, product.getQuantity());
				st.setString(4, product.getImageProduct());
				result += st.executeUpdate();
			}
			connectionPool.closeConnection(con, "insertAll");
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int delete(Product t)
	{
		int result = 0;
		try
		{
			Connection        con = connectionPool.getConnection("delete");
			String            sql = "DELETE FROM ProductClient WHERE masanpham = ?";
			PreparedStatement st  = con.prepareStatement(sql);
			st.setInt(1, t.getIdProduct());
			result = st.executeUpdate();
			connectionPool.closeConnection(con, "delete");
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int deleteAll(ArrayList<Product> arr)
	{
		int result = 0;
		try
		{
			Connection        con = connectionPool.getConnection("deleteAll");
			String            sql = "DELETE FROM ProductClient WHERE masanpham = ?";
			PreparedStatement st  = con.prepareStatement(sql);

			for (Product product : arr)
			{
				st.setInt(1, product.getIdProduct());
				result += st.executeUpdate();
			}
			connectionPool.closeConnection(con, "deleteAll");
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int update(Product t)
	{
		int result = 0;
		try
		{
			Connection        con = connectionPool.getConnection("update");
			String            sql = "UPDATE ProductClient SET tensanpham = ?, giaban = ?, soluong = ?, hinhanh = ? WHERE masanpham = ?";
			PreparedStatement st  = con.prepareStatement(sql);
			st.setString(1, t.getNameProduct());
			st.setDouble(2, t.getPriceProduct());
			st.setInt(3, t.getQuantity());
			st.setString(4, t.getImageProduct());
			st.setInt(5, t.getIdProduct());
			result = st.executeUpdate();
			connectionPool.closeConnection(con, "update");
		}
		catch (SQLException e)
		{
			e.printStackTrace();
		}
		return result;
	}

	public static void main(String[] args)
	{
		ProductDAO productdao = new ProductDAO();

		// Example: Test selectAll method
		try
		{
			List<Product> list = productdao.selectAll();
			if(list.isEmpty())
			{
				System.out.println("No products found.");
			}
			else
			{
				for (Product o : list)
				{
					System.out.println(o);
				}
			}
		}
		catch (Exception e)
		{
			System.out.println("Error: " + e.getMessage());
			e.printStackTrace();
		}
	}
}
