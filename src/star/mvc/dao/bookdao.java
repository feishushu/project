package star.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import star.mvc.common.StringFormat;
import star.mvc.common.oracle_link;
import star.mvc.modle.book;

public class bookdao {

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
					.executeQuery("select bookid,nowprice,author,introduce,picture from book where "
							+ name + "='1'");
			while (rs.next()) {
				book b = new book();
				b.setBookid(rs.getString("bookid"));
				b.setNowprice(rs.getString("nowprice"));
				b.setAuthor(rs.getString("author"));
				b.setIntroduce(rs.getString("introduce"));
				b.setPicture(rs.getString("picture"));
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

	public static ArrayList getMsgBySuperID(String supertypeid, int page) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList supertypeList = new ArrayList();
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt
					.executeQuery("select * from (select a.*,rownum rn from "
							+ "(select author,picture,nowprice,introduce,bookname,bookid from book where supertypeid='"
							+ supertypeid + "') a where rownum<='" + page
							+ "'*2) where rn>=('" + page + "'-1)*2+1");
			while (rs.next()) {
				book b = new book();
				b.setAuthor(rs.getString("author"));
				b.setPicture(rs.getString("picture"));
				b.setNowprice(rs.getString("nowprice"));
				b.setIntroduce(rs.getString("introduce"));
				b.setBookname(rs.getString("bookname"));
				b.setBookid(rs.getString("bookid"));
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

	public static ArrayList getMsgBySubID(String subtypeid, int page) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList subtypeList = new ArrayList();
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt
					.executeQuery("select * from (select a.*,rownum rn from "
							+ "(select author,picture,nowprice,introduce,bookname,bookid from book where subtypeid='"
							+ subtypeid + "' ) a where rownum<='" + page
							+ "'*2) where rn>=('" + page + "'-1)*2+1");

			while (rs.next()) {
				book b = new book();
				b.setAuthor(rs.getString("author"));
				b.setPicture(rs.getString("picture"));
				b.setNowprice(rs.getString("nowprice"));
				b.setIntroduce(rs.getString("introduce"));
				b.setBookname(rs.getString("bookname"));
				b.setBookid(rs.getString("bookid"));
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
			rs = stmt.executeQuery("select * from book where bookid='" + BOOKID
					+ "'");
			while (rs.next()) {
				book b = new book();
				b.setBookid(rs.getString("bookid"));
				b.setSupertypeid(rs.getString("supertypeid"));
				b.setSubtypeid(rs.getString("subtypeid"));
				b.setBookname(rs.getString("bookname"));
				b.setIsbn(rs.getString("isbn"));
				b.setIntroduce(rs.getString("introduce"));
				b.setPrice(rs.getString("price"));
				b.setNowprice(rs.getString("nowprice"));
				b.setPicture(rs.getString("picture"));
				b.setPages(rs.getString("pages"));
				b.setPublisher(rs.getString("publisher"));
				b.setAuthor(rs.getString("author"));
				b.setIntime(rs.getString("intime"));
				b.setNewbook(rs.getString("newbook"));
				b.setSalesbook(rs.getString("salesbook"));
				b.setHotsbook(rs.getString("hotsbook"));
				b.setSpeciabook(rs.getString("speciabook"));
				b.setBooknum(rs.getString("booknum"));
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

	public static ArrayList getMsgByBookIDStr(String str) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList bookList = new ArrayList();
		String[] data = StringFormat.SplitString(str);
		try {
			for (int i = 0; i < data.length; i++) {
				con = oracle_link.oraclesql();
				stmt = con.createStatement();
				rs = stmt
						.executeQuery("select bookid,bookname,nowprice,picture from book where bookid='"
								+ data[i] + "'");
				rs.next();
				book b = new book();
				b.setBookid(rs.getString("bookid"));
				b.setBookname(rs.getString("bookname"));
				b.setNowprice(rs.getString("nowprice"));
				b.setPicture(rs.getString("picture"));
				bookList.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return bookList;
	}

	public static boolean addMsg(String bookid, String superid, String subid,
			String bookname, String isbn, String introduce, String price,
			String nowprice, String pages, String publisher, String author,
			String intime, String booknum, String location) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		boolean flag = false;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			int i = stmt
					.executeUpdate("insert into book(bookid,supertypeid,subtypeid,bookname,isbn,introduce,price,nowprice,picture,pages,publisher,author,intime,booknum) values('"
							+ bookid
							+ "','"
							+ superid
							+ "','"
							+ subid
							+ "','"
							+ bookname
							+ "','"
							+ isbn
							+ "','"
							+ introduce
							+ "','"
							+ price
							+ "','"
							+ nowprice
							+ "','"
							+ location
							+ "','"
							+ pages
							+ "','"
							+ publisher
							+ "','"
							+ author
							+ "','"
							+ intime
							+ "','"
							+ booknum
							+ "')");
			if (i > 0) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return flag;
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return flag;
	}

	public static ArrayList searchMsgBystring(String key, int page) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList dataList = new ArrayList();
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt
					.executeQuery("select * from (select a.*,rownum rn from "
							+ "(select bookid, bookname, isbn, picture, nowprice, introduce, publisher, author from book where "
							+ "bookname like '%" + key + "%' or "
							+ "isbn like '%" + key + "%' or "
							+ "introduce like '%" + key + "%' or "
							+ "publisher like '%" + key + "%' or "
							+ "author like '%" + key + "%') a where rownum<='"
							+ page + "'*2) where rn>=('" + page + "'-1)*2+1");
			while (rs.next()) {
				book b = new book();
				b.setBookid(rs.getString("bookid"));
				b.setBookname(rs.getString("bookname"));
				b.setIsbn(rs.getString("isbn"));
				b.setPicture(rs.getString("picture"));
				b.setNowprice(rs.getString("nowprice"));
				b.setIntroduce(rs.getString("introduce"));
				b.setPublisher(rs.getString("publisher"));
				b.setAuthor(rs.getString("author"));
				dataList.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return dataList;
	}

	public static ArrayList admSearchMsgBystring(String key) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList dataList = new ArrayList();
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt
					.executeQuery("select bookid, bookname, booknum, price, nowprice from book where "
							+ "bookname like '%"
							+ key
							+ "%' or "
							+ "bookid like '%"
							+ key
							+ "%' or "
							+ "publisher like '%"
							+ key
							+ "%' or "
							+ "author like '%" + key + "%'");
			while (rs.next()) {
				book b = new book();
				b.setBookid(rs.getString("bookid"));
				b.setBookname(rs.getString("bookname"));
				b.setBooknum(rs.getString("booknum"));
				b.setPrice(rs.getString("price"));
				b.setNowprice(rs.getString("nowprice"));

				dataList.add(b);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return dataList;
	}

	public static boolean updateNowprice(String bookid, String nowprice) {
		Connection con = null;
		PreparedStatement ps = null;
		boolean flag = false;
		con = oracle_link.oraclesql();
		String sql = "update book set nowprice = ? where bookid = '" + bookid
				+ "'";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, nowprice);
			int i = ps.executeUpdate();
			if (i > 0) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return flag;
		} finally {
			try {
				con.close();
				ps.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return flag;
	}

	public static boolean updateBook(String bookid, String superid,
			String subid, String bookname, String isbn, String introduce,
			String price, String nowprice, String pages, String publisher,
			String author, String intime, String booknum, String location,
			String hotsbook, String newbook, String speciabook) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		boolean flag = false;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			int i = stmt.executeUpdate("update book set supertypeid='" + superid
					+ "',subtypeid='" + subid + "',bookname='" + bookname
					+ "',isbn='" + isbn + "',introduce='" + introduce
					+ "',price='" + price + "',nowprice='" + nowprice
					+ "',picture='" + location + "',pages='" + pages
					+ "',publisher='" + publisher + "',author='" + author
					+ "',intime='" + intime + "',newbook='" + newbook
					+ "',hotsbook='" + hotsbook + "',speciabook='" + speciabook
					+ "',booknum='" + booknum + "' where bookid='" + bookid
					+ "'");
			if (i > 0) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return flag;
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return flag;
	}

	public static boolean delBookbyID(String id) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		boolean flag = false;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			int i = stmt.executeUpdate("delete book where bookid = '" + id
					+ "'");
			if (i > 0) {
				flag = true;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return flag;
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return flag;
	}
}
