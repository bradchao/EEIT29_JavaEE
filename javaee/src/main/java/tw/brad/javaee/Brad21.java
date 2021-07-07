package tw.brad.javaee;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.myclasses.BCrypt;

@WebServlet("/Brad21")
public class Brad21 extends HttpServlet {
	private boolean isLoadConnector;
	private Connection conn;
	
    public Brad21() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Properties prop = new Properties();
			prop.put("user", "root");
			prop.put("password", "root");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/javaee", prop);
			
			isLoadConnector = true;
			System.out.println("Connector OK");
		}catch (Exception e) {
			isLoadConnector = false;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String account = request.getParameter("account");
		String passwd = request.getParameter("passwd");
		String realname = request.getParameter("realname");
		
		try {
			int row = addMember(account, passwd, realname);
			System.out.println(row);
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		
	}
	
	private int addMember(String account, String passwd, String realname) 
		throws Exception {
		
		String sql = "INSERT INTO member (account,passwd,realname) VALUES (?,?,?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, account);
		pstmt.setString(2, BCrypt.hashpw(passwd, BCrypt.gensalt()));
		pstmt.setString(3, realname);
		int count = pstmt.executeUpdate();
		return count;
	}

}
