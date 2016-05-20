package star.mvc.service;

import star.mvc.dao.uaerdao;

public class userservice {
	public static int setLogin(String uname, String password){
		return uaerdao.select_user(uname, password);
	}
	
	public static boolean setRegister(String uname, String password,String truename, String email, 
			String mphone, String sex, String birthday){
		return uaerdao.oracle_user(uname, password, truename, email, mphone, sex, birthday);
	}
}
