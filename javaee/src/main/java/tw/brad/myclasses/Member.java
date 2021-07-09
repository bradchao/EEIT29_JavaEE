package tw.brad.myclasses;

public class Member {
	private String account, realname;
	private int age;
	
	public Member() {
		this("","",0);
	}
	public Member(String account, String realname, int age) {
		this.account = account;
		this.realname = realname;
		this.age = age;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getRealname() {
		return realname;
	}
	public void setRealname(String realname) {
		this.realname = realname;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	
	@Override
	public String toString() {
		return account +":" + realname + ":" + age;
	}
}
