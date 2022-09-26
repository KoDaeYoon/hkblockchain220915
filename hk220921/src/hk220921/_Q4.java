package hk220921;

public class _Q4 {
	public static void main(String[] args) {
		for(int n = 6; n<=7; n++) {
			if(n==7) {
				System.out.println("6단 끝");
				System.out.println("7단 시작");
			}
			for(int i = 4; i<=6; i++) {
				System.out.println(n+"*"+i+"="+n*i);
			}
			if(n==7) System.out.println("7단 끝");
		}
	}
}