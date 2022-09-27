package inheritance;

public class Customer {
	protected int customerID; //private는 상속도 안되고 외부에서 쓰지도 못함.
	protected String customerName; // protected는 class내에서 쓸 수 있음.
	protected String customerGrade; //상속은 하되 외부에선 쓰지 못하도록 할 수 있다.
	int bonusPoint;
	double bonusRatio;
	
	public int getCustomerID() {
		return customerID;
	}
	public void setCustomerID(int customerID) {
		this.customerID = customerID;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerGrade() {
		return customerGrade;
	}
	public void setCustomerGrade(String customerGrade) {
		this.customerGrade = customerGrade;
	}
	public Customer() {  // 객체 생성시에 실행되는 메서드 : 생성자
		customerGrade = "SILVER";
		bonusRatio = 0.01;
		System.out.println("Customer() 생성자 호출");
	}
	public Customer(int customerID, String customerName) {
		this.customerID = customerID;
		this.customerName = customerName;
		customerGrade = "SILVER";
		bonusRatio = 0.01;
	}
	
	public int calcPrice(int price) {
		bonusPoint += price * bonusRatio;
		return price;
	}
	
	public String showCustomerInfo() {
		return customerName + "님의 등급은 " + customerGrade + "이며, 보너스 포인트는 " + bonusPoint+"입니다.";
	}
}