package tw.brad.javaee;

import java.io.IOException;
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
		
	}

}
