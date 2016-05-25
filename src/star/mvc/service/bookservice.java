package star.mvc.service;

import java.util.ArrayList;

import star.mvc.dao.bookdao;

public class bookservice {
	public static boolean addMsg(String bookid, String superid, String subid,
			String bookname, String isbn, String introduce, String price,
			String nowprice, String pages, String publisher, String author,
			String intime, String booknum, String location) {
		return bookdao.addMsg(bookid, superid, subid, bookname, isbn,
				introduce, price, nowprice, pages, publisher, author, intime,
				booknum, location);
	}

	// public static ArrayList getpic(String BOOKID){
	// return bookdao.getPicByID(BOOKID);
	// }

	public static ArrayList getHotsBook(String book_star) {
		return bookdao.getFlagBookMsgByname(book_star);
	}

	public static ArrayList getAllMsgByBook(String bookid) {
		return bookdao.getAllMsgByBookID(bookid);
	}
}
