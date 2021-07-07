package tw.brad.javaee;


import java.awt.Color;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 老師，請問這裡圖片的src怎麼抓的到這張照片? 是要依循資料夾存放路徑尋找嗎?
// 之前寫html 呼img 要從../返回再從資料夾找到該圖檔，有疑問的點是怎麼從html直接叫到.java，路徑
@WebServlet("/Brad18")
public class Brad18 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		
		float rate = 0;
		String strRate = request.getParameter("rate");
		if (strRate != null) {
			try {
				rate = Float.parseFloat(strRate);
			}catch(Exception e) {}
		}
		
		response.setContentType("image/jpeg");
		
		// 1. 畫布
		BufferedImage bimg = new BufferedImage(400, 20, BufferedImage.TYPE_INT_RGB);
		Graphics2D g2d = bimg.createGraphics();
		
		// 2. 作畫 => 記憶體
		g2d.setColor(Color.YELLOW);
		g2d.fillRect(0, 0, bimg.getWidth(), bimg.getHeight());
		g2d.setColor(Color.RED);
		g2d.fillRect(0, 0, (int)(bimg.getWidth()*rate/100), bimg.getHeight());
		
		// 3. 輸出 => 網頁, 存檔
		OutputStream out = response.getOutputStream();
		ImageIO.write(bimg, "jpeg", out);
		out.flush();
		out.close();
		
		
		
	}

}
