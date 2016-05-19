package star.mvc.time;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Time {
	public static String setTime() {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//set time doc
		return df.format(new Date());// new Date()In order to obtain the current system time
	}
}
