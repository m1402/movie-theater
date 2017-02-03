package team.bigdata.movie.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import team.bigdata.movie.vo.MovieVO;

public class MovieDAO {
	DataSource ds; ////////////////

	public MovieDAO() throws NamingException, SQLException { // ?Éù?Ñ±?ûê

		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		ds = (DataSource) envContext.lookup("jdbc/myoracle");
		// Connection conn = ds.getConnection();
		// etc.
	}

	public ArrayList<MovieVO> moviePlaying() throws SQLException {
		
		ArrayList<MovieVO> array1 = new ArrayList<MovieVO>();
		 Connection conn = ds.getConnection(); /////////////////
		 PreparedStatement ps1;
		 ResultSet rs1;
		 
		String sql = "SELECT bunho,snsjemok, snswriter, snscontent,basebun,daetbun,daetdaetbun" +
		             " from mvcsnsboard order by basebun desc , daetbun asc";
		
		ps1 = conn.prepareStatement(sql);
		rs1 = ps1.executeQuery();
		while(rs1.next()){
			int bunho = rs1.getInt("bunho");
			String snsjemok = rs1.getString("snsjemok");
			String snswriter = rs1.getString("snswriter");
			String snscontent = rs1.getString("snscontent");
			int basebun = rs1.getInt("basebun");
			int daetbun = rs1.getInt("daetbun");
			int daetdaetbun = rs1.getInt("daetdaetbun");
			
			MovieVO svo1 = new MovieVO(bunho,snsjemok,snswriter,snscontent,basebun,daetbun,daetdaetbun);
			array1.add(svo1);
		}
		
		return array1;
	}

}
