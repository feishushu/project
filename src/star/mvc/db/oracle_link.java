package star.mvc.db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class oracle_link {
	
	private static Connection con = null;
	
	private static Statement stat = null;
	private static PreparedStatement pre = null;
	private static ResultSet result = null;
	
	public static Connection oraclesql(){
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			System.out.println("开始连接数据库");
			String url = "jdbc:oracle:thin:@210.41.224.68:1521:MAO";
			String user = "scott";
			String password = "Qq289203021";
			
			con = DriverManager.getConnection(url, user, password);//获取连接
			System.out.println("连接成功");
		}
		catch(Exception e){
			e.printStackTrace();
			System.out.println("连接失败");
		}
		
		return con;
	}
}