package tw.brad.javaee;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad05")
public class Brad05 extends HttpServlet {
	private String[] favoritiesName = {"打電腦","打遊戲","打籃球",
			"打麻將","打毛線","打小孩"};
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		String account = request.getParameter("account");
		String passwd = request.getParameter("passwd");
		String gender = request.getParameter("gender");
		String[] favorities = request.getParameterValues("favority");
		
		System.out.println("account = " + account);
		System.out.println("passwd = " + passwd);
		System.out.println("gender = " + gender);
		
		System.out.println("Favorities:");
		for (String favority : favorities) {
			System.out.println(favoritiesName[Integer.parseInt(favority)]);
		}
		
		System.out.println("----");
		
	}
}
