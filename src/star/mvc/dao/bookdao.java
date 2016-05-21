package star.mvc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import star.mvc.db.oracle_link;
import star.mvc.modle.book;

public class bookdao {
	
	//need fix picture
	public static ArrayList getFlagBookMsgByname(String name){
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		int i = 0;
		ArrayList bookList = new ArrayList();
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt.executeQuery("select nowprice,author,introduce,picture from book where "+name+"='1'");
			while(rs.next()){
				book b = new book();
				b.setNowprice(rs.getString(1));
				b.setNowprice(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setIntroduce(rs.getString(4));
				b.setPicture(rs.getString(5));
				bookList.add(b);
				i++;
				if(i == 4){
					break;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		finally{
			oracle_link.close(con, stmt, rs);
		}
		return bookList;
	}
	
	//need fix picture and page
	public static ArrayList getMsgBySuperID(String supertypeid){
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList supertypeList = new ArrayList();
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt.executeQuery("select picture,nowprice,bookname from book where supertypeid='"+supertypeid+"'");
			while(rs.next()){
				book b = new book();
				b.setPicture(rs.getString(1));
				b.setNowprice(rs.getString(2));
				b.setBookname(rs.getString(3));
				supertypeList.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		finally{
			oracle_link.close(con, stmt, rs);
		}
		return supertypeList;
	}
	
	//need fix picture and page
		public static ArrayList getMsgBySubID(String subtypeid){
			Connection con = null;
			Statement stmt = null;
			ResultSet rs = null;
			ArrayList subtypeList = new ArrayList();
			try {
				con = oracle_link.oraclesql();
				stmt = con.createStatement();
				rs = stmt.executeQuery("select picture,nowprice,bookname from book where subtypeid='"+subtypeid+"'");
				while(rs.next()){
					book b = new book();
					b.setPicture(rs.getString(1));
					b.setNowprice(rs.getString(2));
					b.setBookname(rs.getString(3));
					subtypeList.add(b);
				}
			} catch (Exception e) {
				e.printStackTrace();
				return null;
			}
			finally{
				oracle_link.close(con, stmt, rs);
			}
			return subtypeList;
		}
		
		
		
	
}
