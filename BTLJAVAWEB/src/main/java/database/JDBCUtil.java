package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.Queue;

public class JDBCUtil implements ConnectionPool
{
	private final int MAX_POOL_SIZE = 10;

	private final Queue<Connection> connectionPool;
	private static JDBCUtil         instance;

	private JDBCUtil()
	{
		connectionPool = new LinkedList<>();
		try
		{
			// Load the driver only once
			Class.forName(DatabaseConfig.DB_DRIVER);

			// Pre-fill the connection pool
			for (int i = 0; i < MAX_POOL_SIZE; i++)
			{
				Connection connection = DriverManager.getConnection(DatabaseConfig.CONNECTION_URL, DatabaseConfig.USER_NAME, DatabaseConfig.PASSWORD);
				connectionPool.add(connection);
			}
		} catch (SQLException | ClassNotFoundException e)
		{
			e.printStackTrace();
		}
	}

	public static JDBCUtil getInstance()
	{
		if (instance == null)
		{
			synchronized (JDBCUtil.class)
			{
				if (instance == null)
				{
					instance = new JDBCUtil();
				}
			}
		}
		return instance;
	}

	@Override
	public Connection getConnection(String objectName) throws SQLException
	{
		if (connectionPool.isEmpty())
		{
			return DriverManager.getConnection(DatabaseConfig.CONNECTION_URL, DatabaseConfig.USER_NAME, DatabaseConfig.PASSWORD);
		}
		return connectionPool.poll();
	}

	@Override
	public void closeConnection(Connection con, String objectName) throws SQLException
	{
		if (con != null && connectionPool.size() < MAX_POOL_SIZE)
		{
			connectionPool.add(con);
		}
	}
}