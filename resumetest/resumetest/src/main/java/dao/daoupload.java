package dao;

import java.io.InputStream;
import java.sql.*;

public class daoupload {
    private static final String URL = "jdbc:mysql://localhost:3306/login";
    private static final String USERNAME = "root";
    private static final String PASSWORD = "admin";

   
    public boolean uploadResume(String username, InputStream fileData) {
        String insertQuery = "INSERT INTO resumes (username, file_data) VALUES (?, ?) ON DUPLICATE KEY UPDATE file_data = VALUES(file_data)";
        try (Connection con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement stmt = con.prepareStatement(insertQuery)) {

            Class.forName("com.mysql.cj.jdbc.Driver"); 

            stmt.setString(1, username);
            stmt.setBlob(2, fileData);

            int rowsInserted = stmt.executeUpdate();
            return rowsInserted > 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

   
    public InputStream getResume(String username) {
        String selectQuery = "SELECT file_data FROM resumes WHERE username = ?";
        try (Connection con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
             PreparedStatement stmt = con.prepareStatement(selectQuery)) {

            stmt.setString(1, username);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return rs.getBinaryStream("file_data");  
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;  
    }
}
