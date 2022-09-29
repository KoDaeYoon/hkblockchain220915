package hk220929;

public class StudentEx {
	public static void main(String[] args) {
		Student stu1 = new Student(6000,"이숭무");
		Student stu2 = new Student(7000,"이상범");
		Student stu3 = new Student(8000,"이장범");
		
		Bus bus = new Bus(101);
		SubWay sub = new SubWay(1);
		
		stu1.use(bus);
		stu1.use(sub);
		bus.showBusInfo();
	}
}
