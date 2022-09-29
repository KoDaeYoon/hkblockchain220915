package hk220929;

public class StringEquals {
	public static void main(String[] args) {
		// 객체변수,주소변수,참조변수     
		String str1 = new String("이숭무"); //주소를 저장
		String str2 = new String("이숭무");
		System.out.println(str1 == str2); //주소가 같냐고 물어보는 질문
		char ch = 'A';                    // 값을 저장
		char ch1 = 'A';
		System.out.println(ch == ch1);    //값이 같냐고 물어보는 질문
		
		System.out.println(str1.equals(str2)); // 값이 같냐고 물어보는 질문
		// equals는 object에 정의되어있는 메서드
	}
}
