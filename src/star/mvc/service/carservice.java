package star.mvc.service;

import java.util.ArrayList;

import star.mvc.dao.cardao;

public class carservice {
	public static boolean addcar(String bookid, String bookpic,
			String nowprice, String booknum, String buyer){
		return cardao.addcar(bookid, bookpic, nowprice, booknum, buyer);
	}
	
	public static boolean delcarByBuyer(String buyer){
		return cardao.delcarByBuyer(buyer);
	}
	
	public static boolean delcarByID(String id){
		return cardao.delcarByID(id);
	}
	
	public static ArrayList getMsgByIDEr(String buyer){
		return cardao.getMsgByIDEr(buyer);
	}
	
	public static boolean updatecarByIDNum(String id, String booknum){
		return cardao.updatecarByIDNum(id, booknum);
	}
}
