package in.eb.DAO;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect {

	public static Connection getConnection() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/bookproject", "root", "Onkar@1234");
	}
}
