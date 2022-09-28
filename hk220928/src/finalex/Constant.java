package finalex;

public class Constant {
	public static void main(String[] args) {
		int num = 10;
		System.out.println(num);
		num = 20;
		System.out.println(num);
		final int NUM = 100;
		System.out.println(NUM);
		//NUM = 20;--> 에러 뜸. 변수에 final을 붙여주면 상수가된다.
		System.out.println();
		final double PI = 3.141592; //상수
	}
}
