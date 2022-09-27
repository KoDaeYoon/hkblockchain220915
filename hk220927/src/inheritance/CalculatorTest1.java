package inheritance;

public class CalculatorTest1 {
	public static void main(String[] args) {
		FourCalculator cal = new FourCalculator();
		cal.setData(10,0); 
		int i = cal.div();
		System.out.println(i);
	}
}   