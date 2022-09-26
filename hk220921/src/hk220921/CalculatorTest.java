package hk220921;

public class CalculatorTest {
	public static void main(String[] args) {
		Calculator calculator = new Calculator();
		//                (argument=실인자=전달인자)
		// parameter의 수와 argument의 수는 같아야 한다.
		calculator.setData1(10, 20, 30); // 호출 메서드 - class에 있는 메서드를 호출
		System.out.println(calculator.num1);
		System.out.println(calculator.num2);
		int i = calculator.add(); //num1의 10과 num2의 20을 사용
		System.out.println(i);
		i = calculator.sub();
		System.out.println(i);
		
		Calculator calculator1 = new Calculator();
		calculator1.setData1(100,200,300);
		System.out.println(calculator1.num1);
		int i1 = calculator1.add();
		System.out.println(i1);
	} 
}
