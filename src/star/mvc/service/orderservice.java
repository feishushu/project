package star.mvc.service;

import java.util.ArrayList;

import star.mvc.dao.orderdao;

public class orderservice {
	public static ArrayList getMsgByBuyer(String Buyer){
		return orderdao.getMsgByBuyer(Buyer);
	}
	
	public static boolean addorder(String orderid, String bookidsum,
			String numsum, String buyer, String time){
		return orderdao.addorder(orderid, bookidsum, numsum, buyer, time);
	}
}
