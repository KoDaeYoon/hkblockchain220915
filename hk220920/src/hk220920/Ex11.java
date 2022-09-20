package hk220920;

public class Ex11 {
	public static void main(String[] args) {
		for (int n = 1; n <= 9; n++) {
			for (int i = 1; i <= 9; i++) {
				System.out.println(n + "*" + i + "=" + n * i);
			}
		} System.out.println("================while====================");
		//---------------------------------------------------------------
		int n=1;
		while(n<=9) {
			int i =1;
			while(i <= 9) {
				System.out.println(n + "*" + i + "=" + n * i);
				i++;
			} n++;
		}
	}
}
