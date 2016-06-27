package star.mvc.service;

import java.util.ArrayList;

import star.mvc.dao.commentdao;

public class comservice {
	public static ArrayList getMsgByID(String bookid){
		return commentdao.getMsgByID(bookid);
	}
	
	public static boolean addcomment(String bookid,String score,String content,String username){
		return commentdao.addcomment(bookid, score, content, username);
	}
}
