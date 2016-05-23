package star.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import star.mvc.common.oracle_link;
import star.mvc.modle.user;

public class uaerdao {
	// validate logon
	public static int select_user(String uname, String password) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		int bean = 0;

		con = oracle_link.oraclesql();
		String sql = "select password from book_user where uname = '" + uname
				+ "'";
		try {
			stmt = con.createStatement();

			rs = stmt.executeQuery(sql);
			
			if (rs != null) {
				rs.next();
				if (password.equals(rs.getString("password"))) {
					bean = 1;
				} else {
					bean = -1;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return bean;
	}

	// link mao db ,insert number in book_user
	public static boolean oracle_user(String uname, String password,
			String truename, String email, String mphone, String sex,
			String birthday) {
		Connection con = null;
		PreparedStatement ps = null;

		boolean bean = false;

		con = oracle_link.oraclesql();
			
		/*Date date = null;
=======

		Date date = null;
>>>>>>> Stashed changes
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try {
			date = format.parse(birthday);
		} catch (ParseException e) {
<<<<<<< Updated upstream
				// TODO Auto-generated catch block
				e.printStackTrace();
		}*/
			
	

		String sql = "insert into book_user(uname,password,truename,mphone,sex,birthday,email) values(?,?,?,?,?,?,?)";
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, uname);
			ps.setString(2, password);
			ps.setString(3, truename);
			ps.setString(4, mphone);
			ps.setString(5, sex);
			ps.setString(6, birthday);
			ps.setString(7, email);
			int i = ps.executeUpdate();
			if (i > 0) {
				bean = true;
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return bean;
	}

	// This method may have a problem about birthday!!!
	public static String getSingleMsgByUname(String Uname, String Msg) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		String data = null;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt.executeQuery("select " + Msg
					+ " from book_user where uanme = '" + Uname + "'");
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

	public static ArrayList getAllMsgByUname(String Uname) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList singleUserList = new ArrayList();
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt.executeQuery("selsect * from book_user where uname='"
					+ Uname + "'");
			rs.next();
			user u = new user();
			u.setUname(rs.getString(1));
			u.setPassword(rs.getString(2));
			u.setTruename(rs.getString(3));
			u.setMphone(rs.getString(4));
			u.setSex(rs.getString(5));
			u.setBirthday(rs.getString(6));
			u.setEmail(rs.getString(7));
			singleUserList.add(u);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return singleUserList;
	}

	public static ArrayList getAllMsgOfUser() {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		ArrayList allUserList = new ArrayList();
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			rs = stmt.executeQuery("selsect * from book_user");
			while (rs.next()) {
				user u = new user();
				u.setUname(rs.getString(1));
				u.setPassword(rs.getString(2));
				u.setTruename(rs.getString(3));
				u.setMphone(rs.getString(4));
				u.setSex(rs.getString(5));
				u.setBirthday(rs.getString(6));
				u.setEmail(rs.getString(7));
				allUserList.add(u);
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		} finally {
			oracle_link.close(con, stmt, rs);
		}
		return allUserList;
	}
	
	public static boolean delUserByUname(String Uname) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		boolean result = false;
		try {
			con = oracle_link.oraclesql();
			stmt = con.createStatement();
			stmt.executeUpdate("delete from book_user where uname='"+Uname+"'");
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
			result = false;
			return result;
		}
		finally{
			oracle_link.close(con, stmt, rs);
		}
		return result;
	}

}
