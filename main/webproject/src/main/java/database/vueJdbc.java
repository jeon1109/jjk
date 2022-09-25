package database;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class vueJdbc {

	public static void main(String[] args) {
		String jdbcUrl = "jdbc:postgresql://localhost";
		String user = "postgres";
		String password = "1234";
		Statement stmt = null;
		Connection conn = null;
		ResultSet rs = null;
		
		try {
			conn = DriverManager.getConnection(jdbcUrl);
			String sql = "";
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				System.out.println(rs);
			}
		}
		catch(SQLException e){
			System.out.println(e);
		}
		finally {
			try {
				if(stmt != null) {
					stmt.close();
				}
				if(conn != null) {
					conn.close();
				}
			} catch(Exception e) {
				e.printStackTrace();
			}
		}
	}
	
	public static void insert() {
		try {
			Class.forName("org.postgresql.Driver");
			Statement stmt = null;
			Connection conn = null;
			ResultSet rs = null;
			String user = "postgres";
			String password = "1234";
			conn = DriverManager.getConnection("jdbc:postgresql://localhost/", user, password);
			String sql = "";
			
			if(conn != null) {
				System.out.println("sucess");
			} else {
				System.out.println("failed");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}

