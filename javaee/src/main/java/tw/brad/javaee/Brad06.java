package tw.brad.javaee;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad06")
public class Brad06 extends HttpServlet {
	// 老師我執行06.java不是出現空白 是500
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		String x = request.getParameter("x");
		String y = request.getParameter("y");
		String op = request.getParameter("op");

		try {
			int intX = Integer.parseInt(x);
			int intY = Integer.parseInt(y);
			int intR = 0, intR2 = 0;
			
			switch(op) {
				case "+": intR = intX + intY; break;
				case "-": intR = intX - intY; break;
				case "x": intR = intX * intY; break;
				case "/": 
					intR = intX / intY; 
					intR2 = intX % intY;
					break;
			}
			
			if (op.equals("/")) {
				System.out.println(String.format("%d %s %d = %d ...... %d", intX, op, intY, intR, intR2));
			}else {
				System.out.println(String.format("%d %s %d = %d", intX, op, intY, intR));
			}
			
			// -------------------------------------------------
			response.setContentType("text/html; charset=UTF-8");
			
			try (PrintWriter out = response.getWriter()){
				if (op.equals("/")) {
					out.println(String.format("%d %s %d = %d ...... %d", intX, op, intY, intR, intR2));
				}else {
					out.println(String.format("%d %s %d = %d", intX, op, intY, intR));
				}
			}
			response.flushBuffer();
			
			
		}catch(Exception e) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("............");
			response.flushBuffer();
			
		}
		// 老師，可以說一下你昨天畫的整體的流程圖
		// 當中畫到的資料庫，並沒有畫在伺服器裡面
		// 資料庫不是也在伺服器下面嗎

		
		
		
	}

}
