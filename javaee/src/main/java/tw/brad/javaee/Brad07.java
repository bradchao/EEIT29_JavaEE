package tw.brad.javaee;

import java.io.IOException;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Brad07
 */
@WebServlet("/Brad07")
public class Brad07 extends HttpServlet {
    public Brad07() {
    	System.out.println("Brad07()");
    }


	@Override
	public void init() throws ServletException {
		System.out.println("init()");
		//super.init();
	}

	@Override
	public void init(ServletConfig config) throws ServletException {
		System.out.println("init(ServletConfig)");
		//super.init(config);
	}

	// --------------------------------------------------
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("service()");
		
		String method = req.getMethod();
		System.out.println(method);
		
		super.service(req, resp);
	}

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet()");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost()");
	}

}
