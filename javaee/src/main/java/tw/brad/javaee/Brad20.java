package tw.brad.javaee;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad20")
public class Brad20 extends HttpServlet {
	private boolean isLoadConnector;
	
	public Brad20() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			isLoadConnector = true;
			System.out.println("Connector OK");
		}catch (Exception e) {
			isLoadConnector = false;
		}
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		new Thread() {
			public void run() {
				try {
					testMySQLServer();
					System.out.println("OK");
				}catch(Exception e) {
					System.out.println(e.toString());
				}
			}
		}.start();
	}
	
	private void testMySQLServer() throws Exception {
		Properties prop = new Properties();
		prop.put("user", "root");
		prop.put("password", "root");
		Connection conn = 
			DriverManager.getConnection("jdbc:mysql://localhost:3306/", prop);
		
		Statement stmt = conn.createStatement();
		ResultSet rs = stmt.executeQuery("show databases");
		while (rs.next()) {
			System.out.println(rs.getString(1));
		}
	}

}
