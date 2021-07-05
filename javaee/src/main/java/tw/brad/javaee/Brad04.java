package tw.brad.javaee;

import java.io.IOException;
import java.util.Map;
import java.util.Set;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Brad04")
public class Brad04 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		Map<String,String[]> maps = request.getParameterMap();
		Set<String> keys = maps.keySet();
		for (String key : keys) {
			System.out.println(key);
			String[] data = maps.get(key);
			for (String row : data) {
				System.out.println(row);
			}
			System.out.println("---");
		}
		
	}

}
