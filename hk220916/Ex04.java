package hk220916;

public class Ex04 {
	public static void main(String[] args) {
		int i = 100; // 4byte
		short sh = (short)i; // 4byte를 2byte로 강제형변형(큰 자료형을 작은 자료형으로 변형)
		sh = 1000; 
		// 1byte: -128~127 근데 sh는 1000
		byte b = (byte)sh;
		System.out.println(b);
		
		float f1 = 3.14f;
		int iNum = (int)f1;
		System.out.println(iNum);
		
		double dd1 = 3.141592;
		iNum = (int)dd1;
		System.out.println(iNum);
		
		iNum = 97;
		System.out.println((char)iNum);
		
		char ch1 = 'A';
		System.out.println((int)ch1);	
		
		double dNum1 = 1.7;
		float fNum2 = 0.9f;
		int iNum3 = (int)(dNum1 + fNum2); // double + float이 float+float으로 바뀐 후
		                                  // 큰 자료형을 작은 자료형으로 바꿔야하므로 명시적 형변환을 한다.
		                                  // 명시적 형변환은 앞에 (int)를 통해 변형한다.
		System.out.println(iNum3);
		
		iNum3 = (int)dNum1 + (int)fNum2;  // 각각 따로 정수형을 바꿔주고 합을 함.
		System.out.println(iNum3);
		
		char ch22 = '글';
		System.out.println((int)ch22); // 
	}
}
