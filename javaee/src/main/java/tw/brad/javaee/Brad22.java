package tw.brad.javaee;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad22")
public class Brad22 extends HttpServlet {
	private Connection conn;
	
	public Brad22() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Properties prop = new Properties();
			prop.put("user", "root");
			prop.put("password", "root");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaee", prop);
			
			System.out.println("Connector OK");
		}catch (Exception e) {
			System.out.println(e);
		}		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String account = request.getParameter("account");
		String passwd = request.getParameter("passwd");
		
		if (account != null) {
			if (login(account, passwd)) {
				response.sendRedirect("main.html");
			}else {
				response.sendRedirect("brad22.html");
			}
		}
	}
	// 區分大小寫
	// ALTER TABLE `member` MODIFY
	// `account` VARCHAR(100) 
	// CHARACTER SET utf8
	// COLLATE utf8_bin;
	private boolean login(String account, String passwd) {
		
		return false;
	}
	
	

}
