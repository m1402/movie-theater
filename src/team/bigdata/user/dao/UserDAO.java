package team.bigdata.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.sql.DataSource;

import team.bigdata.template.vo.TemplateVO;
import team.bigdata.user.vo.UserVO;

public class UserDAO {
	
	// 
	DataSource ds;
	
	// 
	public UserDAO() throws NamingException, SQLException {
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		ds = (DataSource) envContext.lookup("jdbc/myoracle");
	}

	//  
	public boolean userLoginCheck(String id, String pw, HttpServletRequest request) throws SQLException {
		
		// return value
		boolean userLoginCheckResult = false;
		
		// Ŀ�ؼ�
		Connection conn = ds.getConnection();
		PreparedStatement ps1;
		ResultSet rs1;

		// query
		String sql = ""
				+ "SELECT *"
				+ " FROM usertable"
				+ " WHERE id = ?"
				+ " AND pw = ?";

		// 
		ps1 = conn.prepareStatement(sql);
		
		// set preparestatement
		ps1.setString(1, id);
		ps1.setString(2, pw);
		
		// db ��ȸ
		rs1 = ps1.executeQuery();
		while (rs1.next()) {
			
//			String id       = rs1.getString("id");
//			String pw       = rs1.getString("pw");
			String name     = rs1.getString("name");
			String auth		= rs1.getString("auth");
			
			UserVO loginUser = new UserVO(id, pw, name, auth);
			
			// session
			request.getSession().setAttribute("loginUser", loginUser);
						
			// 
			userLoginCheckResult = true; // ����� ������ true��
		}
		
		return userLoginCheckResult;
	}
	
	//  
	public int userJoinRequest(String id, String pw, String name, String auth) throws SQLException {
		
		// return value
		int userJoinResult = 0;
		
		// Ŀ�ؼ�
		Connection conn = ds.getConnection();
		PreparedStatement ps1;
		ResultSet rs1;
		
		// query
		String sql = ""
				+ "INSERT INTO usertable"
				+ " VALUES (?, ?, ?, ?)";
		
		// 
		ps1 = conn.prepareStatement(sql);
		
		// set preparestatement
		ps1.setString(1, id);
		ps1.setString(2, pw);
		ps1.setString(3, name);
		ps1.setString(4, auth);
		
		// db
		userJoinResult = ps1.executeUpdate();
		
		return userJoinResult;
	}


}
