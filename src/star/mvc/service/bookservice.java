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
	
	public static ArrayList getHotsBook(String book_star){
		return bookdao.getFlagBookMsgByname(book_star);
	}
	
	public static ArrayList getAllMsgByBook(String bookid){
		return bookdao.getAllMsgByBookID(bookid);
	}
}
