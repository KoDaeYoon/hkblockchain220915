package Array;

public class BookArray {
	public static void main(String[] args) {
		int i1 = 10; // int->Book , i1->bk, 10->new book()의 구조
		Book bk = new Book();
		bk.setBookName("자바");
		bk.setAuthor("이숭무");
		Book bk1 = new Book();
		Book bk2 = new Book();
		
		
		int [] i = new int[3];
		i[0] = 10;
		
		Book [] library = new Book[3];
		library[0] = new Book();
		library[1] = new Book();
		library[2] = new Book();
		
		library[0].setBookName("데이터베이스");
		library[0].setAuthor("이상범");
		library[0].showBookInfo();
		
		library[1].setBookName("HTML");
		library[1].setAuthor("이장범");
		library[1].showBookInfo();
		
		library[2].setBookName("jsp");
		library[2].setAuthor("고대윤");
		library[2].showBookInfo();
		
		for(int idx = 0; idx < i.length; idx++) {
			System.out.println(i[idx]);
		}
		for(int idx = 0; idx < library.length; idx++) {
			library[idx].showBookInfo();
		}
	}
}
