package staticex;

public class StudentTest1 {
	public static void main(String[] args) {
		Student stu = new Student();
		stu.setStudentId(stu.serialNum++);
		stu.setStudentName("이숭무");
		System.out.println(stu.getStudentId());
		System.out.println(stu.getStudentName());
		
		Student stu1 = new Student();
		stu1.setStudentId(stu1.serialNum++);
		System.out.println(stu1.getStudentId());
	}
}
//정적인 변수를 써야 class.serialNum으로 쓸 수 있고 안쓰면 객체를 써서 stu.serialNum으로 써야한다.
//객체 변수로 쓰면 각각 따로 값을 주게 되어 stu.serialNum과 stu1.serialNum이 같은 값이 되게 된다.
//그래서 정적으로 class내에서 정의를 해놓으면 stu가 갖고있는 값을 stu1이 알게 되어 공유된 값을 사용한다.
