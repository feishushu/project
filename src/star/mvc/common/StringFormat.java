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
}
