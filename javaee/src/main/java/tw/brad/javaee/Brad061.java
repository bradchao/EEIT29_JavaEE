package tw.brad.javaee;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad061")
public class Brad061 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String op = request.getParameter("op");
		
		int intX = Integer.parseInt(x);
		int intY = Integer.parseInt(y);
		int intR = intX + intY;
		System.out.println(String.format("%d %s %d = %d", intX, op, intY, intR));
		
		
		response.setContentType("text/html; charset=UTF-8");
		
		try (PrintWriter out = response.getWriter()){
			out.println(String.format("%d + %d = %d", intX, intY, intR));
		}
		
		response.flushBuffer();
		
		
		
	}
}

