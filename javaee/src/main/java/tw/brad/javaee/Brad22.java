package tw.brad.javaee;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.myclasses.BCrypt;

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
		// 老師 22號 java 的 41行 可以再說一次嗎?
		if (account != null) {
			try {
				if (login(account, passwd)) {
					response.sendRedirect("main.html");
				}else {
					response.sendRedirect("brad22.html");
				}
			}catch(Exception e) {
				System.out.println(e);
				response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR,
						"Server Busy");
			}
		}
	}
	// 區分大小寫
	// ALTER TABLE `member` MODIFY
	// `account` VARCHAR(100) 
	// CHARACTER SET utf8
	// COLLATE utf8_bin;
	private boolean login(String account, String passwd) throws Exception {
		boolean ret = false;
		
		String sql = "SELECT * FROM member WHERE account = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, account);
		ResultSet rs = pstmt.executeQuery();
		
		if (rs.next()) {
			String hashPasswd = rs.getString("passwd");
			if (BCrypt.checkpw(passwd, hashPasswd)) {
				ret = true;
			}
		}
		
		return ret;
	}
	
	

}
