package hk220916;

public class Ex02 {
	public static void main(String[] args) {
		int i;  // 변수: 변할 수 있는 값
		i=10;
		System.out.println(i);
		i=20;     // 값을 변경
		System.out.println(i);
		// 상수: 값을 변경할 수 없다.
		// 리터럴 상수: 10 등
		// 사용자 상수: 사용자 정의 --> final이라는 키를 사용하면.
		double pi = 3.141592;
		System.out.println(pi);
		pi = 3.11111;
		System.out.println(pi);
		
		final double PI = 3.141592;
		System.out.println(PI);
		// PI = 3.11111; - 불가능
		final int MAX_VOL=100;
		final int MIN_VOL=1;
		
	}
}
