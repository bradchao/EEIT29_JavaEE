package tw.brad.myclasses;

public class BradUtils {
	public static int createLottery() {
		int ret = (int)(Math.random()*49+1);
		return ret;
	}
	public static String hello(String name) {
		return "Hello, " + name;
	}
	public static String calc(String x, String y, String op) {
		String result = "";
		
		try {
			int intX = Integer.parseInt(x);
			int intY = Integer.parseInt(y);
			switch (op) {
				case "1": result = (intX + intY) + ""; break;
				case "2": result = (intX - intY) + ""; break;
				case "3": result = (intX * intY) + ""; break;
				case "4": result = (intX / intY) + " ... " + (intX % intY); break;
			}
			
		}catch(Exception e) {
			
		}
		return result;
	}
}
