package hk220916;

public class Ex06 {
	public static void main(String[] args) {
		int mat = 90;
		int eng = 75;
		int total;
		double avg;
		total = mat + eng;
		avg = (double)total/2; // avg = total/2.0; -> 이것도 됨
		System.out.println(total);
		System.out.println(avg);
	}
}
