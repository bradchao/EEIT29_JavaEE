package tw.brad.javaee;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad11")
public class Brad11 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		RequestDispatcher dispatcher = request.getRequestDispatcher("Brad12");
		
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<h1>Brad Big Compant</h1>");
		
		//dispatcher.include(request, response);
		dispatcher.forward(request, response);
		
		out.println("<hr />");
		out.println("Copyleft");
		
		response.flushBuffer();
		
	}

}
