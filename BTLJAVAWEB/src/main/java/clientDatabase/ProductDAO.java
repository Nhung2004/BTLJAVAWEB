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
import model.SanPham;
import model.TacGia;
import model.TheLoai;

public class ProductDAO implements DAOInterface<Product> {
	private final JDBCUtil connectionPool = JDBCUtil.getInstance();

	@SuppressWarnings("unused")
	private static Product     product;
	@SuppressWarnings("unused")
	private ArrayList<Product> data = new ArrayList<Product>();


	
	@Override
	public ArrayList<Product> selectAll()
	{
		ArrayList<Product> list = new ArrayList<>();
		try
		{
			Connection        con = connectionPool.getConnection("selectAll");
			String sql = "select * from ProductClient";
			PreparedStatement st  = con.prepareStatement(sql);
			ResultSet         rs  = st.executeQuery();

			while (rs.next())
			{			
//				list.add(new Product(rs.getInt(1),
//						rs.getString(2),
//						rs.getString(3),
//						rs.getDouble(4),
//						rs.getString(5),
//						rs.getString(6)));
				Product product=new Product(rs.getInt(1),rs.getString(2),rs.getString(3),rs.getDouble(4),rs.getString(5),rs.getString(6));
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
	public Product selectById(Product t) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int insert(Product t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertAll(ArrayList<Product> arr) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Product t) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteAll(ArrayList<Product> arr) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Product t) {
		// TODO Auto-generated method stub
		return 0;
	}
	
	



	public static void main(String[] args) {
	    ProductDAO productdao = new ProductDAO();

	    try {
	        List<Product> list = productdao.selectAll();
	        if (list.isEmpty()) {
	            System.out.println("No products found.");
	        } else {
	            for (Product o : list) {
	                System.out.println(o);
	            }
	        }
	    } catch (Exception e) {
	        System.out.println("Error: " + e.getMessage());
	        e.printStackTrace();
	    }
	}

}
