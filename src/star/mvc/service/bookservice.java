package star.mvc.service;

import java.util.ArrayList;

import star.mvc.dao.bookdao;

public class bookservice {
	public static boolean addpic(String BOOKID, String PICTURE){
		return bookdao.addMsgBylocal(BOOKID, PICTURE);
	}
	
	public static ArrayList getpic(String BOOKID){
		return bookdao.getPicByID(BOOKID);
	}
}
