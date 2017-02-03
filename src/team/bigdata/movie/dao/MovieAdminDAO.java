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

public class MovieAdminDAO {
	DataSource ds; ////////////////

	public MovieAdminDAO() throws NamingException, SQLException { // ?깮?꽦?옄

		Context initContext = new InitialContext();
		Context envContext = (Context) initContext.lookup("java:/comp/env");
		ds = (DataSource) envContext.lookup("jdbc/myoracle");
		// Connection conn = ds.getConnection();
		// etc.
	}
	
	public ArrayList<MovieVO> getAllInfo() throws SQLException {
		ArrayList<MovieVO> array1 = new ArrayList<MovieVO>();
		Connection conn = ds.getConnection(); /////////////////
		PreparedStatement ps1;
		ResultSet rs1;

		String sql = "SELECT num, title, dir, bookp, day"
				+ " from MovieInfo "
				+ " order by bookp desc ";

		ps1 = conn.prepareStatement(sql);
		rs1 = ps1.executeQuery();
		while (rs1.next()) {
			int num = rs1.getInt("num");
			String title = rs1.getString("title");
			String dir = rs1.getString("dir");
			int bookp = rs1.getInt("bookp");
			String day = rs1.getString("day");
			
//			MovieVO mvo1 = new MovieVO(num, title, dir, bookp, day);
			MovieVO mvo1 = new MovieVO(num, title, dir, bookp, null, day, null);
			array1.add(mvo1);
		}
		return array1;
	}
	
	public ArrayList<MovieVO> moviePlaying() throws SQLException {
		
		ArrayList<MovieVO> array1 = new ArrayList<MovieVO>();
		 Connection conn = ds.getConnection(); /////////////////
		 PreparedStatement ps1;
		 ResultSet rs1;
		 
		String sql = "SELECT num, title, dir, bookp, day "
				+ " from MovieInfo "
				+ " order by bookp desc "; 
				
		ps1 = conn.prepareStatement(sql);
		rs1 = ps1.executeQuery();
		while(rs1.next()){
			int num = rs1.getInt("num");
			String title = rs1.getString("title");
			String dir = rs1.getString("dir");
			int bookp = rs1.getInt("bookp");
			String day = rs1.getString("day");
			//int day = rs1.getInt("day");	//날짜변환
			
//			MovieVO svo1 = new MovieVO(num, title, dir, bookp, day);
			MovieVO svo1 = new MovieVO(num, title, dir, bookp, null, day, null);
			array1.add(svo1);
		}
		
		return array1;
	}
	
	public void insert_movie(String num, String title, String dir, String bookp, String day) throws SQLException {
		Connection conn = ds.getConnection(); /////////////////
		PreparedStatement ps1;
		// ResultSet rs1;

		String sql = "insert into MovieInfo values"
				+ " (MovieInfo_sequence1.NEXTVAL,?,?,?,?,?,MovieInfo_sequence1.CURRVAL,0,0 )";

		ps1 = conn.prepareStatement(sql);
		// rs1 = ps1.executeQuery();
		ps1.setString(1, num);
		ps1.setString(2, title);
		ps1.setString(3, dir);
		ps1.setString(4, bookp);
		ps1.setString(5, day);

		ps1.executeUpdate();

	}
	
	public void delete_movie(String title) throws SQLException {

		Connection conn = ds.getConnection(); /////////////////
		PreparedStatement ps1;
		// ResultSet rs1;

		String sql = "delete MovieInfo where title=?";

		try {
			ps1 = conn.prepareStatement(sql);
			ps1.setString(1, title);
			ps1.executeUpdate();
		} catch (SQLException e) {
			System.out.println("update Exception");

		}

	}
	
	public MovieVO search_mv(String title) throws SQLException {
		Connection conn = ds.getConnection(); /////////////////
		PreparedStatement ps1;
		ResultSet rs1;

		// SnsboardVO sv1=null;
		MovieVO mv1 = new MovieVO();
		String sql = "SELECT * FROM MovieInfo where title=?";
		ps1 = conn.prepareStatement(sql);
		ps1.setString(1, title);
		rs1 = ps1.executeQuery();
		if (rs1.next()) {
			int num = rs1.getInt("num");
			title = rs1.getString("title");
			String dir = rs1.getString("dir");
			int bookp = rs1.getInt("bookp");
			String day = rs1.getString("day");
			
			// sv1=new SnsboardVO(snsjemok,snswriter,snscontent);
			mv1.setNum(num);
			mv1.setTitle(title);
			mv1.setDir(dir);
			mv1.setBookp(bookp);
			mv1.setDay(day);
		} else {
			mv1 = null;
		}
		return mv1;
	}
	
	public void update_mv(String num, String title, String dir, String bookp, String day) throws SQLException {

		Connection conn = ds.getConnection(); /////////////////
		PreparedStatement ps1;
		// ResultSet rs1;

		String sql = "update MovieInfo "
				+ " set num=? , dir=? , bookp=? , day=? "
				+ " where title=? ";

		try {
			ps1 = conn.prepareStatement(sql);
			ps1.setString(1, num);
			ps1.setString(2, dir);
			ps1.setString(3, bookp);
			ps1.setString(4, day);
			ps1.executeUpdate();
		} catch (SQLException e) {
			System.out.println("update Exception");

		}

	}
	
}
