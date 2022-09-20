package hk220920;

public class Ex17 {
	public static void main(String[] args) {
		for(int gop = 1; gop<=9; gop++) {
			System.out.println("7*"+gop+"="+7*gop);
		} // 홀수 곱만 출력하세요.
		System.out.println("홀수 곱");
		for(int gop = 1; gop<=9; gop+=2) {
			System.out.println("7*"+gop+"="+7*gop);
		} 
		System.out.println("continue문 쓰는 방법");
		for(int gop = 1; gop<=9; gop++) {
			if(gop % 2==1) continue;
			System.out.println("7*"+gop+"="+7*gop);
		}
		System.out.println("while문");
		//while 짝수만 출력-----------------------------------
		int gop = 0;
		while(gop<=8) {
			gop++;
			if(gop%2==1) continue;
			System.out.println("7*"+gop+"="+7*gop);
		}
		//while 홀수만 출력-------------------------------------
		gop = 0;
		while(gop<=8) {
			gop++;
			if(gop%2==0) continue;
			System.out.println("7*"+gop+"="+7*gop);
		}
	}
}
