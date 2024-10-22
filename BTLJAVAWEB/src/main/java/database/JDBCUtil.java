package database;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCUtil {
    public static Connection getConnection() {
        Connection c = null;
        try {
            // Tải lớp trình điều khiển JDBC
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            
            // Chuỗi URL kết nối cơ sở dữ liệu
            String url = "jdbc:sqlserver://DESKTOP-D49US8A\\SQLEXPRESS:1433;databaseName=databasejava";
            String userName = "sa";
            String password = "123456789";

            // Thiết lập kết nối cơ sở dữ liệu
            c = DriverManager.getConnection(url, userName, password);
            
            // Kiểm tra xem kết nối đã được thiết lập thành công chưa
            if (c != null) {
                System.out.println("Kết nối thành công!");
                DatabaseMetaData metaData = c.getMetaData();
                System.out.println("Driver name: " + metaData.getDriverName());
                System.out.println("Database URL: " + metaData.getURL());
            } else {
                System.out.println("Kết nối không thành công.");
            }
            
        } catch (ClassNotFoundException e) {
            // Xử lý ngoại lệ khi không tìm thấy lớp trình điều khiển JDBC
            e.printStackTrace();
        } catch (SQLException e) {
            // Xử lý ngoại lệ liên quan đến kết nối cơ sở dữ liệu
            e.printStackTrace();
        }

        return c;
    }
    
    
    public static void closeConnection(Connection c) {
        try {
            if (c != null) {
                c.close();
                System.out.println("Đã đóng kết nối.");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
