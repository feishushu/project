package star.mvc.dao;

import java.awt.image.Raster;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.persistence.Tuple;

import star.mvc.common.oracle_link;
import star.mvc.modle.book;

public class bookdao {

	// need fix picture
	public static ArrayList getFlagBookMsgByname(String name) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		int i = 0;
		ArrayList bookList = new ArrayList();
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt
					.executeQuery("select nowprice,author,introduce,picture from book where "
							+ name + "='1'");
			while (rs.next()) {
				book b = new book();
				b.setNowprice(rs.getString(1));
				b.setNowprice(rs.getString(2));
				b.setAuthor(rs.getString(3));
				b.setIntroduce(rs.getString(4));
				b.setPicture(rs.getString(5));
				bookList.add(b);
				i++;
				if (i == 4) {
					break;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return bookList;
	}

	// need fix picture and page
	public static ArrayList getMsgBySuperID(String supertypeid) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList supertypeList = new ArrayList();
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt
					.executeQuery("select picture,nowprice,bookname from book where supertypeid='"
							+ supertypeid + "'");
			while (rs.next()) {
				book b = new book();
				b.setPicture(rs.getString(1));
				b.setNowprice(rs.getString(2));
				b.setBookname(rs.getString(3));
				supertypeList.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return supertypeList;
	}

	// need fix picture and page
	public static ArrayList getMsgBySubID(String subtypeid) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList subtypeList = new ArrayList();
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt
					.executeQuery("select picture,nowprice,bookname from book where subtypeid='"
							+ subtypeid + "'");
			while (rs.next()) {
				book b = new book();
				b.setPicture(rs.getString(1));
				b.setNowprice(rs.getString(2));
				b.setBookname(rs.getString(3));
				subtypeList.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return subtypeList;
	}

	public static ArrayList getAllMsgByBookID(String BOOKID) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList detailList = new ArrayList();
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt
					.executeQuery("select bookid,bookname,isbn,introduce,price,nowprice,picture,pages,publisher,author,intime,booknum from book where bookid='"
							+ BOOKID + "'");
			while (rs.next()) {
				book b = new book();
				b.setBookid(rs.getString(1));
				b.setBookname(rs.getString(2));
				b.setIsbn(rs.getString(3));
				b.setIntroduce(rs.getString(4));
				b.setPrice(rs.getString(5));
				b.setNowprice(rs.getString(6));
				b.setPicture(rs.getString(7));
				b.setPages(rs.getString(8));
				b.setPublisher(rs.getString(9));
				b.setAuthor(rs.getString(10));
				b.setIntime(rs.getString(11));
				b.setBooknum(rs.getString(12));
				detailList.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return detailList;
	}
	
	/**
	 * this is a test function that insert a pic in table "book"
	 */
	public static boolean addMsgBylocal(String BOOKID, String PICTURE){
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		boolean flag = false;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			int i  =  stmt.executeUpdate("insert into book(bookid,picture) values('"+BOOKID+"','"+PICTURE+"')");
			if(i > 0){
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return flag;
		}finally{
			oracle_link.close(con, stmt, rs);
		}
		return flag;
	}
	
	public static ArrayList getPicByID(String BOOKID) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList detailList = new ArrayList();
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt
					.executeQuery("select bookid,picture from book where bookid='"
							+ BOOKID + "'");
			while (rs.next()) {
				book b = new book();
				b.setBookid(rs.getString(1));
				b.setPicture(rs.getString(2));
				detailList.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return detailList;
	}
}
