package star.mvc.service;

import star.mvc.dao.admindao;

public class adminservice {
	public static String getSingleMsg(String Aname, String 	Msg){
		return admindao.getSingleMsgByAname(Aname, Msg);
	}
}
