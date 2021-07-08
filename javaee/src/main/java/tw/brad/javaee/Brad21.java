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
		
		//account = account.toUpperCase();
		
		try {
			if (!isAccountDup(account)) {
				int row = addMember(account, passwd, realname);
				System.out.println(row);
			}else {
				System.out.println(account + ":XX");
			}
		}catch(Exception e) {
			System.out.println(e.toString());
		}
		
	}
	
	// 老師 count(*) as count 可以再說一次嗎
	private boolean isAccountDup(String account) throws Exception {
		// SELECT FROM WHERE GROUP HAVING ORDER LIMIT
		// join
		String sql = "SELECT count(*) AS count FROM member WHERE account = ?";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, account);
		ResultSet rs = pstmt.executeQuery();
		rs.next();
		int count = rs.getInt("count");
		
		return count > 0;
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
