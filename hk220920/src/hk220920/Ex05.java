package hk220920;

public class Ex05 {
	public static void main(String[] args) {
		int sum = 0;
		for(int i = 1; i<=10 ; i++) { // for(int i =1; ; i++) 로 하면 무한 루프
			System.out.println(i + "번 찍었습니다.");
			if(i==10) {
				System.out.println("나무가 넘어간다.");
			}
		}
	}
}
