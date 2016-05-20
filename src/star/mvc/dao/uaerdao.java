package star.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import star.mvc.db.oracle_link;

public class uaerdao {
	//validate logon
	public static int select_user(String uname, String password){
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		int bean = 0;
		
		con = oracle_link.oraclesql();
		String sql = "select password from book_user where uname = '"+uname+"'";
		try
		{
			stmt = con.createStatement();
			
			rs = stmt.executeQuery(sql);
			System.out.println(rs);
			if(rs != null){
				rs.next();
				if(password.equals(rs.getString("password"))){
					bean = 1;
				}else{
					bean = -1;
				}
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		finally{
			oracle_link.close(con, stmt, rs);
		}
		return bean;
	}
	
	//link mao db ,insert number in book_user
	public static boolean oracle_user(String uname, String password,String truename, String email, 
			String mphone, String sex, String birthday){
		Connection con = null;
		PreparedStatement ps = null;
		
		boolean bean = false;
			
		con = oracle_link.oraclesql();
			
		/*Date date = null;
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try {
			date = format.parse(birthday);
		} catch (ParseException e) {
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
			//System.out.println(i);
			if(i>0){
				bean = true;
			}
			//stat = con.createStatement();
			//stat.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally{
			try {
				con.close();
				ps.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		return bean;
	}
	
	public static String getTrueNameByUname(String uname) {
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
