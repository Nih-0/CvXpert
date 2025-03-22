package dao;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class checklogin {

	String query="SELECT * FROM log WHERE uname=? AND pass=?;";
	String url="jdbc:mysql://localhost:3306/login"; 
	String username="root";
	String password="admin";

	
	public boolean check(String username1,String password1)
	{
		try {
		
		Class.forName("com.mysql.cj.jdbc.Driver");

		Connection con=DriverManager.getConnection(url,username,password);
		PreparedStatement stmt=con.prepareStatement(query);
		System.out.println("Checking for: " + username1+ " / " + password1);

		stmt.setString(1, username1);
		stmt.setString(2, password1);
		ResultSet rs=stmt.executeQuery();
		if(rs.next())
		
		{
			return true;
		}
		
		
		
		}catch (Exception e) {
			 e.printStackTrace();
		}
		
		return false;
	}
}
