package database;

import java.sql.Connection;
import java.sql.SQLException;

public interface ConnectionPool
{
	// Method khởi tạo kết nối có sẵn từ Pool hoặc tạo kết nối mới nếu Pool trống
	Connection getConnection(String objectName) throws SQLException;
	
	// Method trả lại kết nối về Pool
  void closeConnection(Connection con, String objectName) throws SQLException;
}
