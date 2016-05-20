package star.mvc.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import star.mvc.db.oracle_link;

public class uaerdao {
	public String getTrueNameByUname(String uname) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		String data = null;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt.executeQuery("select truename from book_user where uanme = '"+uname+"'");
			rs.next();
			data = rs.getString("TURENAME");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		finally{
			oracle_link.close(con, stmt, rs);
		}
		return data;
	}
	
	public String getMphoneByUname(String uname){
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		String data = null;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt.executeQuery("select mphone from book_user where uanme = '"+uname+"'");
			rs.next();
			data = rs.getString("mphone");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		finally{
			oracle_link.close(con, stmt, rs);
		}
		return data;
	}
	
	public String getSexByUname(String uname){
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		String data = null;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt.executeQuery("select sex from book_user where uanme = '"+uname+"'");
			rs.next();
			data = rs.getString("sex");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		finally{
			oracle_link.close(con, stmt, rs);
		}
		return data;
	}
	
	//maybe the String have some problem!!!need fix.
	public String getBirthdayByUname(String uname){
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		String data = null;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt.executeQuery("select birthday from book_user where uanme = '"+uname+"'");
			rs.next();
			data = rs.getString("birthday");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		finally{
			oracle_link.close(con, stmt, rs);
		}
		return data;
	}
	
	public String getEmailByUname(String uname){
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		String data = null;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt.executeQuery("select email from book_user where uanme = '"+uname+"'");
			rs.next();
			data = rs.getString("email");
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		finally{
			oracle_link.close(con, stmt, rs);
		}
		return data;
	}
	
}
