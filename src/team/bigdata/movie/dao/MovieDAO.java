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

	public MovieDAO() throws NamingException, SQLException { // ?깮?꽦?옄

		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		ds = (DataSource) envContext.lookup("jdbc/myoracle");
		// Connection conn = ds.getConnection();
		// etc.
	}

	public ArrayList<MovieVO> moviePlaying(int movieStartNum, int movieEndNum) throws SQLException {
		
		// 데이터
		ArrayList<MovieVO> array1 = new ArrayList<MovieVO>();
		
		// 커넥션
		Connection conn = ds.getConnection(); /////////////////
		PreparedStatement ps1;
		ResultSet rs1;

		// sql
		String sql = ""
				+ "SELECT *"
				+ " FROM MovieInfo"
				+ " WHERE num >= ?"
				+ "	AND num <= ?";

		//
		ps1 = conn.prepareStatement(sql);
		ps1.setInt(1, movieStartNum);
		ps1.setInt(2, movieEndNum);
		
		
		// 쿼리 실행
		rs1 = ps1.executeQuery();
		
		// 데이터 가공
		while (rs1.next()) {
			
			int 	num     = rs1.getInt("num");
			String 	title   = rs1.getString("title");
			String 	dir     = rs1.getString("dir");
			int 	bookp   = rs1.getInt("bookp");
			String 	imgurl	= rs1.getString("imgurl");
			String 	day     = rs1.getString("day");
			String 	fday	= rs1.getString("fday");
			
			MovieVO vo1 = new MovieVO(num, title, dir, bookp, imgurl, day, fday);
			array1.add(vo1);
		}

		return array1;
	}
	
//	public ArrayList<MovieVO> movieSearch() throws SQLException {
//		
//		ArrayList<MovieVO> mv1 = new ArrayList<MoiveVO>();
//		Connection conn = ds.getConnection();
//		PreparedStatement ps1;
//		ResultSet rs1;
//		
//		String sql = "SELECT "
//				
//		ps1 = conn.prepareStatement(sql);
//		rs1 = ps1.executeQuery();
//		while(rs1.next()){
//			String 
//			String
//			String
//			String
//			String
//			
//			MovieVO mv1 = new MovieVO(            );
//			array1.add(mv1);
//	}
//		return null;
//	}

}
