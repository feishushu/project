package star.mvc.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class oracle_sql {
	
	private static Connection con = null;
	private static Statement stat = null;
	private static PreparedStatement pre = null;
	private static ResultSet result = null;
	//validate logon
	public static int select_user(String id, String password){
		
		int bean = 0;
		
		con = oracle_link.oraclesql();
		String sql = "select * from book_user";
		try
		{
			pre = con.prepareStatement(sql);
			
			result = pre.executeQuery();
			
			while(result.next()){
				if(id.equals(result.getString("uname"))){
					if(password.equals(result.getString("password"))){
						bean = 1;
					}else{
						bean = -1;
					}
				}
			}
		}
		catch(Exception e){
			e.printStackTrace();
		}
		jdbc_move();//stop oracle
		return bean;
	}
	//link mao db ,insert number in book_user
	public static boolean oracle_user(String uname, String password,String truename, String email, 
			String mphone, String sex, String birthday){
		boolean bean = false;
		
		con = oracle_link.oraclesql();
		
		Date date = null;
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		try {
			date = format.parse(birthday);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String sql = "insert into book_user(uname,password,truename,mphone,sex,birthday,email) values(?,?,?,?,?,?,?)";
				/* "('"+id+"','"+password+"','"+truename+"','"+postcode+"',"
						+ "'"+mphone+"','"+sex+"','"+da.+"')";*/
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, uname);
			ps.setString(2, password);
			ps.setString(3, truename);
			ps.setString(4, mphone);
			ps.setString(5, sex);
			ps.setDate(6, new java.sql.Date(date.getTime()));
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
		
		jdbc_move();//stop oracle
		return bean;
	}
	//over jdbc link
	public static void jdbc_move(){
		try
        {
            
            if (result != null)
                result.close();
            if (pre != null)
                pre.close();
            if (stat != null)
            	stat.close();
            if (con != null)
                con.close();
            System.out.println("stop oracle!");
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
	}
}
