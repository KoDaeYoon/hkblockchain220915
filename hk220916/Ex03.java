package hk220916;

public class Ex03 {
	public static void main(String[] args) {
		double d = 10; //  정수 -> 실수로 자동형변환 후 저장한다.
		short s = 10;  // 2byte 정수자료형
		int i = s; // 2byte짜리를 4byte짜리 그릇에 넣는 행위(대입) = 자동형변환
		System.out.println(i);
		// byte->short->int->long->float->double - 정수가 실수로 변환할때는 크기가 상관없다.
		short sh = 30000;
		int i1 = sh;
		float f = sh; // 정수를 실수로 변환
		System.out.println(i1);
		System.out.println(f);
		
		double d1 = sh;
		System.out.println(d1);
		long l = 1000; // 8byte
		f = l; // 정수 -> 실수
		System.out.println(f);
		
		short sh1 = 100;
		int num = 20;
		int rsult = sh1 + num; // 2byte와 4byte의 연산
		System.out.println(rsult);
		
		long ii = 10;
		float d2 = 10.6f;
		// ii + d2를 연산, 정수 + 실수의 연산
		float rsult12 = ii + d2; // 정수->실수로 변환
		System.out.println(rsult12);
		double result3 = ii + d2; // float이었던 ii와 d2가 전부 double로 바뀐다.
		System.out.println(result3);
		
		int iNum = 20;
		float fNum = iNum; // 자동형변환 : 20.0
		double dNum;
		dNum = iNum + fNum;
		// int + float => float + float으로 자동 변환
		// 추가적으로 double에 넣는 것이므로 double(float+float)이 된다.
	}
}
