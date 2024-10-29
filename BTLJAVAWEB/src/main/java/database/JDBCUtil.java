package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.Queue;

public class JDBCUtil implements ConnectionPool
{
	private final Queue<Connection> connectionPool;
	private static JDBCUtil         instance;
	
	// Kiểm tra số lượng connection đã tạo
	private int                     currentConnectionCount = 0;

	private JDBCUtil()
	{
		connectionPool = new LinkedList<>();
		try
		{
			// Load driver
			Class.forName(DatabaseConfig.DB_DRIVER);

			// Khởi tạo Connection Pool với số lượng kết nối = MIN
			for (int i = 0; i < DatabaseConfig.DB_MIN_CONNECTIONS; i++)
			{
				addNewConnectionToPool();
			}
		}
		catch (SQLException | ClassNotFoundException e)
		{
			e.printStackTrace();
		}
	}

	public static JDBCUtil getInstance()
	{
		if(instance == null)
		{
			synchronized (JDBCUtil.class)
			{
				if(instance == null)
				{
					instance = new JDBCUtil();
				}
			}
		}
		return instance;
	}

	private void addNewConnectionToPool() throws SQLException
	{
		if(currentConnectionCount < DatabaseConfig.DB_MAX_CONNECTIONS)
		{
			Connection connection = DriverManager.getConnection(DatabaseConfig.CONNECTION_URL, DatabaseConfig.USER_NAME,
			    DatabaseConfig.PASSWORD);
			connectionPool.add(connection);
			currentConnectionCount++;
		}
	}

	@Override
	public synchronized Connection getConnection(String objectName) throws SQLException
	{
		if(connectionPool.isEmpty() && currentConnectionCount < DatabaseConfig.DB_MAX_CONNECTIONS)
		{
			addNewConnectionToPool();
		}

		if(connectionPool.isEmpty())
		{
			return DriverManager.getConnection(DatabaseConfig.CONNECTION_URL, DatabaseConfig.USER_NAME, DatabaseConfig.PASSWORD);
		}

		return connectionPool.poll();
	}

	@Override
	public synchronized void closeConnection(Connection con, String objectName) throws SQLException
	{
		if(con != null)
		{
			if(connectionPool.size() < DatabaseConfig.DB_MAX_CONNECTIONS)
			{
				connectionPool.add(con);
			}
			else
			{
				con.close();
				currentConnectionCount--;
			}
		}
	}

	public synchronized void closeAllConnections()
	{
		while (!connectionPool.isEmpty())
		{
			try
			{
				Connection conn = connectionPool.poll();
				if(conn != null)
				{
					conn.close();
					currentConnectionCount--;
				}
			}
			catch (SQLException e)
			{
				e.printStackTrace();
			}
		}
	}
}