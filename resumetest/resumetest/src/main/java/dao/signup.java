package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class signup {
	
	String query="INSERT INTO LOG (phone,uname,pass,email)value(?,?,?,?)";
	String url="jdbc:mysql://localhost:3306/login"; 
	String username="root";
	String password="admin";
	public boolean upload(String phone,String username2, String password2, String email )
	{
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			 
			Connection con=DriverManager.getConnection(url,username,password);
			PreparedStatement stmt=con.prepareStatement(query);
			System.out.println("uploading: " + phone + " / " + username2);

			stmt.setString(1, phone);
			stmt.setString(2, username2);
			stmt.setString(3, password2);
			stmt.setString(4, email);
			int rowinserted=stmt.executeUpdate();
			if(rowinserted>0)
			{
				return true;
			}
			
		}
		catch (Exception e) {
		    e.printStackTrace();
		}

		
		return false;
		
	}

}
