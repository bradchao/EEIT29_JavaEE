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
		
		// 老師不好意思，可以再用一次透過如何開啟網頁嗎
		// Port 8080 required by apache-tomcat-8.0.36 at localhost is already in use. 
		// The server may already be running in another process, 
		// or a system process may be using the port. 
		// To start this server you will need to stop the other process 
		// or change the port number(s).
		// 老師，想問一下 這門課的 git 檔案網址
		
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
