package hk220920;

public class Ex12 {
	public static void main(String[] args) {
		for(int n = 4; n<=6; n++) {
			for(int i = 3; i<=8; i++) {
			System.out.println(n+"*"+i+"="+4*i);
			}
		}
		System.out.println("===========while=============");
		//---------------------------------------------------
		int n = 4;
		while(n<=6) {
			int i =3;
			while(i<=8) {
				System.out.println(n+"*"+i+"="+n*i);
				i++;
			}
			n++;
		}
	}
}
