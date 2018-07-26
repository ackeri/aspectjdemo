
public class Test {

	public String getGreeting() {
		return "no greeting";
	}

	public int getGreetingNum() {
		return 0;
	}

	public static void main(String[] args) {
		Test t1 = new Test();
		Test t2 = new Test();
		System.out.println("-Object 1");
		System.out.println(t1.getGreeting());
		System.out.println(t1.getGreeting());

		System.out.println("-Object 2");
		System.out.println(t2.getGreeting());
		System.out.println(t2.getGreeting());

		System.out.println("-number test");
		System.out.println(t2.getGreetingNum());
	}

}
