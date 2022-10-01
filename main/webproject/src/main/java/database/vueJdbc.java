package database;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import vo.vueVo;

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
	
	public static void inserts(vueVo vo) {
		
		try {
			Class.forName("org.postgresql.Driver");
			Statement stmt = null;
			Connection conn = null;
			ResultSet rs = null;
			int test = 0;
			
			String user = "postgres";
			String password = "1234";
			conn = DriverManager.getConnection("jdbc:postgresql://localhost/", user, password);
			
			if(conn != null) {
				String sql = "insert into addJoin(title, author, age, context, name)"
						+ "values('"+ vo.getTitle() 
								+"','" + vo.getAuthor()
								+ "'," + vo.getAge()
								+ ",'" + vo.getContext()
								+ "','" + vo.getAuthor()
								+ "')";
				
				System.out.println("sucess");
				System.out.println(vo.getAuthor());

				try {
					//3. Query 준비
					stmt = conn.createStatement();
					System.out.println(sql);
					//4. Query 실행 및 리턴
					test = stmt.executeUpdate(sql);
					if(test > 0) {
						System.out.println("입력 성공");
					}else {
						System.out.println("입력 실패");
					}
					
				}catch (Exception e) {
					e.printStackTrace();
				}finally {
				//5. DB종료
					try {
						stmt.close();
						conn.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
				
			} else {
				System.out.println("failed");
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
	}
	
}

