package star.mvc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import star.mvc.db.oracle_link;

public class admindao {
	
	public static String getSingleMsgByAname(String Aname, String Msg) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		String data = null;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt.executeQuery("select '" + Msg
					+ "' from book_user where uanme = '" + Aname + "'");
			rs.next();
			data = rs.getString(1);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return data;
	}
	
	
}
