/* Perfectly Modified (22/10) */
package database;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class DatabaseConfig
{

	// Variables for storing database configurations
	public static String WORKSPACE;
	public static String HOST_NAME;
	public static String DB_PORT;
	public static String DB_NAME;
	public static String ENCRYPT;
	public static String TRUST_SERVER_CERTIFICATE;
	public static String USER_NAME;
	public static String PASSWORD;
	public static String DB_DRIVER;
	public static int    DB_MIN_CONNECTIONS;
	public static int    DB_MAX_CONNECTIONS;

	// Connection URL to be generated after reading config file
	public static String CONNECTION_URL;

	private static final String CONFIG_FILE_PATH = "DatabaseConfig.txt";

	// Load configuration from the file
	static
	{
		Map<String, String> config = readConfigFromFile(CONFIG_FILE_PATH);
		if (config != null)
		{
			WORKSPACE                = config.getOrDefault("Workspace", "sqlserver");
			HOST_NAME                = config.getOrDefault("Hostname", "localhost");
			DB_PORT                  = config.getOrDefault("Port", "1433");
			DB_NAME                  = config.getOrDefault("DatabaseName", "databasejava");
			ENCRYPT                  = config.getOrDefault("Encrypt", "true");
			TRUST_SERVER_CERTIFICATE = config.getOrDefault("TrustServerCertificate", "true");
			USER_NAME                = config.getOrDefault("Username", "sa");
			PASSWORD                 = config.getOrDefault("Password", "");
			DB_DRIVER                = config.getOrDefault("DatabaseDriver", "com.microsoft.sqlserver.jdbc.SQLServerDriver");
			DB_MIN_CONNECTIONS       = Integer.parseInt(config.getOrDefault("DatabaseMinConnection", "2"));
			DB_MAX_CONNECTIONS       = Integer.parseInt(config.getOrDefault("DatabaseMaxConnection", "4"));

			CONNECTION_URL = String.format("jdbc:%s://%s:%s;databaseName=%s;encrypt=%s;trustServerCertificate=%s", WORKSPACE, HOST_NAME, DB_PORT, DB_NAME,
			    ENCRYPT, TRUST_SERVER_CERTIFICATE);
		}
	}

	private DatabaseConfig()
	{
		throw new UnsupportedOperationException("Utility class can't be instantiated");
	}

	// Function to read config from file
	@SuppressWarnings("unused")
	private static Map<String, String> readConfigFromFile(String filePath)
	{
		Map<String, String> configMap = new HashMap<>();
		try (BufferedReader reader = new BufferedReader(new FileReader(filePath)))
		{
			String line;
			String currentSection = "";

			while ((line = reader.readLine()) != null)
			{
				line = line.trim();
				if (line.isEmpty() || line.startsWith("#"))
				{
					// Skip empty lines or comments
					continue;
				}
				if (line.startsWith("[") && line.endsWith("]"))
				{
					// This is a section header
					currentSection = line.substring(1, line.length() - 1);
				} else
				{
					// This is a key=value line
					String[] parts = line.split("=", 2);
					if (parts.length == 2)
					{
						String key   = parts[0].trim();
						String value = parts[1].trim();
						configMap.put(key, value);
					}
				}
			}
		} catch (IOException e)
		{
			e.printStackTrace();
		}
		return configMap;
	}
}
