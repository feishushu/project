/**
 * 
 */
package star.mvc.common;

/**
 * @author MDH
 *
 */
public class StringFormat {
	public static String[] SplitString(String string){
		String[] data = string.split(":");
		return data;
	}
	
	public static String Splitcarid(String str){
		String[] data = str.split(":");
		
		return data[1];
	}
	
	public static String CombString(String[] strings){
		String data = new String();
		for(int i = 0; i < strings.length; i++){
			if(i == 0){
				data = strings[i];
				continue;
			}
			data = data+":"+strings[i];
		}
		return data;
	}
	
	public static String CountpintV(String pin1,String pin2,String pin3){
		float pin,pinv1,pinv2,pinv3;
		
		pinv1 = Float.parseFloat(pin1);
		pinv2 = Float.parseFloat(pin2);
		pinv3 = Float.parseFloat(pin3);
		
		pin = (pinv1 + pinv2 + pinv3)/3f;
		
		return String.valueOf(pin);
	}
}
