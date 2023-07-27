package Domain.Common.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ConnectionPool {
	protected static String id="root";
	protected static String pw="1234";
	protected static String url="jdbc:mysql://192.168.2.254:3306/bookdb";
	
	public static Connection conn;
	protected PreparedStatement pstmt;
	protected ResultSet rs;
	
	public static void createConnection() {
		try {
			if(conn==null) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				conn=DriverManager.getConnection(url,id,pw);
				System.out.println("ConnectionPool Connection 생성");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	ConnectionPool(){
	}
}
