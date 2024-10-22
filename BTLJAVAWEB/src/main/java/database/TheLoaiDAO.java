package database;

import java.util.ArrayList;

import model.TheLoai;

public class TheLoaiDAO implements DAOinterface<TheLoai> {

	private ArrayList<TheLoai> data=new ArrayList<TheLoai>();

	@Override
	public ArrayList<TheLoai> selectAll() {
		// TODO Auto-generated method stub
		return this.data;
	}

	@Override
	public TheLoai selectById(TheLoai t) {
		for(TheLoai theloai:data) {
			if(theloai.equals(t)) {
				return theloai;
			}
		}
		return null;
	}

	@Override
	public int insert(TheLoai t) {
	         if(this.selectById(t)==null) {
	        	 this.data.add(t);
	        	 return 1;
	         }
	         return 0;
	}

	@Override
	public int insertAll(ArrayList<TheLoai> arr) {
		int count=0;
		for (TheLoai theLoai : arr) {
			count+=this.insert(theLoai);
			
		}
		return count;
	}

	@Override
	public int delete(TheLoai t) {
		if(this.selectById(t)!=null) {
			this.data.remove(t);
			return 1;
			
		}
		return 0;
	}

	@Override
	public int deleteAll(ArrayList<TheLoai> arr) {
		int count=0;
		for (TheLoai theLoai : arr) {
			count+=this.delete(theLoai);
			
		}
		return count;
		
	}

	@Override
	public int update(TheLoai t) {
		if(this.selectById(t)!=null) {
			this.data.remove(t);
			this.data.add(t);
			return 1;
		}
		return 0;
	}

}
