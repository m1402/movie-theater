package team.bigdata.template.dao;

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

public class TemplateDAO {
	
	// 
	DataSource ds;
	
	// 
	public TemplateDAO() throws NamingException, SQLException {
		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		ds = (DataSource) envContext.lookup("jdbc/myoracle");
	}

	// template method (list) 
	public ArrayList<TemplateVO> list() throws SQLException {
		ArrayList<TemplateVO> array1 = new ArrayList<TemplateVO>();
		Connection conn = ds.getConnection();
		PreparedStatement ps1;
		ResultSet rs1;

		String sql = ""
				+ "SELECT *"
				+ " FROM dual";

		ps1 = conn.prepareStatement(sql);
		rs1 = ps1.executeQuery();
		while (rs1.next()) {
			TemplateVO svo1 = new TemplateVO();
			array1.add(svo1);
		}
		return array1;
	}


}
