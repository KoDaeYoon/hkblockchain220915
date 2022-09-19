package hk220919;

public class Ex06 {
	public static void main(String[] args) {
		int score = 75;
		String str;
		if(score>=60) str = "합격";
		else str = "불합격";
		System.out.println(str);
		//-------------------------------------------------
		String str1 = (score >=60) ? "합격" : "불합격";
		System.out.println(str1); // 삼항연산자로 바꾼거
		//-------------------------------------------------
		char grade = 'T';
		if(score>=60) grade = 'T';
		else grade = 'F';
		System.out.println(grade);
		// 삼항연산자로 바꾸기
		String str2 = (score>=60) ? "T" : "F";
		System.out.println(str2);
	}
}
