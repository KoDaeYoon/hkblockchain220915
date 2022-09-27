package inheritance;

public class VIPCustomer extends Customer{
	private int agentID;
	double saleRatio;
	
	public VIPCustomer() {
		//super(123, "ㅇㄴㄹ"); //부모클래스의 디폴트 생성자를 의미한다. super를 쓰지 않아도 부모 클래스가 자동으로 실행된다.
		customerGrade = "VIP";
		bonusRatio = 0.05;
		saleRatio = 0.1;
		System.out.println("VIPCustomer() 생성자 호출");
	}
	public VIPCustomer(int customerID, String customerName, int agentID) {
		super(customerID, customerName); // 부모에게 값 전달.
		customerGrade = "VIP";
		bonusRatio = 0.05;
		saleRatio = 0.1;
		this.agentID = agentID;
	}
	public int getAgentID() {
		return agentID;
	}
	
	@Override
	/*
	public int calcPrice(int price) {
		bonusPoint += price * bonusRatio;
		return price - (int)(price*saleRatio);
	}
	*/
	public int calcPrice(int price) {
		return super.calcPrice(price);
	}
}