package hk220929;

public class Book {
	int bookNumber;
	String bookTitle;
	
	Book(int bookNumber, String bookTitle){
		this.bookNumber = bookNumber;
		this.bookTitle = bookTitle;
	}
	@Override
	public String toString() {
		return bookTitle + "," + bookNumber;
	} 
	//toString이 override되어있지 않으면 주소가 출력된다.
}
