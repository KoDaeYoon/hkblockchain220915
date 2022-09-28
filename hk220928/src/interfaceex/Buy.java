package interfaceex;

public interface Buy {
	void buy(); //추상 메서드    void buy() {};는 몸체가 있어서 추상메서드x
	            // 몸체를 만드려면 default void buy() {}로 default를 붙여줘야한다.
	default void order() {
		System.out.println("구매 주문");
	}
}
