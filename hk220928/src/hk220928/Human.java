package hk220928;

public class Human extends Animal{
	@Override
	public void move() {
		System.out.println("사람이 움직입니다.");
	}
	public void readBook() //머리부분
	{//몸체
		System.out.println("사람이 책을 읽습니다.");
	}
	
}
