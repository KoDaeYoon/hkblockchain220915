package hk220920;

public class Ex18 {
	public static void main(String[] args) {
		for(int gop = 1; ; gop++) {
			if(gop==10) break;
			System.out.println("7*"+gop+"="+7*gop);
		}System.out.println("=========while==========");
		//-------------------------------------------------
		int gop = 1;
		while(true) {
			if(gop==10) break;
			System.out.println("7*"+gop+"="+7*gop);
			gop++;
		}// break를 통해서 while의 조건문을 없애고 true로 쓸 수 있음.
	}
}
