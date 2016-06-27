package star.mvc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import star.mvc.common.oracle_link;
import star.mvc.modle.comment;

public class commentdao {

	public static boolean addcomment(String bookid, String score,
			String content, String username) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		boolean flag = false;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			int i = stmt
					.executeUpdate("insert into book_comment(bookid,score,content,username) values('"
							+ bookid
							+ "','"
							+ score
							+ "','"
							+ content
							+ "','"
							+ username + "',)");
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

	public static boolean delComByID(String id) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		boolean flag = false;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			int i = stmt.executeUpdate("delete book_comment where cid = '" + id
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

	public static ArrayList getMsgByID(String bookid) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList comList = new ArrayList();
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt
					.executeQuery("select * from book_comment where bookid = '"
							+ bookid + "'");
			while (rs.next()) {
				comment c = new comment();
				c.setCid(rs.getString("cid"));
				c.setBookid(rs.getString("bookid"));
				c.setScore(rs.getString("score"));
				c.setContent(rs.getString("content"));
				c.setUsername(rs.getString("username"));
				comList.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return comList;
	}
}
