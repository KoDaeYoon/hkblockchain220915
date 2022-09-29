package String;

public class StringTest1 {
	public static void main(String[] args) {
		String str1 = new String("abc");
		String str2 = new String("abc");
		//new라고 했기때문에 주소가 같은지 물어봄
		String str3 = "abc";
		String str4 = "abc";
		//new가 생략되어 있고 주소가 같은지 물어본거지만 주소가 같아서 true
		System.out.println(str1 == str2);
		System.out.println(str2 == str3);
		System.out.println(str3 == str4);
		
		String javaStr = new String("java");
		String androidStr = new String("android");
		System.out.println(javaStr+androidStr);
		System.out.println(javaStr.concat(androidStr));
		System.out.println(javaStr.toLowerCase());
		//소문자로 바꿔줌
		System.out.println(javaStr.toUpperCase());
		//대문자로 바꿔줌
		System.out.println(javaStr.charAt(1));
		//--번째 문자가 뭐냐
		System.out.println(javaStr.indexOf('v'));
		//--문자는 몇번째이 있냐
		System.out.println(javaStr.valueOf(10)+"ubvuse");
		//어떠한 값이든 문자열로 바꿔줌
		System.out.println(10+"sfsdfsdf");
		//10이 자동형변환해서 문자열로 바뀐 후 출력된다
		System.out.println(javaStr.lastIndexOf('a'));
		//--문자는 뒤에서 몇번째에 있냐
		String str5 = "Life is too short";
		System.out.println(str5.substring(0, 17));
		System.out.println(str5.substring(8, 11));
		System.out.println(str5.indexOf("is too"));
		System.out.println(str5.substring(str5.indexOf("is"), str5.indexOf("is")+6));
		System.out.println(str5.substring(8));
		//8번째 문자열부터 전부다
		System.out.println(str5.indexOf("i",3));
		//대충 몇번째에 있는지 알고 있으면 3은 3번째부터 찾아라는 뜻.
		
	}
}
