package star.mvc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import star.mvc.common.oracle_link;
import star.mvc.modle.order;

public class orderdao {

	public static ArrayList getMsgByBuyer(String Buyer) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList msgList = new ArrayList();
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt
					.executeQuery("select orderid,bookidsum,numsum,time from book_order where buyer='"
							+ Buyer + "' order by time");
			while (rs.next()) {
				order o = new order();
				o.setOederid(rs.getString("orderid"));
				o.setBookidsum(rs.getString("bookidsum"));
				o.setNumsum(rs.getString("numsum"));
				o.setTime(rs.getString("time"));
				msgList.add(o);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return msgList;
	}

	public static boolean addorder(String orderid, String bookidsum,
			String numsum, String buyer, String time) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		boolean flag = false;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			int i = stmt
					.executeUpdate("insert into book_order(orderid,bookidsum,numsum,buyer,time) values('"
							+ orderid
							+ "', '"
							+ bookidsum
							+ "', '"
							+ numsum
							+ "', '" + buyer + "', '" + time + "')");
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
