package star.mvc.common;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.enterprise.inject.New;

public class Time {
	public static String setTime() {
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//set time doc
		return df.format(new Date());// new Date()In order to obtain the current system time
	}
	
	public static String getorderidtime(){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		return df.format(new Date());
	}
}
