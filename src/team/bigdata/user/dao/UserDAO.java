package team.bigdata.user.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import team.bigdata.template.vo.TemplateVO;

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
	public boolean userLoginCheck(String id, String pw) throws SQLException {
		
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
			userLoginCheckResult = true; // ����� ������ true��
		}
		
		return userLoginCheckResult;
	}


}
