package tw.brad.myclasses;

public class BradUtils {
	public static int createLottery() {
		int ret = (int)(Math.random()*49+1);
		return ret;
	}
	public static String hello(String name) {
		return "Hello, " + name;
	}
}
