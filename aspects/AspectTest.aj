import org.aspectj.lang.*;

public aspect AspectTest perthis(greetingpc()) {

	private static int testcount = 0;

	private int counter;

	public AspectTest() {
		counter = testcount;
		testcount++;
	}

	//locations of interest to AspectTest
	//can also do call(* ..) which changes call sites
	pointcut greetingpc() : execution(* Test.*(..));

	//advice we apply around greetingpc
	Object around(): greetingpc() {
		//thisJoinPoint.getArgs() returns object[] of args
		//thisJoinPoint.getSignature() gets the method name
		counter++;
		if(counter % 2 == 0) {
			return "replaced greeting" + counter;
		}
		return proceed();
	}
}
