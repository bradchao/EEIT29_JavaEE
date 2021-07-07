package tw.brad.javaee;

import java.io.IOException;
import java.text.SimpleDateFormat;
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
@WebServlet("/Brad16")
public class Brad16 extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		Part part = request.getPart("upload");
		if (part != null) {
			String name = part.getName();
			String sname = part.getSubmittedFileName();
			System.out.println(name + ":" + sname);
			
			if (part.getSize() > 0) {
				part.write(createFileName());
			}
			
		}
	}
	
	private String createFileName() {
		SimpleDateFormat sdf =
			new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss_SSS");
		String filename = "Icon_" + sdf.format(new Date());
		return filename;
	}

}
