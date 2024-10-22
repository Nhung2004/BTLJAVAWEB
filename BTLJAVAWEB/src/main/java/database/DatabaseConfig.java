package database;

public class DatabaseConfig
{
	// Chỉnh sửa Workspace (SQL Server / MySQL / ...)
	public static final String WORKSPACE = "sqlserver";

	// Chỉnh sửa Host Name
	public static final String HOST_NAME = "ADMIN-PC";

	// Chỉnh sửa cổng kết nối Database
	public static final String DB_PORT = "1433";

	// Chỉnh sửa tên Database kết nối
	public static final String DB_NAME = "databasejava";

	// Cho phép Giao thức bảo mật SSL
	public static final String ENCRYPT = "true";

	// Tin tưởng chứng chỉ bảo mật của trang web
	public static final String TRUST_SERVER_CERTIFICATE = "true";

	// Tài khoản, Mật khẩu quản lý Database
	public static final String USER_NAME = "sa";
	public static final String PASSWORD  = "123456789";

	// Chỉnh sửa liên kết JDBC Driver
	public static final String DB_DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";

	// Thiết lập số lượng Connection tối thiểu / tối đa
	public static final int DB_MIN_CONNECTIONS = 2;
	public static final int DB_MAX_CONNECTIONS = 4;

	// jdbc:sqlserver://ADMIN-PC:1433;databaseName=databasejava;encrypt=true;trustServerCertificate=true
	public static final String CONNECTION_URL = String.format("jdbc:%s://%s:%s;databaseName=%s;encrypt=%s;trustServerCertificate=%s", 
			WORKSPACE, HOST_NAME, DB_PORT, DB_NAME, ENCRYPT, TRUST_SERVER_CERTIFICATE);

	private DatabaseConfig() 
	{
		// Báo lỗi khi khởi tạo Object bằng Class tiện ích DatabaseConfig
    throw new UnsupportedOperationException("Utility class can't be instantiated");
	}
}