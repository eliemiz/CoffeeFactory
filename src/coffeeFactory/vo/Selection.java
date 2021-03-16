package coffeeFactory.vo;

public class Selection {
	
	public static Option[] domains = { 
		new Option("직접선택", ""),
		new Option("naver.com", "naver.com"),
		new Option("hotmail.com", "hotmail.com"),
		new Option("hanmail.net", "hanmail.net"),
		new Option("yahoo.com", "yahoo.com"),
		new Option("nate.com", "nate.com"),
		new Option("korea.com", "korea.com"),
		new Option("chol.com", "chol.com"),
		new Option("gmail.com", "gmail.com"),
		new Option("netian.com", "netian.com"),
	};
	
	public static Option[] areaCode = {
		new Option("010", "010"),
		new Option("011", "011"),
		new Option("016", "016"),
		new Option("017", "017"),
		new Option("018", "018"),
		new Option("019", "019")
	};

	public static Option[] areaCodeEx = {
		new Option("선택", ""),
		new Option("02", "02"),
		new Option("031", "031"),
		new Option("032", "032"),
		new Option("033", "033"),
		new Option("041", "041"),
		new Option("042", "042"),
		new Option("043", "043"),
		new Option("044", "044"),
		new Option("051", "051"),
		new Option("052", "052"),
		new Option("053", "053"),
		new Option("054", "054"),
		new Option("055", "055"),
		new Option("061", "061"),
		new Option("062", "062"),
		new Option("063", "063"),
		new Option("064", "064"),
		new Option("070", "070"),
		new Option("080", "080")
	};
}