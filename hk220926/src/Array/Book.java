package Array;

public class Book {
	String bookName;
	String author;
	//생성자
	public Book() {}
	public Book(String bookName, String author) {
		this.bookName = bookName;
		this.author = author;
	}
	//setter
	public void setBookName(String bookName) {
		this.bookName = bookName;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	//getter
	public String getBookName(){
		return bookName;
	}
	public String getAuthor() {
		return author;
	}
	public void showBookInfo() {
		System.out.println(bookName+", "+author);
	}
}
