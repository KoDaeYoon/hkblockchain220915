package hk220929;

public class ToStringEx {
	public static void main(String[] args) {
		Book book1 = new Book(200, "개미");
		System.out.println(book1);
		System.out.println(book1.toString());
		
		String str = new String("Hello java");
		System.out.println(str); //heap영역의 객체를 str에 저장했기때문에 주소가 출력되어야한다.
								// 하지만 toString()이 String에서는 override돼있는거기 때문에 안해도 Hello java가 출력된다.
		
	}
}
