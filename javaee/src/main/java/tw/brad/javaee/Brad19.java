package tw.brad.javaee;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.geom.AffineTransform;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Brad19")
public class Brad19 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {

		BufferedImage bimg = 
			ImageIO.read(
				new File("/Users/brad/git/repository4/javaee/src/main/webapp/imgs/coffee.jpeg"));
		
		// 作畫
		Font font = new Font(null, Font.BOLD, 32);
		AffineTransform tran = new AffineTransform();
		tran.rotate(Math.toRadians(-30), 0, 0);
		Font font2 = font.deriveFont(tran);
		
		Graphics2D g2d = bimg.createGraphics();
		g2d.setColor(Color.YELLOW);
		g2d.setFont(font2);
		g2d.drawString("Hello, World", 20, 60);
		
		response.setContentType("image/jpeg");
		OutputStream out = response.getOutputStream();
		ImageIO.write(bimg, "jpeg", out);
		out.flush();
		out.close();
		
		FileOutputStream fout = 
			new FileOutputStream(
				"/Users/brad/git/repository4/javaee/src/main/webapp/imgs/brad.jpg");
		ImageIO.write(bimg, "jpeg", fout);
		fout.flush();
		fout.close();
		
	}

}
