package tw.brad.javaee;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@MultipartConfig(
		location = "/Users/brad/git/repository4/javaee/src/main/webapp/upload"
		)
@WebServlet("/Brad17")
public class Brad17 extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		String account = request.getParameter("account");
		System.out.println(account);
		
		Collection<Part> parts = request.getParts();
		for (Part part : parts) {
			String name = part.getName();
			String type = part.getContentType();
			String sname = part.getSubmittedFileName();
			System.out.println(type + ":" + name + ":" + sname);
			
			// 請問一下 為什麼要先有34行的判斷 不能直接用35行的判斷就好?
			if (name.equals("upload")) {
				if (sname.length() == 0) continue;
				part.write(createFileName(account));
			}
			
		}
	}
	
	private String createFileName(String prefix) {
		SimpleDateFormat sdf =
			new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss_SSS");
		String filename = prefix + "_" + sdf.format(new Date()) + 
				(int)(Math.random()*1000);
		return filename;
	}

}
