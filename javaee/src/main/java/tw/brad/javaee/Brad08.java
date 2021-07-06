package tw.brad.javaee;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad08")
public class Brad08 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String op = request.getParameter("op");

		String result = "";
		int intX, intY, intR, intR2;
		intX = intY = intR = intR2 = 0;
		
		try {
			intX = Integer.parseInt(x);
			intY = Integer.parseInt(y);
			
			switch(op) {
				case "+": 
					intR = intX + intY;
					result = intR+"";
					break;
				case "-": 
					intR = intX - intY; 
					result = intR+"";
					break;
				case "x": 
					intR = intX * intY; 
					result = intR+"";
					break;
				case "/": 
					intR = intX / intY; 
					intR2 = intX % intY;
					result = intR+" ...... " + intR2;
					break;
			}
			
		}catch(Exception e) {
			
		}
		
		//-----------------------------------------------------
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.append("<h1>Brad Big Company</h1>\n")
			.append("<hr />\n")
			.append("<form action='Brad08' method='get'>\n")
			.append("	<input type='number' name='x' value='" + intX + "' />\n")
			.append("	<select name='op'>\n")
			.append("		<option>+</option>\n")
			.append("		<option>-</option>\n")
			.append("		<option selected>x</option>\n")
			.append("		<option>/</option>\n")
			.append("	</select>\n")
			.append("	<input type='number' name='y' value='" + intY + "' />\n")
			.append("	<input type='submit' value='=' />\n")
			.append(result)
			.append("</form>\n");
		
		response.flushBuffer();
		
		
	}

}
