package interfaceex;

public class Customer implements Buy, Sell{
//두개 이상의 인터페이스를 한번에 상속받는 것을 다중 상속이라고 한다.
	@Override
	public void sell() {
		System.out.println("판매하기");
		
	}

	@Override
	public void buy() {
		System.out.println("구매하기"); 
		
	}

}
