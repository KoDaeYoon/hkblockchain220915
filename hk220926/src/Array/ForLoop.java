package Array;

public class ForLoop {
	public static void main(String[] args) {
		String[] strArray = {"자바", "데이터베이스", "jsp"};
		for(int idx = 0; idx<strArray.length; idx++) {
			System.out.println(strArray[idx]);
		}
		for(String str : strArray) {
			System.out.println(str);
		}
		int i [] = {1,2,3,4,5,6};
		for(int s : i) {
			System.out.println(s);
		}
		double d [] = {1,2,3,4,5};
		for (double ff : d) {
			System.out.println(ff);
		}
	}
}
