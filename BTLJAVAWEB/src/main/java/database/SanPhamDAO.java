package database;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

import model.SanPham;
import model.TacGia;
import model.TheLoai;

public class SanPhamDAO implements DAOinterface<SanPham>{
	private static SanPham SanPham;
	private ArrayList<SanPham> data=new ArrayList<SanPham>();

	@Override
	public ArrayList<SanPham> selectAll() {
		return this.data;
	
	}

	@Override
	public SanPham selectById(SanPham t) {
		for (SanPham sanPham : data) {
			if(sanPham.equals(t)) {
				return sanPham;
			}
			
		}
		return null;
	}

	@Override
	public int insert(SanPham t) {
		int ketqua=0;
		try {
			// 1tạo kết nối cơ sở dự liệu
			Connection con=JDBCUtil.getConnection();
			//2 tạo câu lệnh statement
			String sql="insert into SanPham values(?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement st=con.prepareStatement(sql);
			//
			 st.setString(1, t.getMasanpham());
        	 st.setString(2, t.getTensanpham());
        	 st.setString(3, t.getTacgia().getMatacgia());
        	 st.setInt(4, t.getNamxuatban());
        	 st.setDouble(5, t.getGiaban());
        	 st.setDouble(6,t.getGianhap());
        	 st.setDouble(7, t.getGiagoc());
        	 st.setInt(8, t.getSoluong());
        	 st.setString(9, t.getTheloai().getmatheloai());
        	 st.setString(10, t.getNgonngu());
        	 st.setString(11, t.getMota());
        	 ketqua=st.executeUpdate();
        	 
        	 JDBCUtil.closeConnection(con);
		
		}catch(SQLException e) {
			e.printStackTrace();
	}
		return ketqua;
	}

	@Override
	public int insertAll(ArrayList<SanPham> arr) {
	      int ketqua=0;
	      try {
	    	  // buoc 1tạo kết nối cơ sở dữ liệu
	    	  Connection con=JDBCUtil.getConnection();
	    	  //buoc 2 tạo đối tượng statement 
	    	  String sql="insert into SanPham values(?,?,?,?,?,?,?,?,?,?,?)";
	         PreparedStatement st=con.prepareStatement(sql);
	         //buoc 3 lap qua tata ca cac phan tu va them tung cai 
	         for(SanPham sp:arr) {
	        	 st.setString(1, sp.getMasanpham());
	        	 st.setString(2, sp.getTensanpham());
	        	 st.setString(3, sp.getTacgia().getMatacgia());
	        	 st.setInt(4, sp.getNamxuatban());
	        	 st.setDouble(5, sp.getGiaban());
	        	 st.setDouble(6,sp.getGianhap());
	        	 st.setDouble(7, sp.getGiagoc());
	        	 st.setInt(8, sp.getSoluong());
	        	 st.setString(9, sp.getTheloai().getmatheloai());
	        	 st.setString(10, sp.getNgonngu());
	        	 st.setString(11, sp.getMota());
	        	 ketqua+=st.executeUpdate();
	        	 // buoc 4 đóng kết nối
	        	 JDBCUtil.closeConnection(con);
	         }
	         }catch(SQLException e) {
	        	 e.printStackTrace();
	         }
		return ketqua;
	      
	}

	@Override
	public int delete(SanPham t) {
		if(this.selectById(t)!=null) {
			this.data.remove(t);
				return 1;
		
			
		}
		return 0;
	}

	@Override
	public int deleteAll(ArrayList<SanPham> arr) {
		int count=0;
		for (SanPham sanPham : arr) {
			count+=this.delete(sanPham);
			
		}
		return count;
	}

	@Override
	public int update(SanPham t) {
		 if(this.selectById(t)!=null) {
			 this.data.remove(t);
			 this.data.add(t);
			 return 1;
		 }
		 return 0;
	}



public static void main(String args[]) {
	SanPhamDAO sanPhamDao=new SanPhamDAO();
	TacGia tacGia = new TacGia("TG01", null, null, null);  // Chỉ khởi tạo với mã tác giả
	TheLoai theLoai = new TheLoai("TL1", null);  // Chỉ khởi tạo với mã thể loại

	SanPham sanPham = new SanPham("SP08", "JDKSA", tacGia, 2023, 300000, 250000, 200000, 10, theLoai, "Tieng Viet", "Mo ta san pham");

	
	int result=sanPhamDao.insert(sanPham);
	
	
	
	
}
}