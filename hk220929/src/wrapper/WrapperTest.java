package wrapper;

public class WrapperTest {
	public static void main(String[] args) {
		int i = 10;
		Integer in = 10;
		
		long l = 1000;
		Long lo = 1000L;
		
		float f = 10.7f;
		Float f1 = 10.6f;
		
		double d = 10.0;
		Double d1 = 10.0;
		
		boolean b = true;
		Boolean b1 = true;
		
		System.out.println(b1.valueOf("True"));
		
		Integer num1 = 100;
		int num2 = num1; // 언박싱 - wrapper자료형이 일반자료형이된 경우
		int num3 = 10;
		num1 = num3; // 오토박싱 - 일반자료형이 wrapper자료형이된 경우
		
		String str = "10";
		System.out.println(Integer.parseInt(str)+10);
		//문자열이었던 10을 정수로 바꿔준다.
		str = "10.0";
		System.out.println(Double.parseDouble(str)+15.3);
		//문자열이었던 10.0을 실수로 바꿔준다.
	
	}
}
