package task_assignment;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectDB {
	
	private static String url = "jdbc:mysql://localhost:3306/event_management";
	private static String username = "root";
	private static String password = "mithara2001@";
	private static Connection con;
	
	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, username, password);
			
			
		}catch(Exception e) {
			System.out.println("Database connection has lost!!!");
		}
		
		return con;
	}
}
