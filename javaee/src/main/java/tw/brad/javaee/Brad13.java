package tw.brad.javaee;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import tw.brad.myclasses.Brad14;

/**
 * Servlet implementation class Brad13 => 控制器
 */
@WebServlet("/Brad13")
public class Brad13 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		// 1. 預備
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String op = request.getParameter("op");
		
		if (x == null) x ="0";
		if (y == null) y ="0";
		if (op == null) op ="1";
		
		// 2. Modle
		Brad14 modle = new Brad14(x, y, op);
		double result = modle.operation(); 
		
		// 3. View => Viewer
		String url = String.format(
			"Brad15?x=%s&y=%s&op=%s&result=%s&vfile=%s", x,y,op,result, "view2");
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
		
		
	}
}
