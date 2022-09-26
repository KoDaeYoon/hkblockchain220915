package staticex;

public class StudentTest {
	public static void main(String[] args) {
		Student stu1 = new Student();
		stu1.setStudentId(Student.serialNum); //static을 써줘서 stu1, stu2 모두 1000이라는 값을 갖는다.
		System.out.println(stu1.getStudentId()); //여기도 전부 stu1를 Student로 바꿔서 사용
		
		Student stu2 = new Student();
		stu2.setStudentId(++stu2.serialNum);
		System.out.println(stu2.getStudentId());
		
		Student stu3 = new Student();
		stu3.setStudentId(++stu3.serialNum);
		System.out.println(stu3.getStudentId());
		
		
		//System.out.println(stu1.serialNum);
		//System.out.println(stu2.serialNum);
		//System.out.println(stu3.serialNum); stu1~3처럼 객체 변수를 써도 되지만 static은 class변수를 써주는 것이 좋다.
		
		System.out.println(Student.getSerialNum()); 
		System.out.println(Student.serialNum);
		System.out.println(Student.serialNum);
	}
}
