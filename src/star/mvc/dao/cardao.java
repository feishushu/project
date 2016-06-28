package star.mvc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import star.mvc.common.oracle_link;
import star.mvc.modle.car;

public class cardao {
	public static boolean addcar(String bookid, String bookpic,
			String nowprice, String booknum, String buyer) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		boolean flag = false;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			int i = stmt
					.executeUpdate("insert into car(bookid,bookpic,nowprice,booknum,buyer) values('"
							+ bookid
							+ "','"
							+ bookpic
							+ "','"
							+ nowprice
							+ "','" + booknum + "','" + buyer + "')");
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

	public static boolean delcarByBuyer(String buyer) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		boolean flag = false;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			int i = stmt.executeUpdate("delete car where  buyer='" + buyer
					+ "' ");
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

	public static boolean delcarByID(String id) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		boolean flag = false;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			int i = stmt.executeUpdate("delete car where  id='" + id + "' ");
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

	public static ArrayList getMsgByIDEr(String buyer) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList carList = new ArrayList();
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt.executeQuery("select * from car where buyer = '" + buyer
					+ "'");
			while (rs.next()) {
				car c = new car();
				c.setId(rs.getString("id"));
				c.setbookid(rs.getString("bookid"));
				c.setBookpic(rs.getString("bookpic"));
				c.setNowprice(rs.getString("nowprice"));
				c.setBooknum(rs.getString("booknum"));
				c.setBuyer(rs.getString("buyer"));
				carList.add(c);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return carList;
	}

	public static boolean updatecarByIDNum(String id, String booknum) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		boolean flag = false;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			int i = stmt.executeUpdate("update car set booknum='" + booknum
					+ "' where id='" + id + "' ");
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
