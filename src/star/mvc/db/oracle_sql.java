package star.mvc.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class oracle_sql {
	
	private static Connection con = null;
	private static Statement stat = null;
	private static PreparedStatement pre = null;
	private static ResultSet result = null;
	//....
	public static void select_user(String id, String password){
		
		return;
	}
	//link mao db ,insert number in book_user
	public static boolean oracle_user(String id, String password,String truename, String postcode, 
			String mphone, String sex, String birthday){
		con = oracle_link.oraclesql();
		String sql = "insert into book_user(id,password,truename,postcode,mphone,sex,birthday) values"
				+ "('"+id+"','"+password+"','"+truename+"','"+postcode+"',"
						+ "'"+mphone+"','"+sex+"','"+birthday+"')";
		try {
			stat = con.createStatement();
			stat.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		jdbc_move();//关闭oracle
		return true;
	}
	//over jdbc link
	public static void jdbc_move(){
		try
        {
            // 逐一将上面的几个对象关闭，因为不关闭的话会影响性能、并且占用资源
            // 注意关闭的顺序，最后使用的最先关闭
            if (result != null)
                result.close();
            if (pre != null)
                pre.close();
            if (stat != null)
            	stat.close();
            if (con != null)
                con.close();
            System.out.println("数据库连接已关闭！");
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
	}
}
